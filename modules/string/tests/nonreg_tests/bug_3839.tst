// =============================================================================
// Scilab ( https://www.scilab.org/ ) - This file is part of Scilab
// Copyright (C) 2009 - DIGITEO - Allan CORNET
//
//  This file is distributed under the same license as the Scilab package.
// =============================================================================

// <-- CLI SHELL MODE -->

// <-- Non-regression test for bug 3839 -->
//
// <-- GitLab URL -->
// https://gitlab.com/scilab/scilab/-/issues/3839
//
// Short description:
// strrev doesn't work correctly if the string to be reversed includes some accentuated characters.

rev_ref = "好您界世";
if strrev("世界您好") <> rev_ref then pause,end

rev_ref = "яезаеза";
if strrev("азеазея")  <> rev_ref then pause,end

rev_ref = "ドルーワ・ーロハ";
if strrev("ハロー・ワールド") <> rev_ref then pause,end

rev_ref = "قوقحو تايرح";
if strrev("حريات وحقوق") <> rev_ref then pause,end

rev_ref = "תינכות";
if strrev("תוכנית")  <> rev_ref then pause,end

rev_ref = ["gnirts elpmis a si sihT","ébalics"];
if strrev(['This is a simple string','scilabé']) <> rev_ref then pause,end