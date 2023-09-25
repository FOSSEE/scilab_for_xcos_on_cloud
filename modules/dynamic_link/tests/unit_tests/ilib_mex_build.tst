// =============================================================================
// Scilab ( https://www.scilab.org/ ) - This file is part of Scilab
// Copyright (C) ????-2008 - INRIA
// Copyright (C) 2009 - DIGITEO
//
//  This file is distributed under the same license as the Scilab package.
// =============================================================================

// <-- ENGLISH IMPOSED -->
// <-- CLI SHELL MODE -->

ilib_verbose(0);

cd(TMPDIR);

mputl([
'#include ""mex.h""'
'void mexFunction(int nlhs, mxArray *plhs[], int nrhs, mxArray *prhs[])'
'{'
'  int *dims = mxGetDimensions(prhs[0]);'
'  sciprint(""%d %d %d\n"",dims[0],dims[1],dims[2]);'
'}'
],'mexfunction16.c');

ilib_mex_build('libmex2',['mexf16','mexfunction16','cmex'],['mexfunction16.c'],[],'','','','');

exec(TMPDIR+'/loader.sce');
mexf16(rand(2,3,2));


