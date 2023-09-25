// =============================================================================
// Scilab ( https://www.scilab.org/ ) - This file is part of Scilab
// Copyright (C) 2008 - INRIA - Allan CORNET
//
//  This file is distributed under the same license as the Scilab package.
// =============================================================================

// <-- CLI SHELL MODE -->

// <-- Non-regression test for bug 2980 -->
//
// <-- GitLab URL -->
// https://gitlab.com/scilab/scilab/-/issues/2980
//

ierr = execstr('str=string(1)','errcatch');
if ierr <> 0 then pause,end
if str <> '1' then pause,end

ierr = execstr('str=string(1)','errcatch');
if ierr <> 0 then pause,end
if str <> '1' then pause,end

ierr = execstr('str=string(1)','errcatch');
if ierr <> 0 then pause,end
if str <> '1' then pause,end

