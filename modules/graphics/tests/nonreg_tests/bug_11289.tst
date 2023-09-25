// =============================================================================
// Scilab ( https://www.scilab.org/ ) - This file is part of Scilab
// Copyright (C) 2012 - Scilab Enterprises - Cedric DELAMARRE
//
//  This file is distributed under the same license as the Scilab package.
// =============================================================================

// <-- TEST WITH GRAPHIC -->

// <-- Non-regression test for bug 11289 -->
//
// <-- GitLab URL -->
// https://gitlab.com/scilab/scilab/-/issues/11289
//
// <-- Short Description -->
// swap_handle function modify the properties.

plot2d;
axes1 = gca();
b1 = axes1.background;

scf();
fec;
axes2 = gca();
b2 = axes2.background;

swap_handles( axes1, axes2 );

assert_checkequal(axes1.background, b1);
assert_checkequal(axes2.background, b2);
