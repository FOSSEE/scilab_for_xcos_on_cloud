// =============================================================================
// Scilab ( https://www.scilab.org/ ) - This file is part of Scilab
// Copyright (C) 2013 - Scilab Enterprises - Charlotte HECQUET
//
//  This file is distributed under the same license as the Scilab package.
// =============================================================================

// <-- CLI SHELL MODE -->

// <-- Non-regression test for bug 12715 -->
//
// <-- GitLab URL -->
// https://gitlab.com/scilab/scilab/-/issues/12715
//
// <-- Short Description -->
// cross function is redefined when using systems.

a=[0 0 0 0 0 0 6 6];
assert_checkequal(real(pspect(2,4,'re',a,a)), [0 6 0 6]);
assert_checkequal(imag(pspect(2,4,'re',a,a)), [0 0 0 0]);
assert_checktrue(real(cspect(2,4,'re',a,a)) - [12.9375 0 -0.5626 0] < 1d-3);
assert_checktrue(imag(cspect(2,4,'re',a,a)) - [0 -6.75 0 6.75] < 1d-6);
