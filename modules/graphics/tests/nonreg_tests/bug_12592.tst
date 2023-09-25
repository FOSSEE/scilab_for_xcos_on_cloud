// =============================================================================
// Scilab ( https://www.scilab.org/ ) - This file is part of Scilab
// Copyright (C) 2013 - Scilab Enterprises - Calixte DENIZET
//
//  This file is distributed under the same license as the Scilab package.
// =============================================================================

// <-- TEST WITH GRAPHIC -->

// <-- Non-regression test for bug 12592 -->
//
// <-- GitLab URL -->
// https://gitlab.com/scilab/scilab/-/issues/12592
//
// <-- Short Description -->
// Scilab hung with plot(-0)

f = gcf();
plot(-0);
delete(f);