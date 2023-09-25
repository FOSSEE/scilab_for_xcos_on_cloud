// =============================================================================
// Scilab ( https://www.scilab.org/ ) - This file is part of Scilab
// Copyright (C) 2013 - Scilab Enterprises - Adeline CARNIS
//
//  This file is distributed under the same license as the Scilab package.
// =============================================================================

// <-- CLI SHELL MODE -->

// <-- Non-regression test for bug 12992 -->
//
// <-- GitLab URL -->
// https://gitlab.com/scilab/scilab/-/issues/12992
//
// <-- Short Description -->
//    The sigma value was always equals to "LM".
// =============================================================================

A = [11,2,3,1,4; 2,9,3,5,2; 3,3,15,4,3; 1,5,4,12,4; 4,2,3,4,17];
B = eye(5,5);
k = 1;
sigma = 'SM';
cld = eigs(A, B, k, sigma);
d0 = spec(A);
assert_checkalmostequal(cld, d0(1), [], %eps);
[d, v] = eigs(A, B, k, sigma);
[d0, v0] = spec(A);
assert_checkalmostequal(d, v0(1), [], %eps);
assert_checkalmostequal(abs(v), abs(d0(:,1)), [], %eps)
