//<-- CLI SHELL MODE -->
// =============================================================================
// Scilab ( https://www.scilab.org/ ) - This file is part of Scilab
// Copyright (C) 2012 - Scilab Enterprises - Cedric Delamarre
//
//  This file is distributed under the same license as the Scilab package.
// =============================================================================
//
// <-- Non-regression test for bug 6538 -->
//
// <-- GitLab URL -->
// https://gitlab.com/scilab/scilab/-/issues/6538
//
// <-- Short Description -->
// unobs() ignores its 'tol' argument when it is present, always calculating its ow

a = ones(3, 3);
b = ones(3, 3) * 2;

c = unobs(a, b);
assert_checkequal(c, 2);

c = unobs(a, b, 0.8);
assert_checkequal(c, 3);
