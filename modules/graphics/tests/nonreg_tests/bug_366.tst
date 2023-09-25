// =============================================================================
// Scilab ( https://www.scilab.org/ ) - This file is part of Scilab
// Copyright (C) 2008-2008 - INRIA - Jean-Baptiste Silvy
// Copyright (C) 2013 - Scilab Enterprises - Adeline CARNIS
//
//  This file is distributed under the same license as the Scilab package.
// =============================================================================

// <-- TEST WITH GRAPHIC -->

// <-- Non-regression test for bug 366 -->
//
// <-- GitLab URL -->
// https://gitlab.com/scilab/scilab/-/issues/366
//
// <-- Short Description -->
// The error message of plot2d is sort of understandable

// should complain about strf (normally a string of length 3).
assert_checkfalse(execstr("plot2d(0,0,0,''0'')"   ,"errcatch") == 0);
refMsg = msprintf(_("%s: Wrong size for input argument #%d: String of %d characters expected.\n"), "plot2d", 4, 3);
assert_checkerror("plot2d(0,0,0,''0'')", refMsg);


