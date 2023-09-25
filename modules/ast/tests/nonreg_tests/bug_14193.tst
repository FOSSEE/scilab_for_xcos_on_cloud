// =============================================================================
// Scilab ( https://www.scilab.org/ ) - This file is part of Scilab
// Copyright (C) 2015 - Scilab Enterprises - Calixte Denizet
//
//  This file is distributed under the same license as the Scilab package.
// =============================================================================
//
// <-- CLI SHELL MODE -->
//
// <-- Non-regression test for bug 14193 -->
//
// <-- GitLab URL -->
// https://gitlab.com/scilab/scilab/-/issues/14193
//
// <-- Short Description -->
// Problem with matrix defined in a matrix of structs.

reqType=[struct("name",_("Upper gain limit"),...
"type","gmax",...
"dlgType","table",...
"units",["Hz","dB","dB/Hz"],"defaults",[1 0;10 0])
struct("name",_("Lower gain limit"),...
"type","gmin",...
"dlgType","table",...
"units",["Hz","dB","dB/Hz"],"defaults",[0.1 -10;1 -10])
struct("name",_("Phase margin"),...
"type","pmargin",...
"dlgType","scalar",...
"units","Â°","defaults",20)
struct("name",_("Gain margin"),...
"type","gmargin",...
"dlgType","scalar",...
"units","dB","defaults",30)];
assert_checkequal(reqType(2).defaults, [0.1 -10;1 -10]);