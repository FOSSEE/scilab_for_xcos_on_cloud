// =============================================================================
// Scilab ( https://www.scilab.org/ ) - This file is part of Scilab
// Copyright (C) 2008 - INRIA - Vincent COUVERT
//
//  This file is distributed under the same license as the Scilab package.
// =============================================================================

// <-- CLI SHELL MODE -->

// <-- Non-regression test for bug 157 -->
//
// <-- GitLab URL -->
// https://gitlab.com/scilab/scilab/-/issues/157
//
// <-- Short Description -->
//    Recursive extraction is not valid in this context

name = 1;
execstr("name()(1)", "errcatch");
