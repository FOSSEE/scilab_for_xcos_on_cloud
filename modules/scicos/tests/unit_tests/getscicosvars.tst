// =============================================================================
// Scilab ( https://www.scilab.org/ ) - This file is part of Scilab
// Copyright (C) 2015 - Scilab Enterprises - Paul Bignier
// Copyright (C) ????-2008 - INRIA
//
//  This file is distributed under the same license as the Scilab package.
// =============================================================================
//
// <-- CLI SHELL MODE -->

refMsg = msprintf(_("%s: scicosim is not running.\n"), "getscicosvars");
assert_checkerror("getscicosvars([""x"" ""blocks""])", refMsg);
