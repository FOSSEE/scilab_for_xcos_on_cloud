// =============================================================================
// Scilab ( https://www.scilab.org/ ) - This file is part of Scilab
// Copyright (C) 2008 - DIGITEO - Allan CORNET
//
//  This file is distributed under the same license as the Scilab package.
// =============================================================================

// <-- Non-regression test for bug 5105 -->
//
// <-- GitLab URL -->
// https://gitlab.com/scilab/scilab/-/issues/5105
//
// <-- Short Description -->
// completion: cd "..\L<tab>  does not work
// 


// <-- CLI SHELL MODE -->

ilib_verbose(0);
ierr = exec(SCI+"/modules/completion/tests/utilities/build_primitives.sce","errcatch",-1);
if ierr<>0 then pause, end
ierr = exec(TMPDIR + "/completion/loader.sce","errcatch",-1);
if ierr<>0 then pause, end

currentline = 'cd ""../et';
if getfilepartlevel(currentline) <> '../et' then pause,end
r = completeline(currentline,'etc/', getfilepartlevel(currentline), getpartlevel(currentline), %t);
if r <> 'cd ""../etc/' then pause,end
