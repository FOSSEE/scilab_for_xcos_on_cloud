// =============================================================================
// Scilab ( https://www.scilab.org/ ) - This file is part of Scilab
// Copyright (C) 2012 - DIGITEO - Vincent COUVERT
//
//  This file is distributed under the same license as the Scilab package.
// =============================================================================
//
// <-- CLI SHELL MODE -->
//
// <-- Non-regression test for bug 10519 -->
//
// <-- GitLab URL -->
// https://gitlab.com/scilab/scilab/-/issues/10519
//
// <-- Short Description -->
// Wrong error message in spec function when input arguments were not square.

// First input argument is not square
exectedMsg = msprintf(_("%s: Wrong type for input argument #%d: Square matrix expected.\n"), "spec", 1);
assert_checkerror("spec(rand(1,2),rand(2,4))", exectedMsg);

// Second input argument is not square
exectedMsg = msprintf(_("%s: Wrong type for input argument #%d: Square matrix expected.\n"), "spec", 2);
assert_checkerror("spec(rand(2,2),rand(2,4))", exectedMsg);
