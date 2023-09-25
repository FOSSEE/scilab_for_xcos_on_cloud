// =============================================================================
// Scilab ( https://www.scilab.org/ ) - This file is part of Scilab
// Copyright (C) 2012 - DIGITEO - Allan CORNET
//
//  This file is distributed under the same license as the Scilab package.
// =============================================================================

// <-- CLI SHELL MODE -->

// <-- Non-regression test for bug 10847 -->
//
// <-- GitLab URL -->
// https://gitlab.com/scilab/scilab/-/issues/10847
//
// <-- Short Description -->
// dec2base returned a wrong error message with a complex number as input argument

msgerr = msprintf(gettext("%s: Wrong type for input argument #%d: A matrix of integer value expected.\n"), "dec2base", 1);
assert_checkerror("dec2base(%i, 2)", msgerr);

