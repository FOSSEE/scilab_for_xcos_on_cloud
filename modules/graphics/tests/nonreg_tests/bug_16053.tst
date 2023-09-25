// =============================================================================
// Scilab ( https://www.scilab.org/ ) - This file is part of Scilab
// Copyright (C) 2019 - Samuel GOUGEON
//
//  This file is distributed under the same license as the Scilab package.
// =============================================================================

// <-- TEST WITH GRAPHIC -->

// <-- Non-regression test for bug 16053 -->
//
// <-- GitLab URL -->
// https://gitlab.com/scilab/scilab/-/issues/16053
//
// <-- Short Description -->
// plot() no longer supported standard abbreviated color names

for c = ["r" "g" "GRE" "b" "c" "m" "ma" "y" "Yel" "w" "k"]
	plot(1:10, "color",c)
end
