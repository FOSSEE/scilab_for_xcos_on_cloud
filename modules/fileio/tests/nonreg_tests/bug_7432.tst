// =============================================================================
// Scilab ( https://www.scilab.org/ ) - This file is part of Scilab
// Copyright (C) 2010 - DIGITEO - Allan CORNET
//
//  This file is distributed under the same license as the Scilab package.
// =============================================================================
//
// <-- CLI SHELL MODE -->
//
// <-- Non-regression test for bug 7432 -->
//
// <-- GitLab URL -->
// https://gitlab.com/scilab/scilab/-/issues/7432
//
// <-- Short Description -->
// fprintfMat with a non valid format as '%s' can create a wrong file
//
//==============================================================================
ierr = execstr("fprintfMat(TMPDIR + ""/test.txt"", ones(3,3), ""%s"")", "errcatch");
if ierr <> 999 then pause, end
//==============================================================================
fprintfMat(TMPDIR + "/test.txt", ones(3,3), "%d");
ierr = execstr("fscanfMat(TMPDIR + ""/test.txt"", ""%s"")", "errcatch");
if ierr <> 999 then pause, end
//==============================================================================

