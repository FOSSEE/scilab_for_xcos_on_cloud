/*
 * Scilab ( http://www.scilab.org/ ) - This file is part of Scilab
 * Copyright (C) 2004-2006 - INRIA - Fabrice Leray
 * Copyright (C) 2006 - INRIA - Allan Cornet
 * Copyright (C) 2006 - INRIA - Jean-Baptiste Silvy
 * Copyright (C) 2010 - DIGITEO - Manuel Juliachs
 * Copyright (C) 2011 - DIGITEO - Vincent Couvert
 *
 * This file must be used under the terms of the CeCILL.
 * This source file is licensed as described in the file COPYING, which
 * you should have received as part of this distribution.  The terms
 * are also available at
 * http://www.cecill.info/licences/Licence_CeCILL_V2.1-en.txt
 *
 */

/*------------------------------------------------------------------------*/
/* file: get_color_flag_property.c                                        */
/* desc : function to retrieve in Scilab the color_flag field of          */
/*        a handle                                                        */
/*------------------------------------------------------------------------*/

#include "getHandleProperty.h"
#include "GetProperty.h"
#include "returnProperty.h"
#include "Scierror.h"
#include "localization.h"

#include "getGraphicObjectProperty.h"
#include "graphicObjectProperties.h"

/*------------------------------------------------------------------------*/
int get_color_flag_property(void* _pvCtx, int iObjUID)
{
    int iColorFlag = 0;
    int* piColorFlag = &iColorFlag;

    getGraphicObjectProperty(iObjUID, __GO_COLOR_FLAG__, jni_int, (void **)&piColorFlag);

    if (piColorFlag == NULL)
    {
        Scierror(999, _("'%s' property does not exist for this handle.\n"), "color_flag");
        return -1;
    }

    return sciReturnDouble(_pvCtx, iColorFlag);
}
/*------------------------------------------------------------------------*/
