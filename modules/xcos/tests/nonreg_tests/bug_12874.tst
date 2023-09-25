// =============================================================================
// Scilab ( https://www.scilab.org/ ) - This file is part of Scilab
// Copyright (C) 2013 - Scilab Enterprises - Bruno JOFRET
//
//  This file is distributed under the same license as the Scilab package.
// =============================================================================

// <-- XCOS TEST -->

// <-- Non-regression test for bug 12874 -->
//
// <-- GitLab URL -->
// https://gitlab.com/scilab/scilab/-/issues/12874
//
// <-- Short Description -->
// Mark size are too small

ilib_verbose(0);

importXcosDiagram(SCI+"/modules/xcos/tests/nonreg_tests/bug_12874.zcos");
Info = scicos_simulate(scs_m,list());

e = gce();
e = e.children(1);

assert_checkequal(e.type, "Polyline");
assert_checktrue(e.mark_size >= 4);

