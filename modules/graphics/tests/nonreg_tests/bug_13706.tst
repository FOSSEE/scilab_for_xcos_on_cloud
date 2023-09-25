// =============================================================================
// Scilab ( https://www.scilab.org/ ) - This file is part of Scilab
// Copyright (C) 2015 - Scilab Enterprises - Calixte DENIZET
//
//  This file is distributed under the same license as the Scilab package.
// =============================================================================

// <-- TEST WITH GRAPHIC -->

// <-- Non-regression test for bug 13706 -->
//
// <-- GitLab URL -->
// https://gitlab.com/scilab/scilab/-/issues/13706
//
// <-- Short Description -->
// Random crashes with plot3d([1 1 1]).

assert_checkerror("plot3d([1 1])", _("%s: Wrong size for input argument #%d.\n"), [], "plot3d", 1);
assert_checkerror("plot3d([1 1 1])", _("%s: Wrong size for input argument #%d.\n"), [], "plot3d", 1);