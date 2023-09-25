//<-- CLI SHELL MODE -->
// =============================================================================
// Scilab ( https://www.scilab.org/ ) - This file is part of Scilab
// Copyright (C) 2013 - Scilab Enterprises - Charlotte HECQUET
//
//  This file is distributed under the same license as the Scilab package.
// =============================================================================

// <-- Non-regression test for bug 10180 -->
//
// <-- GitLab URL -->
// https://gitlab.com/scilab/scilab/-/issues/10180
//
// <-- Short Description -->
// det is not defined for sparse matrix

A=[1,2,3;3,4,5;0,0,5];
sp=sparse(A);
assert_checkequal(det(sp), det(A));
[e,m]=det(sp);
assert_checkequal(e, 1);
assert_checkequal(m, -1);
