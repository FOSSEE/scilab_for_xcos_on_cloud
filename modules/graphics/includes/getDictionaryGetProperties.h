/*
 * Scilab ( https://www.scilab.org/ ) - This file is part of Scilab
 * Copyright (C) 2007 - INRIA - Allan Cornet
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

/*--------------------------------------------------------------------------*/
#ifndef __GETDICTIONARYGETPROPERTIES_H__
#define __GETDICTIONARYGETPROPERTIES_H__

#include "dynlib_graphics.h"

/**
* get all "Get" Handle graphics properties name
* @param[out] size of string matrix
* @return a string matrix
*/
GRAPHICS_IMPEXP char **getDictionaryGetProperties(int *sizearray);

#endif /* __GETDICTIONARYGETPROPERTIES_H__ */
/*--------------------------------------------------------------------------*/
