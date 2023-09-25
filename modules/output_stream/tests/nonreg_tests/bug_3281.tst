// =============================================================================
// Scilab ( https://www.scilab.org/ ) - This file is part of Scilab
// Copyright (C) 2010 - INRIA - Serge Steer
//
//  This file is distributed under the same license as the Scilab package.
// =============================================================================
// <-- CLI SHELL MODE -->

// <-- Non-regression test for bug 3281 -->

// <-- NOT FIXED --> 6.0.0
//
//
// <-- GitLab URL -->
// https://gitlab.com/scilab/scilab/-/issues/3281
//

// <-- Short Description -->
// Bad error message

if execstr("continue","errcatch")==0 then pause,end
mess=lasterror();
if part(mess,1:8)<>"continue" then pause,end
