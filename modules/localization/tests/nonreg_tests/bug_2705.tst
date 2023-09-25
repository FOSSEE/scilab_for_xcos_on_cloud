//<-- CLI SHELL MODE -->
// =============================================================================
// Scilab ( https://www.scilab.org/ ) - This file is part of Scilab
// Copyright (C) 2007-2008 - INRIA - Allan CORNET
//
//  This file is distributed under the same license as the Scilab package.
// =============================================================================

// <-- Non-regression test for bug 2705 -->
//
// <-- GitLab URL -->
// https://gitlab.com/scilab/scilab/-/issues/2705
//
// <-- Short Description -->
//    getlanguage(), under Windows, returns "Frenc" or "Engli" instead of fr_FR or en_US.
//
LANG = getlanguage();
if length(LANG) <> 5 then pause,end

TOK = tokens(LANG,'_');
if size(TOK,'*') <> 2 then pause,end

if length(TOK(1)) <> 2 then pause,end

if length(TOK(2)) <> 2 then pause,end

if (LANG == "Frenc") | (LANG == "Engli") then pause,end

