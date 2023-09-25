// =============================================================================
// Scilab ( https://www.scilab.org/ ) - This file is part of Scilab
// Copyright (C) 2008 - INRIA - Pierre MARECHAL <pierre.marechal@inria.fr>
//
//  This file is distributed under the same license as the Scilab package.
// =============================================================================

// <-- CLI SHELL MODE -->

// <-- Non-regression test for bug 2786 -->
//
// <-- GitLab URL -->
// https://gitlab.com/scilab/scilab/-/issues/2786
//
// <-- Short Description -->
//    There are two calendar functions with uncompatible syntaxes :
//    Calendar(m,y) calendar(y,m) Only calendar appears in the online help


cal_ref = [ 0 0 0 0 0 1 2 ; 3 4 5 6 7 8 9 ; 10 11 12 13 14 15 16 ; 17 18 19 20 21 22 23 ; 24 25 26 27 28 29 30 ; 31 0 0 0 0 0 0 ];
if or(Calendar(2008,3) <> cal_ref) then pause, end
