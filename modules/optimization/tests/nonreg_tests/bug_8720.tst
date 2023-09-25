// =============================================================================
// Scilab ( https://www.scilab.org/ ) - This file is part of Scilab
// Copyright (C) 2010-2011 - DIGITEO - Michael Baudin
//
//  This file is distributed under the same license as the Scilab package.
// =============================================================================
// <-- CLI SHELL MODE -->
//
// <-- Non-regression test for bug 8720 -->
//
// <-- GitLab URL -->
// https://gitlab.com/scilab/scilab/-/issues/8720
//
// <-- Short Description -->
// The karmarkar function may stop too early in the iterations.
//


c = 1.e-20 * [-20 -24 0 0]';
a = [
3 6 1 0
4 2 0 1
];
b = [60 32]';
x0 = [4.1128205  7.7333333  1.2615385  0.0820513]';
expected = [4 8 0 0]';
xopt = karmarkar(a,b,c,x0);
assert_checkalmostequal ( xopt , expected , 1.e-4, 1.e-3);

