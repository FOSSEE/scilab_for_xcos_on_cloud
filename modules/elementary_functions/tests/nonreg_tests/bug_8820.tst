// =============================================================================
// Scilab ( https://www.scilab.org/ ) - This file is part of Scilab
// Copyright (C) 2013 - Scilab Enterprises - Charlotte HECQUET
//
//  This file is distributed under the same license as the Scilab package.
// =============================================================================
//
// <-- CLI SHELL MODE -->
//
// <-- Non-regression test for bug 8820 -->
//
// <-- GitLab URL -->
// https://gitlab.com/scilab/scilab/-/issues/8820
//
// <-- Short Description -->
// Squeeze should return a matrix instead of an hypermat when the resulting number
// of dimensions is less or equal to 2

t = rand(2,3,4);
s = squeeze(t(:,1,:));
assert_checkequal(size(s), [2, 4]);
assert_checktrue(execstr("s.*rand(2,4)", "errcatch")==0);
