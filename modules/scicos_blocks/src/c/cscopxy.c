/*
 *  Scilab ( https://www.scilab.org/ ) - This file is part of Scilab
 *  Copyright (C) 2011 - Scilab Enterprises - Clement DAVID
 *
 * Copyright (C) 2012 - 2016 - Scilab Enterprises
 *
 * This file is hereby licensed under the terms of the GNU GPL v2.0,
 * pursuant to article 5.3.4 of the CeCILL v.2.1.
 * This file was originally licensed under the terms of the CeCILL v2.1,
 * and continues to be available under such terms.
 * For more information, see the COPYING file which you should have received
 * along with this program.
 *
 */

#include <string.h>

#include "dynlib_scicos_blocks.h"
#include "scoUtils.h"

#include "sci_malloc.h"
#include "elementary_functions.h"

#include "getGraphicObjectProperty.h"
#include "setGraphicObjectProperty.h"
#include "graphicObjectProperties.h"
#include "createGraphicObject.h"

#include "CurrentFigure.h"

#include "scicos_block4.h"
#include "scicos.h"

#include "localization.h"
#include "os_string.h"

#include "FigureList.h"
#include "BuildObjects.h"
#include "AxesModel.h"

/*****************************************************************************
 * Internal container structure
 ****************************************************************************/

/**
 * Container structure
 */
typedef struct
{
    struct
    {
        int numberOfPoints;
        int maxNumberOfPoints;
        double **coordinates;
    } internal;

    struct
    {
        int cachedFigureUID;
        int cachedAxeUID;
        int *cachedPolylinesUIDs;
    } scope;
} sco_data;

/**
 * Get (and allocate on demand) the internal data used on this scope
 * \param block the block
 * \return the scope data
 */
static sco_data *getScoData(scicos_block * block);

/**
 * Release any internal data
 *
 * \param block the block
 */
static void freeScoData(scicos_block * block);

/**
 * Append the data to the current data
 *
 * \param block the block
 * \param x x data
 * \param y y data
 */
static void appendData(scicos_block * block, double *x, double *y);

/**
 * Push the block data to the polyline
 *
 * \param block the block
 * \param row the selected row
 *
 */
static BOOL pushData(scicos_block * block, int row);

/*****************************************************************************
 * Graphics utils
 ****************************************************************************/

/**
 * Get (and allocate on demand) the figure associated with the block
 * \param block the block
 * \return a valid figure UID or NULL on error
 */
static int getFigure(scicos_block * block);

/**
 * Get (and allocate on demand) the axe associated with the input
 *
 * \param iFigureUID the parent figure UID
 * \param block the block
 * \param input the current input index (0-indexed)
 * \return a valid axe UID or NULL on error
 */
static int getAxe(int iFigureUID, scicos_block * block);

/**
 * Get (and allocate on demand) the polyline associated with the row
 *
 * \param iAxeUID the parent axe UID
 * \param block the block
 * \param row the current row index (0-indexed)
 * \return a valid polyline UID or NULL on error
 */
static int getPolyline(int iAxeUID, scicos_block * block, int row);

/**
 * Set the polylines bounds
 *
 * \param block the block
 * \param iAxeUID the axe id
 */
static BOOL setPolylinesBounds(scicos_block * block, int iAxeUID);

/*****************************************************************************
 * Simulation function
 ****************************************************************************/

/** \fn void cmscope(scicos_block * block,int flag)
    \brief the computational function
    \param block A pointer to a scicos_block
    \param flag An int which indicates the state of the block (init, update, ending)
*/
SCICOS_BLOCKS_IMPEXP void cscopxy(scicos_block * block, scicos_flag flag)
{
    int iFigureUID;
    int j;
    sco_data *sco;
    BOOL result;

    FILE *filePointer = getLogFilePointer();
    // Give block id to distinguish blocks
    int block_id = 4;

    switch (flag)
    {

        case Initialization:
            sco = getScoData(block);
            if (sco == NULL)
            {
                set_block_error(-5);
            }
            iFigureUID = getFigure(block);
            if (iFigureUID == 0)
            {
                // allocation error
                set_block_error(-5);
            }
            fprintf(filePointer, "Initialization %s\n", block->uid);
            break;

        case StateUpdate:
            iFigureUID = getFigure(block);
            if (iFigureUID == 0)
            {
                // allocation error
                set_block_error(-5);
                break;
            }

            double *x = GetRealInPortPtrs(block, 1);
            double *y = GetRealInPortPtrs(block, 2);
            appendData(block, x, y);
            for (j = 0; j < block->insz[0]; j++)
            {
                // Store scilab's plotted data in the log file
                int iFigureUID = getFigure(block);
                int iAxeUID = getAxe(iFigureUID, block);
                int iPolylineUID = getPolyline(iAxeUID, block, j);
                fprintf(filePointer, "%d || %s || %d | %d || %f %f %d %f %f %f %f %s\n",
                        block_id, block->uid, iAxeUID, iPolylineUID,
                        x[j], y[j], 1, block->rpar[0], block->rpar[1], block->rpar[2], block->rpar[3],
                        "CSCOPXY");
                /*
                 * block_id - block_id of this block, block->uid - uid of the block ,
                 * iAxeUID - axes id of graph, iPolylineUID - id for each separate output line of graph,
                 * x[j]- value of x-axis for j, y[j] - value of y-axis for j,
                 * 1 - representing 1 output graph,
                 * block->rpar[0] - xMin value, block->rpar[1] - xMax value,
                 * block->rpar[2] - yMin value, block->rpar[3] - yMax value
                 */

                result = pushData(block, j);
                if (result == FALSE)
                {
                    Coserror("%s: unable to push some data.", "cscopxy");
                    break;
                }
            }
            break;

        case Ending:
            fprintf(filePointer, "Ending %s\n", block->uid);
            freeScoData(block);
            break;

        default:
            break;
    }
    fflush(filePointer);
}

