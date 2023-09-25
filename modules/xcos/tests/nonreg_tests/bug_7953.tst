// =============================================================================
// Scilab ( https://www.scilab.org/ ) - This file is part of Scilab
// Copyright (C) 2011 - DIGITEO - Clément DAVID
//
//  This file is distributed under the same license as the Scilab package.
// =============================================================================

// <-- XCOS TEST -->
//
// <-- Non-regression test for bug 7953 -->
//
// <-- GitLab URL -->
// https://gitlab.com/scilab/scilab/-/issues/7953
//
// <-- Short Description -->
// No error message were printed when the diagram is invalid.

try
    xcos(mlist("diagram", "plop"));
catch
end

[str, n] = lasterror();
assert_checkequal(n, 999);
assert_checkequal(strstr(str, "xcos"), str);

