// =============================================================================
// Scilab ( http://www.scilab.org/ ) - This file is part of Scilab
// Copyright (C) 2010 - Calixte DENIZET
//
//  This file is distributed under the same license as the Scilab package.
// =============================================================================

// <-- CLI SHELL MODE -->

// <-- Non-regression test for bug 8412 -->
//
// <-- Bugzilla URL -->
// http://bugzilla.scilab.org/8412
//
// <-- Short Description -->
// find did not return correct values with big vector

stacksize(100000000);
A=rand(19200000,1);

i=[10336001, ..
   13716001, ..
   15400001, ..
   15402001, ..
   18278001, ..
   18762001, ..
   19198001];

A(i) = %nan;   
A(isnan(A) == %T);
R = find(isnan(A));
B=A(R);
if ~isnan(B($)) then pause,end