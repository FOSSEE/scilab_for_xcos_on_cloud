// =============================================================================
// Scilab ( https://www.scilab.org/ ) - This file is part of Scilab
// Copyright (C) 2010 - DIGITEO - Allan CORNET
//
//  This file is distributed under the same license as the Scilab package.
// =============================================================================
//
// <-- Non-regression test for bug 8077 -->
//
// <-- CLI SHELL MODE -->
// 
// <-- GitLab URL -->
// https://gitlab.com/scilab/scilab/-/issues/8077
//
// <-- Short Description -->
// browsevar, scinotes, xcos functions were not disabled in -nwni mode on Linux and MacOS X.

if execstr("browsevar()", "errcatch") <> 999 then pause,end
if execstr("editvar()", "errcatch") <> 999 then pause,end
if execstr("scinotes()", "errcatch") <> 999 then pause,end
if execstr("xcos()", "errcatch") <> 999 then pause,end

