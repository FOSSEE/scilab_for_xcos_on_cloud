// =============================================================================
// Scilab ( https://www.scilab.org/ ) - This file is part of Scilab
// Copyright (C) 2012 - Scilab Enterprises - Adeline CARNIS
//
//  This file is distributed under the same license as the Scilab package.
// =============================================================================

// <-- CLI SHELL MODE -->

// <-- Non-regression test for bug 8101 -->
//
// <-- GitLab URL -->
// https://gitlab.com/scilab/scilab/-/issues/8101
//
// <-- Short Description -->
//    The median function with a sparse as a first argument did not return the
//    good result. Moreover, median(sparse,'r'|'c") were not supported.
// =============================================================================

s=sparse([1 0 2 0 0 ; 0 -4 0 0 7 ]);
y = median(s);
res = sparse(median(full(s)));
assert_checkequal(y, res);

y = median(s, "r");
res = sparse(median(full(s), "r"));
assert_checkequal(y, res);

y = median(s, "c");
res = sparse(median(full(s), "c"));
assert_checkequal(y, res);

y = median(s, "m");
res = sparse(median(full(s), "m"));
assert_checkequal(y, res);

y = median(s, 1);
res = sparse(median(full(s), 1));
assert_checkequal(y, res);





