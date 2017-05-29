// =============================================================================
// Scilab ( http://www.scilab.org/ ) - This file is part of Scilab
// Copyright (C) 2012 - S/E - Sylvestre Ledru
//
//  This file is distributed under the same license as the Scilab package.
// =============================================================================

// <-- CLI SHELL MODE -->

filename=TMPDIR+"/test_matfile.mat";

A = rand(10,10);
B = sprand(100,100,0.1);
C = "foo";
D = "bar";
savematfile(filename,'A','B','C','D','-v6');
fd = matfile_open(filename);

[Name, Value, Type] = matfile_varreadnext(fd);
assert_checkequal(Name, "A");
assert_checkequal(Value, A);
assert_checkequal(Type, 6);

[Name, Value, Type] = matfile_varreadnext(fd);
assert_checkequal(Name, "B");
assert_checkequal(Value, B);
assert_checkequal(Type, 5);

[Name, Value, Type] = matfile_varreadnext(fd);
assert_checkequal(Name, "C");
assert_checkequal(Value, "foo");
assert_checkequal(Type, 4);

[Name, Value, Type] = matfile_varreadnext(fd);
assert_checkequal(Name, "D");
assert_checkequal(Value, "bar");
assert_checkequal(Type, 4);

assert_checkequal(matfile_close(fd), %t);