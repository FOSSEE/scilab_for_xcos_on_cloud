/*
* Scilab ( https://www.scilab.org/ ) - This file is part of Scilab
* Copyright (C) 2010 - DIGITEO - Bernard HUGUENEY
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

#ifndef __CONCURRENCY_H__
#define __CONCURRENCY_H__

/**
* returns the current concurrency status
* @return 0: -> no concurrency, 1 -> threads, 2 -> processes, 3 -> both
*/
int parallelConcurrency(void);

/**
* performs error handling of calling functions forbidden
* ( could be turned to warning and ignoring the call
* instead of stopping with an error).
* @return 0
*/
int parallelForbidden(char const* fname);

#endif /* __CONCURRENCY_H__ */

