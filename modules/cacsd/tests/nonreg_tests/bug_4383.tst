// =============================================================================
// Scilab ( https://www.scilab.org/ ) - This file is part of Scilab
// Copyright (C) 2013 - Scilab Enterprises - Charlotte HECQUET
//
//  This file is distributed under the same license as the Scilab package.
// =============================================================================

// <-- CLI SHELL MODE -->
//
// <-- ENGLISH IMPOSED -->
//
// <-- Non-regression test for bug 4383 -->
//
// <-- GitLab URL -->
// https://gitlab.com/scilab/scilab/-/issues/4383
//
// <-- Short Description -->
// csim with "step" and "impuls" does not work with direct feedthrough.

s = poly(0,'s');
t = 0:5;
u = ones(1,6);
G = syslin('c',1+s,2+s);
y = csim('step',t,G);
ya = csim(u,t,G);
assert_checkalmostequal(y,ya);
