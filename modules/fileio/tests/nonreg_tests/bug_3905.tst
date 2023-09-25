// =============================================================================
// Scilab ( https://www.scilab.org/ ) - This file is part of Scilab
// Copyright (C) 2009 - DIGITEO - Allan CORNET
//
//  This file is distributed under the same license as the Scilab package.
// =============================================================================

// <-- CLI SHELL MODE -->

// <-- Non-regression test for bug 3905 -->
//
// <-- GitLab URL -->
// https://gitlab.com/scilab/scilab/-/issues/3905
//
// <-- Short Description -->
// regression fscanf
// fscanf is the same function than mfscanf.

fln = TMPDIR + filesep() +'bug_3905.txt';
strs = ['txt1','txt2','txt3'];
mputl(strs, fln);

[fi, err] = mopen(fln);

if err <> 0 then pause,end

s1 = mfscanf(fi,'%s');
if s1 <> 'txt1' then pause,end

s2 = mfscanf(fi,'%s');
if s2 <> 'txt2' then pause,end

s3 = mfscanf(fi,'%s');
if s3 <> 'txt3' then pause,end

mclose(fi);

ierr = execstr("mfscanf(9999,''%s'');","errcatch");
if ierr <> 999 then pause,end

