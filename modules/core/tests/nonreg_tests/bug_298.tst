//<-- CLI SHELL MODE -->
// =============================================================================
// Scilab ( https://www.scilab.org/ ) - This file is part of Scilab
// Copyright (C) 2008 - INRIA - Vincent COUVERT
//
//  This file is distributed under the same license as the Scilab package.
// =============================================================================

// <-- Non-regression test for bug 298 -->
//
// <-- GitLab URL -->
// https://gitlab.com/scilab/scilab/-/issues/298
//
// <-- Short Description -->
//     Using size() without giving any argument messes up Scilab


if execstr("size()","errcatch")==0 then pause,end

