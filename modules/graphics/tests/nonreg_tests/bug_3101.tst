// =============================================================================
// Scilab ( https://www.scilab.org/ ) - This file is part of Scilab
// Copyright (C) 2009-2009 - Digiteo - Allan CORNET
//
//  This file is distributed under the same license as the Scilab package.
// =============================================================================

// <-- TEST WITH GRAPHIC -->

// <-- Non-regression test for bug 3101 -->
//
// <-- GitLab URL -->
// https://gitlab.com/scilab/scilab/-/issues/3101
//
// <-- Short Description -->
// plot3d() => seg fault, occurs rarely.
// 

for i=1:100,
  plot3d();
end

// should not crash
