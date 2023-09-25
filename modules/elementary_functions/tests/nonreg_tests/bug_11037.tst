// =============================================================================
// Scilab ( https://www.scilab.org/ ) - This file is part of Scilab
// Copyright (C) 2012 - CNES - Guillaume AZEMA
//
//  This file is distributed under the same license as the Scilab package.
// =============================================================================

// <-- CLI SHELL MODE -->

// <-- Non-regression test for bug 11037 -->
//
// <-- GitLab URL -->
// https://gitlab.com/scilab/scilab/-/issues/11037
//
// <-- Short Description -->
//    linspace() had floating point issues

assert_checkequal(linspace(0,100,101), 0:100);
