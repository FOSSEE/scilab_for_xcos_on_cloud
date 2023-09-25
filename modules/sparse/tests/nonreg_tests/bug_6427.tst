// =============================================================================
// Scilab ( https://www.scilab.org/ ) - This file is part of Scilab
// Copyright (C) 2013 - Scilab Enterprises - Charlotte HECQUET
//
//  This file is distributed under the same license as the Scilab package.
// =============================================================================

// <-- CLI SHELL MODE -->

// <-- Non-regression test for bug 6427 -->
//
// <-- GitLab URL -->
// https://gitlab.com/scilab/scilab/-/issues/6427
//
// <-- Short Description -->
// full([%T %F]) returns an error

assert_checkequal(full([%T %F]), [%T %F]);
