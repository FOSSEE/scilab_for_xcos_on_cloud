// =============================================================================
// Scilab ( https://www.scilab.org/ ) - This file is part of Scilab
// Copyright (C) 2012 - Scilab Enterprises - Vincent COUVERT
//
//  This file is distributed under the same license as the Scilab package.
// =============================================================================

// <-- TEST WITH GRAPHIC -->

// <-- Non-regression test for bug 9464 -->
//
// <-- GitLab URL -->
// https://gitlab.com/scilab/scilab/-/issues/9464
//
// <-- Short Description -->
// contourf did not work when the "Matlab Compatibility functions module" was not installed.

// Clear the Matlab Compatibility functions library
predef clear
clear compatibility_functilib

assert_checktrue(execstr("contourf(1:10,1:10,rand(10,10),5,1:5,""011"","" "",[0,0,11,11])", "errcatch") == 0);
