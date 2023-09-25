// =============================================================================
// Scilab ( https://www.scilab.org/ ) - This file is part of Scilab
// Copyright (C) 2010 - INRIA - Serge Steer
//
//  This file is distributed under the same license as the Scilab package.
// =============================================================================

// <-- TEST WITH GRAPHIC -->

// <-- Non-regression test for bug 8168 -->
//
// <-- GitLab URL -->
// https://gitlab.com/scilab/scilab/-/issues/8168
//
// <-- Short Description -->
// Adding a datatip in a figure that mix surface and curve may generate a zero divide error.
//
plot3d();plot2d()
e=gce();e=e.children(1);
if execstr('datatipCreate(e,55)','errcatch')<>0 then pause,end
