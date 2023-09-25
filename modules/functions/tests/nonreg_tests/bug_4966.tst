// =============================================================================
// Scilab ( https://www.scilab.org/ ) - This file is part of Scilab
// Copyright (C) 2009 - DIGITEO - Allan CORNET
//
//  This file is distributed under the same license as the Scilab package.
// =============================================================================

// <-- CLI SHELL MODE -->

// <-- Non-regression test for bug 4943 -->
//
// <-- GitLab URL -->
// https://gitlab.com/scilab/scilab/-/issues/4943
//
// <-- Short Description -->
// execstr([]) should return [] 
// =============================================================================
if execstr([]) <> [] then pause,end
// =============================================================================