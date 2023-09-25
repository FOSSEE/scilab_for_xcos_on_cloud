// =============================================================================
// Scilab ( https://www.scilab.org/ ) - This file is part of Scilab
// Copyright (C) 2010 - DIGITEO - Allan CORNET
//
//  This file is distributed under the same license as the Scilab package.
// =============================================================================
//
// <-- JVM MANDATORY -->
//
// <-- Non-regression test for bug 8332 -->
//
// <-- GitLab URL -->
// https://gitlab.com/scilab/scilab/-/issues/8332
//
// <-- Short Description -->
// Some use of clipboard function crashed Scilab.

clipboard("copy", 1);
clipboard("copy", ['S' 'c' 'i'; 'l' 'a' 'b']);
clipboard("copy", rand(2,2));
clipboard("copy", rand(100,100));

