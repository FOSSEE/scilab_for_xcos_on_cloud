//<-- CLI SHELL MODE -->
// =============================================================================
// Scilab ( https://www.scilab.org/ ) - This file is part of Scilab
// Copyright (C) 2010 - DIGITEO - Bernard HUGUENEY
//
//  This file is distributed under the same license as the Scilab package.
// =============================================================================

// <-- Non-regression test for bug 6931 -->
//
// <-- GitLab URL -->
// https://gitlab.com/scilab/scilab/-/issues/6931
//
// <-- Short Description -->
//    Crash when using a name with size > nlgh (=24)
//

A = '';
for i=1:128
  A=A+'t';
  exists(sprintf('%s',A));
end

