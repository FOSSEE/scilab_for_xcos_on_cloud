// =============================================================================
// Scilab ( https://www.scilab.org/ ) - This file is part of Scilab
// Copyright (C) 2009 - DIGITEO - Allan CORNET
//
//  This file is distributed under the same license as the Scilab package.
// =============================================================================

// <-- Non-regression test for bug 4421 -->
//
// <-- GitLab URL -->
// https://gitlab.com/scilab/scilab/-/issues/4421
//
// <-- Short Description -->
// bug with the completion


// <-- CLI SHELL MODE -->

ilib_verbose(0);
ierr = exec(SCI+"/modules/completion/tests/utilities/build_primitives.sce","errcatch",-1);
if ierr<>0 then pause, end
ierr = exec(TMPDIR + "/completion/loader.sce","errcatch",-1);
if ierr<>0 then pause, end

cd TMPDIR;
mkdir('scicoinor');
mkdir('dir1');
cd (TMPDIR+'/dir1');
mkdir('dir2');
cd (TMPDIR+'/dir1/dir2');
currentline = 'cd ../../scicoi';
r = completeline(currentline,'scicoinor',getfilepartlevel(currentline),getpartlevel(currentline),%t);
if r <> 'cd ../../scicoinor' then pause,end
