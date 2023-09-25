// =============================================================================
// Scilab ( https://www.scilab.org/ ) - This file is part of Scilab
// Copyright (C) 2008 - DIGITEO - Allan CORNET
//
//  This file is distributed under the same license as the Scilab package.
// =============================================================================

// <-- ENGLISH IMPOSED -->
// <-- CLI SHELL MODE -->
// <-- WINDOWS ONLY -->

// <-- Non-regression test for bug 4853 -->
//
// <-- GitLab URL -->
// https://gitlab.com/scilab/scilab/-/issues/4853
// <-- Short Description -->
// dll generated by scilab have a wrong dependency on fortran runtime libs

// test only for windows

exec SCI/modules/dynamic_link/tests/unit_tests/addinter.tst;
r = dllinfo(TMPDIR + '/addinter/libintertest.dll','imports');
if (r(1)(1) == 'libmmd.dll') | (r(2)(1) == 'libmmd.dll') then pause,end

// =============================================================================
