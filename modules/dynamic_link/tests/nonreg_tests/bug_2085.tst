// =============================================================================
// Scilab ( https://www.scilab.org/ ) - This file is part of Scilab
// Copyright (C) 2008 - INRIA - Allan CORNET
//
//  This file is distributed under the same license as the Scilab package.
// =============================================================================

// <-- CLI SHELL MODE -->

// <-- Non-regression test for bug 2085 -->
//
// <-- GitLab URL -->
// https://gitlab.com/scilab/scilab/-/issues/2085
//
// <-- Short Description -->
// this example fails on some pc ???

// exec SCI/modules/dynamic_link/tests/nonreg_tests/bug_2085.tst;

ilib_verbose(0);

test_path = get_absolute_file_path('bug_2085.tst');

currentpath = pwd();

cd TMPDIR;
OS_TMP_DIR = pwd();


mkdir(OS_TMP_DIR,'bug_2085');
TEST_DIR = OS_TMP_DIR + filesep() + 'bug_2085';

copyfile(SCI+'/modules/dynamic_link/tests/nonreg_tests/bug_2085.c' , TEST_DIR + filesep() + 'bug_2085.c');

chdir(TEST_DIR);

files=['bug_2085.c'];
ilib_build('bug',['ex2c_1','intex2c'],files,[]);

// load the shared library 
exec loader.sce;

chdir(currentpath);

//using the new primitive
r = [1,2,3];
nr = [4,5,5];

a = ex2c_1(r+%i*nr);
res = (2 * r) +%i*(nr *3);

assert_checkequal(a, res);

// ulink() all libraries
ulink();

//remove TMP_DIR
rmdir(TEST_DIR,'s');
// =============================================================================