/*-------------------------------------------------------------------------*/

/*****************************************************************************
 *
 * Container management
 *
 ****************************************************************************/

static sco_data *getScoData(scicos_block * block)
{
    sco_data *sco = (sco_data *) * (block->work);
    int i, j;

    if (sco == NULL)
    {
        /*
         * Data allocation
         */

        sco = (sco_data *) MALLOC(sizeof(sco_data));
        if (sco == NULL)
        {
            goto error_handler_sco;
        }

        sco->internal.numberOfPoints = 0;
        sco->internal.maxNumberOfPoints = block->ipar[2];

        sco->internal.coordinates = (double **)CALLOC(block->insz[0], sizeof(double *));
        if (sco->internal.coordinates == NULL)
        {
            goto error_handler_coordinates;
        }

        for (i = 0; i < block->insz[0]; i++)
        {
            sco->internal.coordinates[i] = (double *)CALLOC(3 * block->ipar[2], sizeof(double));
            if (sco->internal.coordinates[i] == NULL)
            {
                goto error_handler_coordinates_i;
            }
        }

        sco->scope.cachedFigureUID = 0;
        sco->scope.cachedAxeUID = 0;

        sco->scope.cachedPolylinesUIDs = (int*)CALLOC(block->insz[0], sizeof(int));

        *(block->work) = sco;
    }

    return sco;

    /*
     * Error management (out of normal flow)
     */

error_handler_coordinates_i:
    for (j = 0; j < i; j++)
    {
        FREE(sco->internal.coordinates[i]);
    }
    FREE(sco->internal.coordinates);
error_handler_coordinates:
    FREE(sco);
error_handler_sco:
    // allocation error
    set_block_error(-5);
    return NULL;
}

static void freeScoData(scicos_block * block)
{
    sco_data *sco = (sco_data *) * (block->work);
    int i;

    if (sco != NULL)
    {
        for (i = 0; i < block->insz[0]; i++)
        {
            FREE(sco->internal.coordinates[i]);
        }

        FREE(sco->internal.coordinates);
        FREE(sco->scope.cachedPolylinesUIDs);
        FREE(sco);
        *(block->work) = NULL;
    }
}

static sco_data *reallocScoData(scicos_block * block, int numberOfPoints)
{
    sco_data *sco = (sco_data *) * (block->work);
    int i;

    double *ptr;
    int setLen;
    int previousNumberOfPoints = sco->internal.maxNumberOfPoints;
    int newPoints = numberOfPoints - previousNumberOfPoints;

    for (i = 0; i < block->insz[0]; i++)
    {
        ptr = (double *)REALLOC(sco->internal.coordinates[i], 3 * numberOfPoints * sizeof(double));
        if (ptr == NULL)
        {
            goto error_handler;
        }

        // clear the last points, the Z-axis values
        memset(ptr + 2 * numberOfPoints, 0, numberOfPoints * sizeof(double));

        // memcpy existing Y-axis values (use memmove to handle memory overlapping)
        memmove(ptr + numberOfPoints, ptr + previousNumberOfPoints, previousNumberOfPoints * sizeof(double));

        // then set the last points to the last values for Y-axis and X-axis values
        for (setLen = newPoints - 1; setLen >= 0; setLen--)
        {
            ptr[numberOfPoints + previousNumberOfPoints + setLen] = ptr[numberOfPoints + previousNumberOfPoints - 1];
        }
        for (setLen = newPoints - 1; setLen >= 0; setLen--)
        {
            ptr[previousNumberOfPoints + setLen] = ptr[previousNumberOfPoints - 1];
        }

        sco->internal.coordinates[i] = ptr;
    }

    sco->internal.maxNumberOfPoints = numberOfPoints;
    return sco;

error_handler:
    freeScoData(block);
    // allocation error
    set_block_error(-5);
    return NULL;
}

