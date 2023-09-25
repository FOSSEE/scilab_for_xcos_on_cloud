// =============================================================================
// Scilab ( https://www.scilab.org/ ) - This file is part of Scilab
// Copyright (C) 2009-2009 - Digiteo - Jean-Baptiste Silvy
//
//  This file is distributed under the same license as the Scilab package.
// =============================================================================

// <-- TEST WITH GRAPHIC -->

// <-- Non-regression test for bug 2540 -->
//
// <-- GitLab URL -->
// https://gitlab.com/scilab/scilab/-/issues/2540
//
// <-- Short Description -->
// plot3d hangs scilab when plotting a matrix full with NaN
// 

dummy = ones(10,10);
dummy2 = dummy*%nan;
plot3d(1:10,1:10,dummy2);
clf();
plot3d(1:10,1:10,dummy2); 

// this also crashed scilab
e = gce();
e.data.z(1,1) = 1;
e.mark_mode = "on";
