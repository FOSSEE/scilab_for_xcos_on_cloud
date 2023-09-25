// =============================================================================
// Scilab ( https://www.scilab.org/ ) - This file is part of Scilab
// Copyright (C) 2010-2011 - INRIA - Serge Steer
//
//  This file is distributed under the same license as the Scilab package.
// =============================================================================
// <-- CLI SHELL MODE -->
//
// <-- Non-regression test for bug 11452 -->
//
// <-- GitLab URL -->
// https://gitlab.com/scilab/scilab/-/issues/11452
//
// <-- Short Description -->
// diag optional argument in lsqrsolve cannot be used
//

a=[1,7;
2,8
4 3
-1 0.3];
b=[10;11;-1;2];
function y=f1(x, m)
    y=a*x-b;
endfunction

stp=[1.d-10,1.d-10,1.d-5,100,0,100];
Diag=[1;1];
[xsol,v]=lsqrsolve([100;100],f1,4,stp,Diag);

assert_checkalmostequal(xsol,a\b);
