// =============================================================================
// Scilab ( https://www.scilab.org/ ) - This file is part of Scilab
// Copyright (C) 2015 - Scilab Enterprises - Antoine ELIAS
//
//  This file is distributed under the same license as the Scilab package.
// =============================================================================
//
// <-- CLI SHELL MODE -->
//
// <-- Non-regression test for bug 13890 -->
//
// <-- GitLab URL -->
// https://gitlab.com/scilab/scilab/-/issues/13890
//
// <-- Short Description -->
// Bug when use getd with a ".sci" file with more than one function

str1 = ["function macro1_1()";
        "    disp(""macro1_1"");";
        "endfunction";
        "";
        "function macro1_2()";
        "    disp(""macro1_2"");";
        "endfunction";
        "";
        "function macro1_3()";
        "    disp(""macro1_3"");";
        "endfunction";
        "";
        "function macro1_4()";
        "    disp(""macro1_4"");";
        "endfunction"];

str2 = ["function macro2_1()";
        "    disp(""macro2_1"");";
        "endfunction";
        "";
        "function macro2_2()";
        "    disp(""macro2_2"");";
        "endfunction";
        "";
        "function macro2_3()";
        "    disp(""macro2_3"");";
        "endfunction";
        "";
        "function macro2_4()";
        "    disp(""macro2_4"");";
        "endfunction"];

mkdir(TMPDIR + "/bug_13890");
mputl(str1, TMPDIR + "/bug_13890/macro1.sci");
mputl(str2, TMPDIR + "/bug_13890/macro2.sci");

assert_checktrue(exists("macro1_1") == 0);
assert_checktrue(exists("macro1_2") == 0);
assert_checktrue(exists("macro1_3") == 0);
assert_checktrue(exists("macro1_4") == 0);

assert_checktrue(exists("macro2_1") == 0);
assert_checktrue(exists("macro2_2") == 0);
assert_checktrue(exists("macro2_3") == 0);
assert_checktrue(exists("macro2_4") == 0);

getd(TMPDIR + "/bug_13890");

assert_checkfalse(exists("macro1_1") == 0);
assert_checkfalse(exists("macro1_2") == 0);
assert_checkfalse(exists("macro1_3") == 0);
assert_checkfalse(exists("macro1_4") == 0);

assert_checkfalse(exists("macro2_1") == 0);
assert_checkfalse(exists("macro2_2") == 0);
assert_checkfalse(exists("macro2_3") == 0);
assert_checkfalse(exists("macro2_4") == 0);
