// =============================================================================
// Scilab ( https://www.scilab.org/ ) - This file is part of Scilab
// Copyright (C) 2016 - Scilab Enterprises - Adeline CARNIS
//
//  This file is distributed under the same license as the Scilab package.
// =============================================================================

// <-- Non-regression test for bug 14821 -->
//
// <-- GitLab URL -->
// https://gitlab.com/scilab/scilab/-/issues/14821
//
// <-- Short Description -->
// getio function has been added.

// WARNING: a diary file opened with test_run !
res = getio();
assert_checkequal(res, [5 5 1 6]);

a = diary(fullfile("TMPDIR", "diary.txt"));
res = getio();
assert_checkequal(res, [5 5 2 6]);

// error
str = "getio(1)";
assert_checkfalse(execstr(str   ,"errcatch") == 0);
refMsg = msprintf(_("%s: Wrong number of input argument(s): %d expected.\n"), "getio", 0);
assert_checkerror(str, refMsg);

str = "[a,b] = getio()";
assert_checkfalse(execstr(str   ,"errcatch") == 0);
refMsg = msprintf(_("%s: Wrong number of output argument(s): %d expected.\n"), "getio", 1);
assert_checkerror(str, refMsg);


