// =============================================================================
// Scilab ( https://www.scilab.org/ ) - This file is part of Scilab
// Copyright (C) 2012 - DIGITEO - Vincent COUVERT
//
//  This file is distributed under the same license as the Scilab package.
// =============================================================================
//
// <-- Non-regression test for bug 9523 -->
//
// <-- CLI SHELL MODE -->
//
// <-- GitLab URL -->
// https://gitlab.com/scilab/scilab/-/issues/9523
//
// <-- Short Description -->
// clearglobal did not clear all global variables.

// Number of global variables at Scilab startup
// When writing this test, these variables are:
//  - %modalWarning
//  - %toolboxes
//  - %toolboxes_dir
// These variables number is hard-coded in
// SCI/modules/core/sci_gateway/fortran/sci_f_clearglobal.f (nprotect at line 27)

startupGlobalVarnames = ["%modalWarning";"%toolboxes";"%toolboxes_dir"];
globalVarnames = who("global");
assert_checkequal(globalVarnames, startupGlobalVarnames);

// Define a new global variable in a function
function bug_9523()
    global isbug9523fixed
    isbug9523fixed = %t
endfunction

bug_9523();
globalVarnames = who("global");
assert_checkequal(globalVarnames, [startupGlobalVarnames; "isbug9523fixed"]);

clearglobal(); // Should kill isbug9523fixed

globalVarnames = who("global");
assert_checkequal(globalVarnames, startupGlobalVarnames);



