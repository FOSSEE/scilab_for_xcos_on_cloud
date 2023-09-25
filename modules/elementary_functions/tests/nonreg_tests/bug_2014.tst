// =============================================================================
// Scilab ( https://www.scilab.org/ ) - This file is part of Scilab
// Copyright (C) 2006-2008 - INRIA - Serge STEER <serge.steer@inria.fr>
//
//  This file is distributed under the same license as the Scilab package.
// =============================================================================

// <-- CLI SHELL MODE -->

// <-- Non-regression test for bug 2014 -->
//
// <-- GitLab URL -->
// https://gitlab.com/scilab/scilab/-/issues/2014
//
// <-- Short Description -->
//    The function isequal doesn't work properly with list.
//
//    -->a=list("a");b=list("a","b");
//    -->isequal(a,b)
//     ans  =
//
//      T  
//
//    -->isequal(b,a)
//     !--error 21 
//    invalid index
//    at line      10 of function %l_isequal called by :  
//    isequal(b,a)
//
//    I propose this modification of the macro %l_isequal in the file
//    SCI/modules/overloading/macros/%l_isequal.sci :
//
//    1 - function r=%l_isequal(x1,varargin)
//    2 -  narg=size(varargin)
//    3 -  if narg==0 then error('isequal requires at least two input arguments'),end
// ...

l1 = list(1,2,3);
l2 = list(1,2);
l3 = list();

if ~(isequal(l1,l1)) then pause,end
if ~(isequal(l3,l3)) then pause,end
if isequal(l1,l2)    then pause,end
if isequal(l3,l1)    then pause,end
