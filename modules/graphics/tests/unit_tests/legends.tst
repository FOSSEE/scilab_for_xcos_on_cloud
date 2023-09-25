// =============================================================================
// Scilab ( https://www.scilab.org/ ) - This file is part of Scilab
// Copyright (C) 2008 - INRIA - Jean-Baptiste SILVY <jean-baptiste.silvy@inria.fr>
//
//  This file is distributed under the same license as the Scilab package.
// =============================================================================

// <-- TEST WITH GRAPHIC -->

// non regression bug for legends

// used to crash Scilab
f = gcf();
// create a smaller colormap than the default one
f.color_map = jetcolormap(7);

// use legends and badaboom
t=0:0.1:2*%pi;
plot2d(t,[cos(t'),cos(2*t'),cos(3*t')],[-1,2 3]);  
legends(['cos(t)';'cos(2*t)';'cos(3*t)'],[-1,2 3],opt="lr")



