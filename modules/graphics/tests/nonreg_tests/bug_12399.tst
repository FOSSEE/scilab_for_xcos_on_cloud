// =============================================================================
// Scilab ( https://www.scilab.org/ ) - This file is part of Scilab
// Copyright (C) 2013-2013 - Scilab Enterprises - Bruno JOFRET
//
//  This file is distributed under the same license as the Scilab package.
// =============================================================================

// <-- TEST WITH GRAPHIC -->

// <-- Non-regression test for bug 12399 -->
//
// <-- GitLab URL -->
// https://gitlab.com/scilab/scilab/-/issues/12399
//
// <-- Short Description -->
// Using plot2d with log scale and limits values may freeze Scilab

plot2d(%inf);
delete(gcf());

plot2d("nl", %inf);
delete(gcf());

plot2d("nl", %nan);
delete(gcf());