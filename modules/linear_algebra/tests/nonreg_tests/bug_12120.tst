// =============================================================================
// Scilab ( https://www.scilab.org/ ) - This file is part of Scilab
// Copyright (C) 2012 - Scilab Enterprises - Sylvestre Ledru
//
//  This file is distributed under the same license as the Scilab package.
// =============================================================================

// <-- CLI SHELL MODE -->

// <-- Non-regression test for bug 12120 -->
//
// <-- GitLab URL -->
// https://gitlab.com/scilab/scilab/-/issues/12120
//
// <-- Short Description -->
//   eigs is broken for complex sparse matrices
// =============================================================================

A = %i * speye(10,10);
a=eigs(A, [], 3, 'SM');
assert_checkequal(size(a),[3, 1]);

