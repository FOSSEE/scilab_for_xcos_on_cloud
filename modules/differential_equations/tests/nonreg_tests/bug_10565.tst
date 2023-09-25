// =============================================================================
// Scilab ( https://www.scilab.org/ ) - This file is part of Scilab
// Copyright (C) 2012 - DIGITEO - Allan CORNET
//
//  This file is distributed under the same license as the Scilab package.
// =============================================================================
//
// <-- Non-regression test for bug 10565 -->
//
// <-- TEST WITH GRAPHIC -->
//
// <-- GitLab URL -->
//https://gitlab.com/scilab/scilab/-/issues/10565
//
// <-- Short Description -->
// demo simulation --> bicycle simulation --> unstable trajectory failed

ierr = exec("SCI/modules/differential_equations/demos/bike/bike1.dem.sce", "errcatch", -1);
assert_checkequal(ierr, 0);

ierr = exec("SCI/modules/differential_equations/demos/bike/bike2.dem.sce", "errcatch", -1);
assert_checkequal(ierr, 0);
