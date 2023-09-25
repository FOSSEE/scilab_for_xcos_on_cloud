// =============================================================================
// Scilab ( https://www.scilab.org/ ) - This file is part of Scilab
// Copyright (C) 2012 - Scilab Enterprises - Clément DAVID
//
//  This file is distributed under the same license as the Scilab package.
// =============================================================================

// <-- XCOS TEST -->
//
// <-- Non-regression test for bug 11913 -->
//
// <-- GitLab URL -->
// https://gitlab.com/scilab/scilab/-/issues/11913
//
// <-- Short Description -->
// csslti4 crash Scilab when used without input or output

importXcosDiagram(SCI + "/modules/xcos/tests/nonreg_tests/bug_11913.zcos");
xcos_simulate(scs_m, 4);

