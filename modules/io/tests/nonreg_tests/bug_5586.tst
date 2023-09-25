// =============================================================================
// Scilab ( https://www.scilab.org/ ) - This file is part of Scilab
// Copyright (C) 2009 - DIGITEO - Allan CORNET
//
//  This file is distributed under the same license as the Scilab package.
// =============================================================================

// <-- Non-regression test for bug 5586 -->
// <-- CLI SHELL MODE -->
// <-- Short Description -->
// getscilabkeywords() was broken

//
// <-- GitLab URL -->
// https://gitlab.com/scilab/scilab/-/issues/5586
//

ierr = execstr("getscilabkeywords()","errcatch");
if ierr <> 0 then pause,end;

r = getscilabkeywords();
if r == [] then pause,end;

