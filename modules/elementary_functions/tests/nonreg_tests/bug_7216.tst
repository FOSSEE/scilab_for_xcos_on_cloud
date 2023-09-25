// =============================================================================
// Scilab ( https://www.scilab.org/ ) - This file is part of Scilab
// Copyright (C) 2012 - Scilab Enterprises - Adeline CARNIS
//
//  This file is distributed under the same license as the Scilab package.
// =============================================================================

// <-- CLI SHELL MODE -->

// <-- Non-regression test for bug 7216 -->
//
// <-- GitLab URL -->
// https://gitlab.com/scilab/scilab/-/issues/7216
//
// <-- Short Description -->
//    The result returned by modulo(x,0) and pmodulo(x,0) depends on the ieee()
//    mode.
// =============================================================================

ieee(0);
assert_checkfalse(execstr("modulo(5,0)", "errcatch") == 0);
refMsg = msprintf(_("Division by zero...\n")); 
assert_checkerror("modulo(5,0)", refMsg);

assert_checkfalse(execstr("pmodulo(5,0)", "errcatch") == 0);
refMsg = msprintf(_("Division by zero...\n")); 
assert_checkerror("pmodulo(5,0)", refMsg);

ieee(2);
x = modulo(5,0);
assert_checkequal(x, %nan);

x = pmodulo(5,0);
assert_checkequal(x, %nan);

ieee(0);



