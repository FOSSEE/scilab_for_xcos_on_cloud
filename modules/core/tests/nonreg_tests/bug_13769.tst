// =============================================================================
// Scilab ( https://www.scilab.org/ ) - This file is part of Scilab
// Copyright (C) 2016 - Samuel GOUGEON
//
//  This file is distributed under the same license as the Scilab package.
// =============================================================================
// <-- CLI SHELL MODE -->
// <-- Non-regression test for bug 13769 -->
//
// <-- GitLab URL -->
// https://gitlab.com/scilab/scilab/-/issues/13769
//
// <-- Short Description -->
// t = "abc..//ghi" in console went to next line and expected the string being closed


p = SCI + "/modules/core/tests/nonreg_tests/";
ierr = exec(p+"bug_13769.sce", "errcatch")
assert_checkequal(ierr,999)
