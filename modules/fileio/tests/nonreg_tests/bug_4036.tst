//<-- CLI SHELL MODE -->
// =============================================================================
// Scilab ( https://www.scilab.org/ ) - This file is part of Scilab
// Copyright (C) 2009 - DIGITEO - Allan CORNET
//
//  This file is distributed under the same license as the Scilab package.
// =============================================================================

// <-- Non-regression test for bug 4036 -->
//
// <-- GitLab URL -->
// https://gitlab.com/scilab/scilab/-/issues/4036
//
// <-- Short Description -->
// command pwd doesn't work. I must use pwd().

ierr = execstr('pwd','errcatch');
if ierr <> 0 then pause,end
