// =============================================================================
// Scilab ( https://www.scilab.org/ ) - This file is part of Scilab
// Copyright (C) 2013 - Scilab Enterprises - Charlotte HECQUET
//
//  This file is distributed under the same license as the Scilab package.
// =============================================================================
//
// <-- CLI SHELL MODE -->
//
// <-- Non-regression test for bug 8840 -->
//
// <-- GitLab URL -->
// https://gitlab.com/scilab/scilab/-/issues/8840
//
// <-- Short Description -->
// fileparts does not manage matrx of strings

[path,fname,extension] = fileparts([SCI+'/etc/scilab.start', SCI+'/etc/scilab.quit']);
assert_checkequal(path, [pathconvert(SCI+'/etc/',%t,%t), pathconvert(SCI+'/etc/',%t,%t)]);
assert_checkequal(fname, ['scilab', 'scilab']);
assert_checkequal(extension, ['.start', '.quit']);
//===============================
r = fileparts([SCI+'/etc/scilab.start', SCI+'/etc/scilab.quit'],'path');
assert_checkequal(r, [pathconvert(SCI+'/etc/',%t,%f), pathconvert(SCI+'/etc/',%t,%f)]);
//===============================
r = fileparts([SCI+'/etc/scilab.start', SCI+'/etc/scilab.quit'],'fname');
assert_checkequal(r, ['scilab', 'scilab']);
//===============================
r = fileparts([SCI+'/etc/scilab.start', SCI+'/etc/scilab.quit'],'extension');
assert_checkequal(r, ['.start', '.quit']);
