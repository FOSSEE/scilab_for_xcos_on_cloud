// =============================================================================
// Scilab ( https://www.scilab.org/ ) - This file is part of Scilab
// Copyright (C) 2008 - DIGITEO - Allan CORNET
//
//  This file is distributed under the same license as the Scilab package.
// =============================================================================

// <-- CLI SHELL MODE -->

// <-- Non-regression test for bug 3714 -->
//
// <-- GitLab URL -->
// https://gitlab.com/scilab/scilab/-/issues/3714
//
// <-- Short Description -->
// fprintfMat and fscanfMat cannot cope with directories with accented characters

a = eye(10,10);
pathdest = TMPDIR + filesep() + 'àaùé_dir';
filedest = pathdest + filesep() + 'àaùé_file.txt';

mkdir(pathdest);
fprintfMat(filedest,a);

b = fscanfMat(filedest);

if or(a<>b) then pause,end

