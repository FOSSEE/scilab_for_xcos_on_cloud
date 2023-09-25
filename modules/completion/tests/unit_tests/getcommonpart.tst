// =============================================================================
// Scilab ( https://www.scilab.org/ ) - This file is part of Scilab
// Copyright (C) 2009 - DIGITEO - Allan CORNET
//
//  This file is distributed under the same license as the Scilab package.
// =============================================================================

// <-- CLI SHELL MODE -->

ilib_verbose(0);
ierr = exec(SCI+"/modules/completion/tests/utilities/build_primitives.sce","errcatch",-1);
if ierr<>0 then pause, end
ierr = exec(TMPDIR + "/completion/loader.sce","errcatch",-1);
if ierr<>0 then pause, end

r = getcommonpart(['home','homer']);
if r <> 'home' then pause,end;

r = getcommonpart(['gethistory','gethistoryfile','gethis']);
if r <> 'gethis' then pause,end;

r = getcommonpart(['gethistory','gethistoryfile','geths']);
if r <> 'geth' then pause,end;

ws = ['umf_ludel', 'umf_lufact', 'umf_luget', 'umf_luinfo', 'umf_lusolve', 'umfpack', 'umfpacklib'];
r = getcommonpart(ws);
if r <> 'umf' then pause,end;

ws = ['umf_ludel', 'umf_lufact', 'umf_luget', 'umf_luinfo', 'umf_lusolve'];
r = getcommonpart(ws);
if r <> 'umf_lu' then pause,end;

ws = ['c:\Program files\GIT-scilab-branch-5.1','c:\Program files\GIT-scilab-master'];
r = getcommonpart(ws);
if r <> 'c:\Program files\GIT-scilab-' then pause,end;

ws = ['/home/sylvestre/GIT-scilab-branch-5.1','/home/sylvestre/GIT-scilab-master'];
r = getcommonpart(ws);
if r <> '/home/sylvestre/GIT-scilab-' then pause,end;
