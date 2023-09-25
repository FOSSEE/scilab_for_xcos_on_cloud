// =============================================================================
// Scilab ( https://www.scilab.org/ ) - This file is part of Scilab
// Copyright (C) 2013 - Scilab Enterprises - Paul Bignier
//
//  This file is distributed under the same license as the Scilab package.
// =============================================================================
//
// <-- CLI SHELL MODE -->
//
// <-- Non-regression test for bug 12993 -->
//
// <-- GitLab URL -->
// https://gitlab.com/scilab/scilab/-/issues/12993
//
// <-- Short Description -->
// stdev with no input arguments gave an erroneous result.
// =============================================================================

clear x;

refMsg = msprintf(_("%s: Wrong number of input arguments: %d to %d expected.\n"), "stdev", 1, 3);
assert_checkerror("stdev;", refMsg);
x = 1:3;
assert_checkerror("stdev;", refMsg);
