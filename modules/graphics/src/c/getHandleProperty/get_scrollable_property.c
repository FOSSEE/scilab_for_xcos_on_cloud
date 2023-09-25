/*
 * Scilab ( https://www.scilab.org/ ) - This file is part of Scilab
 * Copyright (C) 2014 - Scilab Enterprises - Antoine ELIAS
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

#include "getHandleProperty.h"
#include "returnProperty.h"
#include "Scierror.h"
#include "localization.h"

#include "getGraphicObjectProperty.h"
#include "graphicObjectProperties.h"

/*------------------------------------------------------------------------*/
void* get_scrollable_property(void* _pvCtx, int iObjUID)
{
    int iScrollable = 0;
    int* piScrollable = &iScrollable;
    getGraphicObjectProperty(iObjUID, __GO_UI_SCROLLABLE__, jni_bool, (void **)&piScrollable);
    if (piScrollable == NULL)
    {
        Scierror(999, _("'%s' property does not exist for this handle.\n"), "scrollable");
        return NULL;
    }

    if (iScrollable)
    {
        return sciReturnString("on");
    }
    else
    {
        return sciReturnString("off");
    }
}
