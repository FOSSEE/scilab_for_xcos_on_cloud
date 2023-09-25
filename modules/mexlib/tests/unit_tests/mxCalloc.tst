// ============================================================================
// Scilab ( https://www.scilab.org/ ) - This file is part of Scilab
// Copyright (C) 2017-2017 - Gsoc 2017 - Siddhartha Gairola
//
//  This file is distributed under the same license as the Scilab package.
// ============================================================================

// <-- CLI SHELL MODE -->
// ============================================================================
// Unitary tests for mxCalloc mex function
// ============================================================================

cd(TMPDIR);
ilib_verbose(0);

mputl(["#include ""mex.h""";
"void mexFunction(int nlhs, mxArray *plhs[], int nrhs, mxArray *prhs[])";
"{";
" int *buf = NULL;";
" int check1 = 0;";
" int check2 = 0;";
" int i = 0;";
" if (buf != NULL) {";
"    check1 = 1;";
" }";
" buf = mxCalloc(10, sizeof(int));";
" if (buf != NULL) {";
"    check2 = 1;";
" mexPrintf(""Buffer is Not NULL.\n"");";
" }";
" mxFree(buf);";
" mxArray* pOut1 = mxCreateLogicalScalar(check1);";
" mxArray* pOut2 = mxCreateLogicalScalar(check2);";
" plhs[0] = pOut1;";
" plhs[1] = pOut2;";
"}"],"mxCalloc.c");
ilib_mex_build("libmextest",["mxCalloc","mxCalloc","cmex"], "mxCalloc.c",[]);
exec("loader.sce");

[res1, res2] = mxCalloc();
assert_checkfalse(res1);
assert_checktrue(res2);
