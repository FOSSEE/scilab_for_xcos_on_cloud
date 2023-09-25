//<-- CLI SHELL MODE -->
// =============================================================================
// Scilab ( https://www.scilab.org/ ) - This file is part of Scilab
// Copyright (C) 2014 - Scilab Enterprises - Calixte DENIZET
//
//  This file is distributed under the same license as the Scilab package.
// =============================================================================

//
// <-- Non-regression test for bug 10391 -->
//
// <-- GitLab URL -->
// https://gitlab.com/scilab/scilab/-/issues/10391
//
// <-- Short Description -->
// Error when completion occurs after global deletation.

global("xyz");
xyz=1;
clearglobal("xyz");
librarieslist();