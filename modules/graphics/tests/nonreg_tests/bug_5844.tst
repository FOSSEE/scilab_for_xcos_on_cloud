// =============================================================================
// Scilab ( https://www.scilab.org/ ) - This file is part of Scilab
// Copyright (C) 2014 - Scilab Enterprises - Calixte DENIZET
//
//  This file is distributed under the same license as the Scilab package.
// =============================================================================

// <-- TEST WITH GRAPHIC -->

// <-- Non-regression test for bug 5844 -->
//
// <-- GitLab URL -->
// https://gitlab.com/scilab/scilab/-/issues/5844
//
// <-- Short Description -->
// grayplot had not a logflag option

x=1:10;
y=1:10;
m=rand(10,10);
grayplot(x,y,m,logflag="ll")