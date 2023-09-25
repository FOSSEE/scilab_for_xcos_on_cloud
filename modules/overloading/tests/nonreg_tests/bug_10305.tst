//<-- CLI SHELL MODE -->
// =============================================================================
// Scilab ( https://www.scilab.org/ ) - This file is part of Scilab
// Copyright (C) 2013 - Scilab Enterprises - Charlotte HECQUET
//
//  This file is distributed under the same license as the Scilab package.
// =============================================================================


// <-- Non-regression test for bug 10305 -->
//
// <-- GitLab URL -->
// https://gitlab.com/scilab/scilab/-/issues/10305
//
// <-- Short Description -->
// Compare lists with empty items is possible

l1 = list(1,,2);
l2=l1;
assert_checkequal(l1==l2, [%t %t %t]);
