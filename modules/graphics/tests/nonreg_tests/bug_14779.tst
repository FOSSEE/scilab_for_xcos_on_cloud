// =============================================================================
// Scilab ( https://www.scilab.org/ ) - This file is part of Scilab
// Copyright (C) 2016 - Scilab Enterprises - Adeline CARNIS
//
//  This file is distributed under the same license as the Scilab package.
// =============================================================================

// <-- TEST WITH GRAPHIC -->

// <-- Non-regression test for bug 14779 -->
//
// <-- GitLab URL -->
// https://gitlab.com/scilab/scilab/-/issues/14779
//
// <-- Short Description -->
// When used in logarithmic mode using coordinates <=0, xsegs crashed Scilab.

clf;
ax=gca();
ax.data_bounds=[0.01 0.01;100 100];
ax.log_flags="ll";
ax.axes_visible="on";
str = "xsegs([-1;0],[0;0],1)";

assert_checkfalse(execstr(str   ,"errcatch") == 0);
refMsg = msprintf(_("Error: Values must be strictly positive when logarithmic mode on %s axis is active.\n"), "x");
assert_checkerror(str, refMsg);

ax.log_flags="nl";
str = "xsegs([-1;0],[0;0],1)";
assert_checkfalse(execstr(str   ,"errcatch") == 0);
refMsg = msprintf(_("Error: Values must be strictly positive when logarithmic mode on %s axis is active.\n"), "y");
assert_checkerror(str, refMsg);
