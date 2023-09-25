// =============================================================================
// Scilab ( https://www.scilab.org/ ) - This file is part of Scilab
// Copyright (C) 2014 - Scilab Enterprises - Paul Bignier
//
//  This file is distributed under the same license as the Scilab package.
// =============================================================================
//
// <-- CLI SHELL MODE -->
//
// <-- Non-regression test for bug 13136 -->
//
// <-- GitLab URL -->
// https://gitlab.com/scilab/scilab/-/issues/13136
//
// <-- Short Description -->
// exists() and isdef() failed for input arguments longer than 1

ab = 1; bc = 1; // Variables longer than 1 character
res1 = exists(["ab" "bc"]);
res2 = exists(["ab" ; "bc"]);

assert_checkequal(res1, [1 1]);
assert_checkequal(res2, [1 ; 1]);

res1 = isdef(["ab" "bc"]);
res2 = isdef(["ab" ; "bc"]);

assert_checkequal(res1, [%t %t]);
assert_checkequal(res2, [%t ; %t]);
