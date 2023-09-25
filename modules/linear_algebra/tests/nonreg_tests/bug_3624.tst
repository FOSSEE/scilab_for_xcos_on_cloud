//<-- CLI SHELL MODE -->
// =============================================================================
// Scilab ( https://www.scilab.org/ ) - This file is part of Scilab
// Copyright (C) 2008 - INRIA - Allan CORNET
//
//  This file is distributed under the same license as the Scilab package.
// =============================================================================

// <-- Non-regression test for bug 3624 -->
//
// <-- GitLab URL -->
// https://gitlab.com/scilab/scilab/-/issues/3624
//
// <-- Short Description -->
// Nan returned when multiplying large zero vector by its transpose.


A=zeros(1000,1);
res = A*A';
if or(isnan(res)<>%f) then pause,end;

