// =============================================================================
// Scilab ( https://www.scilab.org/ ) - This file is part of Scilab
// Copyright (C) 2008 - DIGITEO - Allan CORNET
//
//  This file is distributed under the same license as the Scilab package.
// =============================================================================

// <-- Non-regression test for bug 3757 -->
//
// <-- GitLab URL -->
// https://gitlab.com/scilab/scilab/-/issues/3757
//
// <-- Short Description -->
// Under Scilex, the completion of paths is incorrect

// <-- CLI SHELL MODE -->

ilib_verbose(0);
ierr = exec(SCI+"/modules/completion/tests/utilities/build_primitives.sce","errcatch",-1);
if ierr<>0 then pause, end
ierr = exec(TMPDIR + "/completion/loader.sce","errcatch",-1);
if ierr<>0 then pause, end


// cd d:\Pro[TAB]
currentline = 'cd d:\Pro';
newline = completeline(currentline,'Projects',getfilepartlevel(currentline),getpartlevel(currentline),%t);
if newline <> 'cd d:\Projects' then pause,end
