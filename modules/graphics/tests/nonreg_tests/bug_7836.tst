// =============================================================================
// Scilab ( https://www.scilab.org/ ) - This file is part of Scilab
// Copyright (C) 2010 - DIGITEO - Manuel Juliachs
//
//  This file is distributed under the same license as the Scilab package.
// =============================================================================

// <-- TEST WITH GRAPHIC -->

// <-- Non-regression test for bug 7836 -->
//
// <-- GitLab URL -->
// https://gitlab.com/scilab/scilab/-/issues/7836
//
// <-- Short Description -->
// The sub_ticks property does not correctly track the number of
// sub-ticks when switching scale.
//

x = logspace(-1,1,100);
y = 1 ./ x;
scf();
plot(x,y);
a = gca();

formerSubticks = a.sub_ticks;

a.log_flags = 'lln'; // switch to log scale

// sub_ticks should have changed due to the switch to log scale.
if (a.sub_ticks(1) == formerSubticks(1) | a.sub_ticks(2) == formerSubticks(2)) then pause; end;

