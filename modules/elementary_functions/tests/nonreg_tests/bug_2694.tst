// =============================================================================
// Scilab ( https://www.scilab.org/ ) - This file is part of Scilab
// Copyright (C) 2006-2008 - INRIA - Pierre MARECHAL <pierre.marechal@inria.fr>
//
//  This file is distributed under the same license as the Scilab package.
// =============================================================================

// <-- CLI SHELL MODE -->

// <-- Non-regression test for bug 2694 -->
//
// <-- GitLab URL -->
// https://gitlab.com/scilab/scilab/-/issues/2694
//
// <-- Short Description -->
//   bitget() only support unsigned integers. This function has to be extended
//   to all positive integers.

if execstr("bitget(12,2);","errcatch") <> 0 then pause,end
