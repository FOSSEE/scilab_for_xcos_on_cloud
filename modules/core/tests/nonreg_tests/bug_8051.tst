// =============================================================================
// Scilab ( http://www.scilab.org/ ) - This file is part of Scilab
// Copyright (C) 2012 - Scilab Enterprises - Vincent COUVERT
//
//  This file is distributed under the same license as the Scilab package.
// =============================================================================
//
// <-- Non-regression test for bug 8051 -->
//
// <-- CLI SHELL MODE -->
// <-- NO TRY CATCH -->
//
// <-- Bugzilla URL -->
// http://bugzilla.scilab.org/show_bug.cgi?id=8051
//
// <-- Short Description -->
// execstr("[") was blocking!

assert_checkequal(execstr("[","errcatch"), 2);