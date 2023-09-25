// =============================================================================
// Scilab ( https://www.scilab.org/ ) - This file is part of Scilab
// Copyright (C) DIGITEO - 2012 - Allan CORNET
//
//  This file is distributed under the same license as the Scilab package.
// =============================================================================

// <-- CLI SHELL MODE -->

// <-- Non-regression test for bug 10904 -->
//
// <-- GitLab URL -->
// https://gitlab.com/scilab/scilab/-/issues/10904
//
// <-- Short Description -->
// error messages of and(), or() builtin were not standard.

a = 1;
b = 3;
c = 4;
d = 5;
// and


msgerr = msprintf(gettext("%s: Wrong type for input argument #%d.\n"), "and", 2);
assert_checkerror("and(a == b, c == d)", msgerr);

msgerr = [msprintf(gettext("Function not defined for given argument type(s),\n"));
msprintf(gettext("  check arguments or define function %s for overloading.\n"),"%c_and")];
assert_checkerror("and(""a"")", msgerr);

msgerr = msprintf(gettext("%s: Wrong size for input argument #%d.\n"), "and", 2);
assert_checkerror("and(%T, [1 2])", msgerr);

msgerr = msprintf(gettext("%s: Wrong value for input argument #%d.\n"), "and", 2);
assert_checkerror("and(%T, ''t'')", msgerr);

msgerr = msprintf(gettext("%s: Wrong value for input argument #%d.\n"), "and", 2);
assert_checkerror("and(%T, %i)", msgerr);

// or

msgerr = msprintf(gettext("%s: Wrong type for input argument #%d.\n"), "or", 2);
assert_checkerror("or(a == b, c == d)", msgerr);

msgerr = [msprintf(gettext("Function not defined for given argument type(s),\n"));
msprintf(gettext("  check arguments or define function %s for overloading.\n"),"%c_or")];
assert_checkerror("or(""a"")", msgerr);

msgerr = msprintf(gettext("%s: Wrong size for input argument #%d.\n"), "or", 2);
assert_checkerror("or(%T, [1 2])", msgerr);

msgerr = msprintf(gettext("%s: Wrong value for input argument #%d.\n"), "or", 2);
assert_checkerror("or(%T, ''t'')", msgerr);

msgerr = msprintf(gettext("%s: Wrong value for input argument #%d.\n"), "or", 2);
assert_checkerror("or(%T, %i)", msgerr);
