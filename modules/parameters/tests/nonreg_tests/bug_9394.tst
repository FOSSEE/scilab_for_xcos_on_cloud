// =============================================================================
// Scilab ( https://www.scilab.org/ ) - This file is part of Scilab
// Copyright (C) 2013 - Scilab Enterprises - Paul Bignier
//
//  This file is distributed under the same license as the Scilab package.
// =============================================================================
//
// <-- CLI SHELL MODE -->
//
// <-- Non-regression test for bug 9394 -->
//
// <-- GitLab URL -->
// https://gitlab.com/scilab/scilab/-/issues/9394
//
// <-- Short Description -->
// is_params() recognized the "plist" field.

p = init_param();
bool  = is_param(p, "plist");
assert_checkequal(bool, %f);
p = add_param(p, "field1", 10);
bool  = is_param(p, "plist");
bool2 = is_param(p, "field1");
assert_checkequal(bool, %f);
assert_checkequal(bool2, %t);

refMsg = msprintf(_("%s: Wrong type for input argument #%d: %s expected.\n"), "is_param", 2, "String");
assert_checkerror("is_param(p, 1);", refMsg);
assert_checkerror("is_param(p, %t);", refMsg);
