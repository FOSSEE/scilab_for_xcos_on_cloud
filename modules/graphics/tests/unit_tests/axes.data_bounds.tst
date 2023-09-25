// =============================================================================
// Scilab ( https://www.scilab.org/ ) - This file is part of Scilab
// Copyright (C) 2012 - Scilab Enterprises - Cedric Delamarre
//
//  This file is distributed under the same license as the Scilab package.
// =============================================================================

// <-- TEST WITH GRAPHIC -->

// gca function set the firstPlot flag to false
// then plot2d merge the data bounds set and computed.

t=linspace(0,%pi,20);
a=gca();a.data_bounds=[t(1) -1.8;t($) 1.8];
dataBounds = a.data_bounds;
plot2d(t,[cos(t'),cos(2*t'),cos(3*t')],[-5,2 3]);

assert_checkequal(a.data_bounds, dataBounds);

