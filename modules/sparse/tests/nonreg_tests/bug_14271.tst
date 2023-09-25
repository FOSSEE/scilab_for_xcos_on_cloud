// =============================================================================
// Scilab ( https://www.scilab.org/ ) - This file is part of Scilab
// Copyright (C) 2016 - Scilab Enterprises - Rishubh Jain
//
//  This file is distributed under the same license as the Scilab package.
// =============================================================================

// <-- ENGLISH IMPOSED -->
// <-- CLI SHELL MODE -->
// <-- Non-regression test for bug 14271 -->
//
// <-- GitLab URL -->
// https://gitlab.com/scilab/scilab/-/issues/14271
//
// <-- Short Description -->
//    conjgrad() displayed an incorrect error message about number of arguments.

assert_checkerror("conjgrad()","conjgrad: Wrong number of input arguments: 2 to 9 expected.");
a="error check";
assert_checkerror("conjgrad(""a"")","conjgrad: Wrong number of input arguments: 2 to 9 expected.");

