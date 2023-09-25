// =============================================================================
// Scilab ( https://www.scilab.org/ ) - This file is part of Scilab
// Copyright (C) 2012 - Scilab Enterprises - Adeline CARNIS
//
//  This file is distributed under the same license as the Scilab package.
// =============================================================================

// <-- CLI SHELL MODE -->

// <-- Non-regression test for bug 7881 -->
//
// <-- GitLab URL -->
// https://gitlab.com/scilab/scilab/-/issues/7881
//
// <-- Short Description -->
//    In the lattn function, the second argument is a scalar
// =============================================================================

c = rand(1:50);
assert_checkfalse(execstr("lattn(10,[1 2], c)", "errcatch") == 0);
refMsg = msprintf(_("%s: Wrong size for input argument #%d: A scalar expected.\n"), "lattn", 2); 
assert_checkerror("lattn(10,[1 2], c)", refMsg);

c1 = rand(10,3);
assert_checkfalse(execstr("lattn(2, 1, c1)", "errcatch") == 0);
refMsg = msprintf(_("%s: Wrong values for input arguments #%d and #%d.\n"), "lattn", 1,2); 
assert_checkerror("lattn(2, 1, c1)", refMsg);






