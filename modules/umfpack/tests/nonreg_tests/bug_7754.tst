// =============================================================================
// Scilab ( https://www.scilab.org/ ) - This file is part of Scilab
// Copyright (C) 2010 - DIGITEO - Allan CORNET
//
//  This file is distributed under the same license as the Scilab package.
// =============================================================================
//
// <-- CLI SHELL MODE -->
//
// <-- Non-regression test for bug 7754 -->
//
// <-- GitLab URL -->
// https://gitlab.com/scilab/scilab/-/issues/7754
//
// <-- Short Description -->
// umfpack did not work with Scilab 5.3.0-beta-2 on Windows.

A = sparse( [ 2  3  0  0  0;
              3  0  4  0  6; 
              0 -1 -3  2  0; 
              0  0  1  0  0; 
              0  4  2  0  1] );
b = [8 ; 45; -3; 3; 19];
if execstr("x = umfpack(A, ""\"", b);", "errcatch") <> 0 then pause, end

