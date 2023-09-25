// =============================================================================
// Scilab ( https://www.scilab.org/ ) - This file is part of Scilab
// Copyright (C) 2016 - Scilab Enterprises - Adeline CARNIS
//
//  This file is distributed under the same license as the Scilab package.
// =============================================================================
//
// <-- CLI SHELL MODE -->
//
// <-- Non-regression test for bug 8841 -->
//
// <-- GitLab URL -->
// https://gitlab.com/scilab/scilab/-/issues/8841
//
// <-- Short Description -->
// Error in struct extraction. Now, s.a is equal to s(1).a

s.a = list(10,20);
assert_checkequal(s.a, s(1).a);
