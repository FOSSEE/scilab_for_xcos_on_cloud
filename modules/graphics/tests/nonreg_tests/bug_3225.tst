// =============================================================================
// Scilab ( https://www.scilab.org/ ) - This file is part of Scilab
// Copyright (C) 2008-2008 - INRIA - Jean-Baptiste Silvy
//
//  This file is distributed under the same license as the Scilab package.
// =============================================================================
// <-- TEST WITH GRAPHIC -->
// <-- Non-regression test for bug 3225 -->
//
// <-- GitLab URL -->
// https://gitlab.com/scilab/scilab/-/issues/3225
//
// <-- Short Description -->
// The "symbol" font (number 1) is broken
// 

xstring(0.2,0.2,['abcdefghijklmnopqrstuvwxyz';'ABCDEFGHIJKLMNOPQRSTUVWXYZ']);
e=gce();
e.font_style=1;

// check that greek letters are displayed

