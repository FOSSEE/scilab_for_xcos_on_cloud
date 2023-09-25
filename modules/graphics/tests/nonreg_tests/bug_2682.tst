// =============================================================================
// Scilab ( https://www.scilab.org/ ) - This file is part of Scilab
// Copyright (C) 2009-2009 - Digiteo - Jean-Baptiste Silvy
//
//  This file is distributed under the same license as the Scilab package.
// =============================================================================

// <-- TEST WITH GRAPHIC -->
//
// <-- ENGLISH IMPOSED -->
//
// <-- Non-regression test for bug 2682-->
//
// <-- GitLab URL -->
// https://gitlab.com/scilab/scilab/-/issues/2682
//
// <-- Short Description -->
// chart() is inconsistent in the second argument, angle. It might be treated as degrees or radian.
// Obsolete chart() replaced by nicholschart() to check the bug is still fixed.

s=poly(0,"s");
h=syslin("c",(s^2+2*0.9*10*s+100)/(s^2+2*0.3*10.1*s+102.01));


f0 = scf(0);
black(h,0.01,100,"(s^2+2*0.9*10*s+100)/(s^2+2*0.3*10.1*s+102.01)");
nicholschart([-8 -6 -4],[80 120]);
c0 = gce();

f1 = scf(1);
black(h,0.01,100,"(s^2+2*0.9*10*s+100)/(s^2+2*0.3*10.1*s+102.01)");
nicholschart([-8 -6 -4],[80 120],color("light gray"));
c1 = gce();

// The two above figure should be identical except colors
// the current entities are compounds containing two polylines
if (c0.children(1).data <> c1.children(1).data) then pause; end
if (c0.children(2).data <> c1.children(2).data) then pause; end
