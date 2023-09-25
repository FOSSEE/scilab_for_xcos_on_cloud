// =============================================================================
// Scilab ( https://www.scilab.org/ ) - This file is part of Scilab
// Copyright (C) 2008-2008 - INRIA - Jean-Baptiste Silvy
//
//  This file is distributed under the same license as the Scilab package.
// =============================================================================
// <-- TEST WITH GRAPHIC -->
// <-- Non-regression test for bug 3111 -->
//
// <-- GitLab URL -->
// https://gitlab.com/scilab/scilab/-/issues/3111
//
// <-- Short Description -->
// Switch the "visible" figure property ("on" => "off"  or "off" => "on") has no effect on the display.

my_figure = scf();
plot3d();
my_figure.visible="off";

// check that the figure disappear.
// migh tbe done by exporting the figure into a bitmap file
// and check that the file is empty.

my_figure.visible="on";

// check that the figure come back

