// =============================================================================
// Scilab ( https://www.scilab.org/ ) - This file is part of Scilab
// Copyright (C) 2011 - DIGITEO - Clément DAVID
//
//  This file is distributed under the same license as the Scilab package.
// =============================================================================

// <-- XCOS TEST -->
// <-- ENGLISH IMPOSED -->
//
// <-- Non-regression test for bug 7363 -->
//
// <-- GitLab URL -->
// https://gitlab.com/scilab/scilab/-/issues/7363
//
// <-- Short Description -->
// CBLOCK block produce an error when opening parameters

ilib_verbose(0);


// stubbing dialogs
prot = funcprot();
funcprot(0);

function %str=x_mdialog(%desc,%labels,%ini)
    %str=%ini;
endfunction

function str_out = dialog(kind, str_in) ;
    str_out = str_in;
endfunction

funcprot(prot);

// start test
o = CBLOCK("define");
o = CBLOCK("set", o);

