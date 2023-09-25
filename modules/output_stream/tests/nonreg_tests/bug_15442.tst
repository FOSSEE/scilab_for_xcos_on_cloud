// =============================================================================
// Scilab ( https://www.scilab.org/ ) - This file is part of Scilab
// Copyright (C) 2018 - Stéphane MOTTELET
//
//  This file is distributed under the same license as the Scilab package.
// =============================================================================
//
// <-- CLI SHELL MODE -->
// <-- NOT FIXED -->  6.0.2 -> 6.0.2
//
// <-- Non-regression test for bug 15442 -->
//
// <-- GitLab URL -->
// https://gitlab.com/scilab/scilab/-/issues/15442
//
// <-- Short Description -->
// mprintf, msprintf cannot handle uint64 integers > 2^32-1

x=uint64(2)^32;
assert_checkequal(msprintf('%u',x),'0');
assert_checkequal(msprintf('%lu',x),'4294967296');
assert_checkequal(msprintf('%d',x),'0');
assert_checkequal(msprintf('%ld',x),'4294967296');
mprintf('%u\n',x)
mprintf('%lu\n',x)
mprintf('%d\n',x)
mprintf('%ld\n',x)
