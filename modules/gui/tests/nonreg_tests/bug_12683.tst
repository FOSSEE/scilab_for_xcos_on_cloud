// =============================================================================
// Scilab ( https://www.scilab.org/ ) - This file is part of Scilab
// Copyright (C) 2014 - Scilab Enterprises - Adeline CARNIS
//
//  This file is distributed under the same license as the Scilab package.
// =============================================================================

// <-- TEST WITH GRAPHIC -->
//
// <-- Non-regression test for bug 12683 -->
//
// <-- GitLab URL -->
// https://gitlab.com/scilab/scilab/-/issues/12683
//
// <-- Short Description -->
// proc_name(k, gwin) was not respected depending on given parameters to addmenu
// function.

addmenu(0,"M1", list(2,"Menu1"));
addmenu(0,"M2", ["a","b"], list(2,"Menu2"));

f = gcf();
expected = "Menu1(1,0)";
res = f.children(2).callback;
assert_checkequal(res, expected);

expected = "Menu2(1,0)";
res = f.children(1).children(2).callback;
assert_checkequal(res, expected);

expected = "Menu2(2,0)";
res = f.children(1).children(1).callback;
assert_checkequal(res, expected);
