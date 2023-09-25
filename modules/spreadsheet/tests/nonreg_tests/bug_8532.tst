// =============================================================================
// Scilab ( https://www.scilab.org/ ) - This file is part of Scilab
// Copyright (C) 2010 - DIGITEO - Allan CORNET
//
//  This file is distributed under the same license as the Scilab package.
// =============================================================================
// 
// <-- CLI SHELL MODE -->
//
// <-- Non-regression test for bug 8532 -->
//
// <-- GitLab URL -->
// https://gitlab.com/scilab/scilab/-/issues/8532
//
// <-- Short Description -->
// size of input arguments of read_csv was no verified.
//

A = 1:50;
mputl(strcat(string(A),ascii(9)+" "), TMPDIR + '/foo.csv');

if execstr("B = read_csv(TMPDIR + ""/foo.csv"", ["" "", ""\t""]);", "errcatch") <> 999 then pause, end
msg = lasterror();
if msg <> msprintf(gettext("%s: Wrong size for input argument #%d: string expected.\n"), "read_csv", 2) then pause, end

if execstr("B1 = read_csv(TMPDIR + ""/foo.csv"", ""\t"");", "errcatch") <> 0 then pause, end
assert_checkequal(A,evstr(B1));

