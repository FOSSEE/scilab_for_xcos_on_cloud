// =============================================================================
// Scilab ( https://www.scilab.org/ ) - This file is part of Scilab
// Copyright (C) 2008-2008 - INRIA - Jean-Baptiste Silvy
//
//  This file is distributed under the same license as the Scilab package.
// =============================================================================

// <-- TEST WITH GRAPHIC -->

// <-- Non-regression test for bug 3475 -->
//
// <-- GitLab URL -->
// https://gitlab.com/scilab/scilab/-/issues/3475
//
// <-- Short Description -->
// After open and close a graphic window, scilab is crashing if a new window is opened.
// 

plot3d();
delete(gcf());
plot3d();
delete(gcf());


