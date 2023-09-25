//<-- CLI SHELL MODE -->
// =============================================================================
// Scilab ( https://www.scilab.org/ ) - This file is part of Scilab
// Copyright (C) 2013 - Scilab Enterprises - Charlotte HECQUET
//
//  This file is distributed under the same license as the Scilab package.
// =============================================================================

// <-- Non-regression test for bug 12364 -->
//
// <-- GitLab URL -->
// https://gitlab.com/scilab/scilab/-/issues/12364
//
// <-- Short Description -->
// hypermat.^scalar returned a warning

r=rand(2,3,2);
assert_checktrue(execstr("r.^2","errcatch")==0);
