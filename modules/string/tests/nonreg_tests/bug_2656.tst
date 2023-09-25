// =============================================================================
// Scilab ( https://www.scilab.org/ ) - This file is part of Scilab
// Copyright (C) 2008 - INRIA - Pierre MARECHAL <pierre.marechal@inria.fr>
//
//  This file is distributed under the same license as the Scilab package.
// =============================================================================

// <-- CLI SHELL MODE -->

// <-- Non-regression test for bug 2656 -->
//
// <-- GitLab URL -->
// https://gitlab.com/scilab/scilab/-/issues/2656
//
// <-- Short Description -->
//    M2sci doesn't convert "carriage return" inside a loop.

if stripblanks("    ") <> "" then pause,end
