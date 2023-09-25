// =============================================================================
// Scilab ( https://www.scilab.org/ ) - This file is part of Scilab
// Copyright (C) 2012 - Scilab Enterprises - Sylvestre Ledru
//
//  This file is distributed under the same license as the Scilab package.
// =============================================================================

// <-- TEST WITH GRAPHIC -->

// <-- Non-regression test for bug 11778 -->
//
// <-- GitLab URL -->
// https://gitlab.com/scilab/scilab/-/issues/11778
//
// <-- Short Description -->
// gcf().color_map=1 should return an error since a matrix nx3 is expected (it was the case in 5.3.3)

a=gcf();
assert_checkerror("a=gca();a.color_map=1",[],999);
