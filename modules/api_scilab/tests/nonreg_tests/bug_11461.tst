// =============================================================================
// Scilab ( https://www.scilab.org/ ) - This file is part of Scilab
// Copyright (C) 2012 - Scilab Enterprises - Antoine ELIAS
//
//  This file is distributed under the same license as the Scilab package.
// =============================================================================
// <-- CLI SHELL MODE -->
//
// <-- Non-regression test for bug 11461 -->
//
// <-- GitLab URL -->
// https://gitlab.com/scilab/scilab/-/issues/11461
//
// <-- Short Description -->
//
//  api_list was not able to create lists and sub lists with undefined items

listRef = list();
listRef(1) = 1;
listRef(4) = list(1,2,3);
listRef(5) = 1;
myList = listRef;
save(TMPDIR + "/test.sod", "myList");
clear myList;
load(TMPDIR + "/test.sod");
assert_checkequal(listRef, myList);

