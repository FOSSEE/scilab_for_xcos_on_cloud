// =============================================================================
// Scilab ( https://www.scilab.org/ ) - This file is part of Scilab
// Copyright (C) 2010 - DIGITEO - Pierre LANDO
//
//// This file is distributed under the same license as the Scilab package.
// =============================================================================

// <-- TEST WITH GRAPHIC -->
//
// <-- Non-regression test for bug 7286 -->
//
// <-- GitLab URL -->
// https://gitlab.com/scilab/scilab/-/issues/7286
//
// <-- Short Description -->
// For some platform eps export of NaN values was buggy.


x = [1 2    3];
y = [1 2    3];
y2= [1 %nan 3];
scf(2);
plot(x,y2,"r.");// %nan & mark_mode "on"
cd TMPDIR
xs2svg(2,"kaboom.eps");
