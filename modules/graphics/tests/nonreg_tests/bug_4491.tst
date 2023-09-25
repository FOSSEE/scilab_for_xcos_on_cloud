// =============================================================================
// Scilab ( https://www.scilab.org/ ) - This file is part of Scilab
// Copyright (C) 2009 - DIGITEO - Vincent COUVERT
//
//  This file is distributed under the same license as the Scilab package.
// =============================================================================

// <-- TEST WITH GRAPHIC -->
//
// <-- Non-regression test for bug 4491 -->
//
// <-- GitLab URL -->
// https://gitlab.com/scilab/scilab/-/issues/4491
//
// <-- Short Description -->
//    get() with wrong argument causes EXCEPTION_ACCESS_VIOLATION error.


assert_checktrue(isempty(get("parent")));