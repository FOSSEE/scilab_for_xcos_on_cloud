// =============================================================================
// Scilab ( https://www.scilab.org/ ) - This file is part of Scilab
// Copyright (C) 2012 - Scilab Enterprises - Sylvestre Ledru
//
//  This file is distributed under the same license as the Scilab package.
// =============================================================================
//
// <-- CLI SHELL MODE -->
//
// <-- Non-regression test for bug 10966 -->
//
// <-- GitLab URL -->
// https://gitlab.com/scilab/scilab/-/issues/10966
//
// <-- Short Description -->
// Numerical error in linspace
//

d1 = 0;
d2 = %pi;
n = 100;
y = (d2-d1) * ((0:n-1) / (n-1)) + d1 * ones(0:n-1);
assert_checkequal(0, y($)-d2);

d1 = 0;
d2 = %pi;
n = 100;
y = linspace(d1,d2,n);
assert_checkequal(0, y($)-d2);