static void appendData(scicos_block * block, double *x, double *y)
{
    int i;
    int setLen;
    int maxNumberOfPoints, numberOfPoints;

    sco_data *sco = (sco_data *) * (block->work);
    if (sco == NULL)
    {
        return;
    }
    maxNumberOfPoints = sco->internal.maxNumberOfPoints;
    numberOfPoints = sco->internal.numberOfPoints;

    /*
     * Handle the case where the scope has more points than maxNumberOfPoints
     */
    if (numberOfPoints >= maxNumberOfPoints)
    {
        // on a full scope, re-alloc
        maxNumberOfPoints = maxNumberOfPoints + block->ipar[2];
        sco = reallocScoData(block, maxNumberOfPoints);
    }

    /*
     * Update data
     */
    for (i = 0; i < block->insz[0]; i++)
    {
        for (setLen = maxNumberOfPoints - numberOfPoints - 1; setLen >= 0; setLen--)
        {
            sco->internal.coordinates[i][numberOfPoints + setLen] = x[i];
        }

        for (setLen = maxNumberOfPoints - numberOfPoints - 1; setLen >= 0; setLen--)
        {
            sco->internal.coordinates[i][maxNumberOfPoints + numberOfPoints + setLen] = y[i];
        }
    }

    sco->internal.numberOfPoints++;
}

static BOOL pushData(scicos_block * block, int row)
{
    int iFigureUID;
    int iAxeUID;
    int iPolylineUID;

    double *coordinates;
    sco_data *sco;

    iFigureUID = getFigure(block);
    iAxeUID = getAxe(iFigureUID, block);
    iPolylineUID = getPolyline(iAxeUID, block, row);

    sco = getScoData(block);
    if (sco == NULL)
    {
        return FALSE;
    }

    // select the right row
    coordinates = sco->internal.coordinates[row];

    return setGraphicObjectProperty(iPolylineUID, __GO_DATA_MODEL_COORDINATES__, coordinates, jni_double_vector, sco->internal.maxNumberOfPoints);
}

/*****************************************************************************
 *
 * Graphic utils
 *
 ****************************************************************************/

/**
 * Set properties on the figure.
 *
 * \param iFigureUID the figure uid
 * \param block the current block
 */
static void setFigureSettings(int iFigureUID, scicos_block * block)
{
    int win_pos[2];
    int win_dim[2];

    int *ipar = block->ipar;

    win_pos[0] = ipar[6];
    win_pos[1] = ipar[7];
    win_dim[0] = ipar[8];
    win_dim[1] = ipar[9];

    if (win_pos[0] > 0 && win_pos[1] > 0)
    {
        setGraphicObjectProperty(iFigureUID, __GO_POSITION__, &win_pos, jni_int_vector, 2);
    }

    if (win_dim[0] > 0 && win_dim[1] > 0)
    {
        setGraphicObjectProperty(iFigureUID, __GO_SIZE__, &win_dim, jni_int_vector, 2);
    }
};

/*****************************************************************************
 *
 * Graphic
 *
 ****************************************************************************/

static int getFigure(scicos_block * block)
{
    signed int figNum;
    int iFigureUID = 0;
    int iAxe = 0;
    int i__1 = 1;
    sco_data *sco = (sco_data *) * (block->work);

    // assert the sco is not NULL
    if (sco == NULL)
    {
        return 0;
    }

    // fast path for an existing object
    if (sco->scope.cachedFigureUID)
    {
        return sco->scope.cachedFigureUID;
    }

    figNum = block->ipar[0];

    // with a negative id, use the block number indexed from a constant.
    if (figNum < 0)
    {
        figNum = 20000 + get_block_number();
    }

    iFigureUID = getFigureFromIndex(figNum);
    // create on demand
    if (iFigureUID == 0)
    {
        iFigureUID = createNewFigureWithAxes();
        setGraphicObjectProperty(iFigureUID, __GO_ID__, &figNum, jni_int, 1);

        // the stored uid is a reference to the figure map, not to the current figure
        iFigureUID = getFigureFromIndex(figNum);
        sco->scope.cachedFigureUID = iFigureUID;

        // set configured parameters
        setFigureSettings(iFigureUID, block);

        // allocate the axes through the getter
        iAxe = getAxe(iFigureUID, block);

        /*
         * Setup according to block settings
         */
        setLabel(iAxe, __GO_X_AXIS_LABEL__, "x");
        setLabel(iAxe, __GO_Y_AXIS_LABEL__, "y");

        setGraphicObjectProperty(iAxe, __GO_X_AXIS_VISIBLE__, &i__1, jni_bool, 1);
        setGraphicObjectProperty(iAxe, __GO_Y_AXIS_VISIBLE__, &i__1, jni_bool, 1);

        setPolylinesBounds(block, iAxe);
    }

    if (sco->scope.cachedFigureUID == 0)
    {
        sco->scope.cachedFigureUID = iFigureUID;
    }
    return iFigureUID;
}

