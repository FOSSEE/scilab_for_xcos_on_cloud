// =============================================================================
// Scilab ( https://www.scilab.org/ ) - This file is part of Scilab
// Copyright (C) 2011 - DIGITEO - Allan CORNET
//
//  This file is distributed under the same license as the Scilab package.
// =============================================================================
// <-- CLI SHELL MODE -->
// <-- Non-regression test for bug 9730 -->
//
// <-- GitLab URL -->
// https://gitlab.com/scilab/scilab/-/issues/9730
//
// <-- Short Description -->
// lines() returned an int32 and not a double value.

r = lines();
assert_checkequal(type(r), 1);
