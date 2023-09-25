// =============================================================================
// Scilab ( https://www.scilab.org/ ) - This file is part of Scilab
// Copyright (C) 2010 - DIGITEO - Allan CORNET
//
//  This file is distributed under the same license as the Scilab package.
// =============================================================================
//
// <-- CLI SHELL MODE -->
//
// <-- Non-regression test for bug 8587 -->
//
// <-- GitLab URL -->
// https://gitlab.com/scilab/scilab/-/issues/8587
//
// <-- Short Description -->
// readNamedMatrixOfDouble (readCommonNamedMatrixOfDouble) returned wrong values

ilib_verbose(0);
currentpath = pwd();
cd TMPDIR;
mkdir('bug_8587');
TEST_DIR = TMPDIR + filesep() + 'bug_8587';
copyfile(SCI+'/modules/api_scilab/tests/nonreg_tests/bug_8587.c' , TEST_DIR + filesep() + 'bug_8587.c');
chdir(TEST_DIR);
files = ['bug_8587.c'];
ilib_build('lib_bug_8587', ['readDoubles', 'sci_readDoubles'], files, []);
exec loader.sce;
chdir(currentpath);
REF_TEST_MATRIX = [1 2 3; 4 5 6];
REF_TEST_MATRIX_COPY = [1 2 3; 4 5 6];
if execstr("result = readDoubles()", "errcatch") <> 0 then pause, end
if ~or(REF_TEST_MATRIX_COPY == REF_TEST_MATRIX) then pause, end
if ~or(result == REF_TEST_MATRIX) then pause, end
