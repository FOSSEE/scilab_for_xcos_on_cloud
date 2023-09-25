// =============================================================================
// Scilab ( https://www.scilab.org/ ) - This file is part of Scilab
// Copyright (C) 2012 - Scilab Enterprises - Simon MARCHETTO
//
//  This file is distributed under the same license as the Scilab package.
// =============================================================================

// <-- Non-regression test for bug 6320 -->
//
// <-- GitLab URL -->
// https://gitlab.com/scilab/scilab/-/issues/6320
//
// <-- Short Description -->
// completion should be case insensitive

// <-- CLI SHELL MODE -->

createNode = 1;

r = completion('createn');
assert_checkequal(r, 'createNode');

r = completion('CREATEN');
assert_checkequal(r, 'createNode');
