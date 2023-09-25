
/*
 * Scilab ( https://www.scilab.org/ ) - This file is part of Scilab
 * Copyright (C) INRIA - Sylvestre LEDRU
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
#ifndef __GENPROD_H__
#define __GENPROD_H__
#include "dynlib_integer.h"
#include "machine.h"
#include "def.h"

INTEGER_IMPEXP int C2F(genprod)(int *typ, int *n, void *dx, int *incx);
INTEGER_IMPEXP double C2F(genprodasdouble)(int *typ, int *n, void *dx, int *incx);
#endif /* __GENPROD_H__ */