static int getAxe(int iFigureUID, scicos_block * block)
{
    int iAxe;
    int i;
    sco_data *sco = (sco_data *) * (block->work);

    // assert the sco is not NULL
    if (sco == NULL)
    {
        return 0;
    }

    // fast path for an existing object
    if (sco->scope.cachedAxeUID)
    {
        return sco->scope.cachedAxeUID;
    }

    iAxe = findChildWithKindAt(iFigureUID, __GO_AXES__, 0);

    /*
     * Allocate if necessary
     */
    if (iAxe == 0)
    {
        cloneAxesModel(iFigureUID);
        iAxe = findChildWithKindAt(iFigureUID, __GO_AXES__, 0);
    }

    /*
     * Setup on first access
     */
    if (iAxe != 0)
    {
        // allocate the polylines through the getter
        for (i = 0; i < block->insz[0]; i++)
        {
            getPolyline(iAxe, block, i);
        }
    }
    else
    {
        return 0;
    }

    /*
     * then cache with local storage
     */
    sco->scope.cachedAxeUID = iAxe;
    return sco->scope.cachedAxeUID;
}

static int getPolyline(int iAxeUID, scicos_block * block, int row)
{
    int iPolyline;
    BOOL b__true = TRUE;

    int color;
    int markSize;
    double lineThickness;

    sco_data *sco = (sco_data *) * (block->work);

    // assert the sco is not NULL
    if (sco == NULL || sco->scope.cachedPolylinesUIDs == NULL)
    {
        return 0;
    }

    // fast path for an existing object
    if (sco->scope.cachedPolylinesUIDs[row])
    {
        return sco->scope.cachedPolylinesUIDs[row];
    }

    iPolyline = findChildWithKindAt(iAxeUID, __GO_POLYLINE__, row);

    /*
     * Allocate if necessary
     */
    if (iPolyline == 0)
    {
        iPolyline = createGraphicObject(__GO_POLYLINE__);

        if (iPolyline != 0)
        {
            createDataObject(iPolyline, __GO_POLYLINE__);
            setGraphicObjectRelationship(iAxeUID, iPolyline);
        }
        else
        {
            return 0;
        }
    }

    /*
     * Setup on first access
     */

    /*
     * Default setup of the nGons property
     */
    {
        int nGons = 1;
        setGraphicObjectProperty(iPolyline, __GO_DATA_MODEL_NUM_GONS__, &nGons, jni_int, 1);
    }

    color = block->ipar[3];
    markSize = block->ipar[4];
    lineThickness = (double)markSize;
    if (color > 0)
    {
        setGraphicObjectProperty(iPolyline, __GO_LINE_MODE__, &b__true, jni_bool, 1);

        setGraphicObjectProperty(iPolyline, __GO_LINE_COLOR__, &color, jni_int, 1);
        setGraphicObjectProperty(iPolyline, __GO_LINE_THICKNESS__, &lineThickness, jni_double, 1);
    }
    else
    {
        color = -color;
        setGraphicObjectProperty(iPolyline, __GO_MARK_MODE__, &b__true, jni_bool, 1);

        setGraphicObjectProperty(iPolyline, __GO_MARK_STYLE__, &color, jni_int, 1);
        setGraphicObjectProperty(iPolyline, __GO_MARK_SIZE__, &markSize, jni_int, 1);
    }

    {
        int iClipState = 1; //on
        setGraphicObjectProperty(iPolyline, __GO_CLIP_STATE__, &iClipState, jni_int, 1);
    }

    /*
     * then cache with local storage
     */
    sco->scope.cachedPolylinesUIDs[row] = iPolyline;
    return sco->scope.cachedPolylinesUIDs[row];
}

static BOOL setPolylinesBounds(scicos_block * block, int iAxeUID)
{
    double dataBounds[6];

    dataBounds[0] = block->rpar[0]; // xMin
    dataBounds[1] = block->rpar[1]; // xMax
    dataBounds[2] = block->rpar[2]; // yMin
    dataBounds[3] = block->rpar[3]; // yMax
    dataBounds[4] = -1.0;       // zMin
    dataBounds[5] = 1.0;        // zMax

    return setGraphicObjectProperty(iAxeUID, __GO_DATA_BOUNDS__, dataBounds, jni_double_vector, 6);
}
