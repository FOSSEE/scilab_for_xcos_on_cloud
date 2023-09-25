// =============================================================================
// Scilab ( https://www.scilab.org/ ) - This file is part of Scilab
// Copyright (C) 2008-2008 - INRIA - Jean-Baptiste Silvy
//
//  This file is distributed under the same license as the Scilab package.
// =============================================================================

// <-- TEST WITH GRAPHIC -->
// <-- NO CHECK REF -->

// <-- Non-regression test for bug 2124 -->
//
// <-- GitLab URL -->
// https://gitlab.com/scilab/scilab/-/issues/2124
//
// <-- Short Description -->
// Gif files generated by Scilab seem to contains some errors.

plot2d;

fig = gcf();
xs2gif(fig.figure_id,TMPDIR+'/foo.gif') ;

// open the exported fig and check that there is no warnings.
close(winsid());

