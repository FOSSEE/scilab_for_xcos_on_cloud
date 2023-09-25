// =============================================================================
// Scilab ( https://www.scilab.org/ ) - This file is part of Scilab
// Copyright (C) 2009 - DIGITEO - Allan CORNET
//
//  This file is distributed under the same license as the Scilab package.
// =============================================================================

// <-- Non-regression test for bug 5330 -->
//
// <-- GitLab URL -->
// https://gitlab.com/scilab/scilab/-/issues/5330
//
// <-- Short Description -->
// "help toto tata" returns a error

ierr = execstr('help toto tata','errcatch');
if ierr <> 0 then pause,end
