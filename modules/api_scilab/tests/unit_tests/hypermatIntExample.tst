// =============================================================================
// Scilab ( https://www.scilab.org/ ) - This file is part of Scilab
// Copyright (C) 2013 - Scilab Enterprises
//
//  This file is distributed under the same license as the Scilab package.
// =============================================================================

// <-- CLI SHELL MODE -->
ilib_verbose(0);
mkdir(pathconvert(TMPDIR+"/hypermatIntExample"));
cd(pathconvert(TMPDIR+"/hypermatIntExample"));
copyfile(SCI+"/modules/api_scilab/tests/unit_tests/hypermatIntExample.c",pathconvert(TMPDIR+"/hypermatIntExample/hypermatIntExample.c",%F));
ilib_build("gw_hypermatIntExample",["hypermatIntExample","hypermatIntExample"],"hypermatIntExample.c",[],"","","");
exec("loader.sce");

a = matrix(int8(1:6), [1 2 3]);
b = matrix(uint8(1:6), [1 2 3]);
c = matrix(int16(1:6), [1 2 3]);
d = matrix(uint16(1:6), [1 2 3]);
e = matrix(int32(1:6), [1 2 3]);
f = matrix(uint32(1:6), [1 2 3]);
g = matrix(int64(1:6), [1 2 3]);
h = matrix(uint64(1:6), [1 2 3]);

assert_checkequal(hypermatIntExample(a), a);
assert_checkequal(hypermatIntExample(b), b);
assert_checkequal(hypermatIntExample(c), c);
assert_checkequal(hypermatIntExample(d), d);
assert_checkequal(hypermatIntExample(e), e);
assert_checkequal(hypermatIntExample(f), f);
assert_checkequal(hypermatIntExample(g), g);
assert_checkequal(hypermatIntExample(h), h);
