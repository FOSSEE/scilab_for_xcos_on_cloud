// =============================================================================
// Scilab ( https://www.scilab.org/ ) - This file is part of Scilab
// Copyright (C) 2012 - DIGITEO - Allan CORNET
//
//  This file is distributed under the same license as the Scilab package.
// =============================================================================
//
// <-- CLI SHELL MODE -->
//
// <-- Non-regression test for bug 9295 -->
//
// <-- GitLab URL -->
// https://gitlab.com/scilab/scilab/-/issues/9295
//
// <-- Short Description -->
// 'base2dec' ignored the fractional part of 'base' input argument.
//

msgerr = msprintf(gettext("%s: Wrong value for input argument #%d: An integer value expected.\n"), "base2dec", 2);
assert_checkerror ("base2dec([''ABC'', ''0'', ''A''], 16.123456)" , msgerr );
