// =============================================================================
// Scilab ( https://www.scilab.org/ ) - This file is part of Scilab
// Copyright (C) 2013 - Scilab Enterprises - Sylvestre Ledru
//
//  This file is distributed under the same license as the Scilab package.
// =============================================================================

// <-- CLI SHELL MODE -->

// <-- Non-regression test for bug 12238 -->
//
// <-- GitLab URL -->
// https://gitlab.com/scilab/scilab/-/issues/12238
//
// <-- Short Description -->
//    [d v] = eigs(A) is broken for sparse matrices
// =============================================================================

A = sparse(rand(10,10));
[d v] = eigs(A);
val=norm(A*v-v*d);

assert_checkalmostequal(val,0,0,30*%eps);
