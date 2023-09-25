// ============================================================================
// Scilab ( https://www.scilab.org/ ) - This file is part of Scilab
// Copyright (C) 2011-2011 - Gsoc 2011 - Iuri SILVIO
//
//  This file is distributed under the same license as the Scilab package.
// ============================================================================

// <-- CLI SHELL MODE -->
// ============================================================================
// Unitary tests for mexEvalString mex functions
// ============================================================================

cd(TMPDIR);
ilib_verbose(0);
mputl(["#include ""mex.h""";
"void mexFunction(int nlhs, mxArray *plhs[], int nrhs, mxArray *prhs[])";
"{";
"    char *string = mxArrayToString(prhs[0]);";
"    plhs[0] = mxCreateDoubleScalar(mexEvalString(string));";
"}"],"mexevalString.c");
ilib_mex_build("libmextest",["evalString","mexevalString","cmex"], "mexevalString.c",[]);
exec("loader.sce");

r = evalString("printf ""mexEvalString works!\n"";");
assert_checkequal(r, 0);

global a;
r = evalString("a = 1;");
assert_checkequal(a, 1);
assert_checkequal(r, 0);

r = evalString("b =;");
assert_checkequal(r, 1);
