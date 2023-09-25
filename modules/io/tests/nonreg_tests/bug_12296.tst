//<-- CLI SHELL MODE -->
// =============================================================================
// Scilab ( https://www.scilab.org/ ) - This file is part of Scilab
// Copyright (C) 2008 - Scilab Enterprises - Alexandre HERISSE
//
//  This file is distributed under the same license as the Scilab package.
// =============================================================================
//
// <-- Non-regression test for bug 12296 -->
//
// <-- GitLab URL -->
// https://gitlab.com/scilab/scilab/-/issues/12296
//
// <-- Short Description -->
// call to getenv with an big environment variable leads to memory corruption

a = "azerty"
b = "";
for i = 1:4000
    b = b + a;
end

assert_checktrue(setenv("test", b));
assert_checkequal(getenv("test"), b);

