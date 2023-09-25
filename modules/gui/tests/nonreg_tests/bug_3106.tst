// =============================================================================
// Scilab ( https://www.scilab.org/ ) - This file is part of Scilab
// Copyright (C) 2008 - INRIA - Vincent COUVERT
//
//  This file is distributed under the same license as the Scilab package.
// =============================================================================

// <-- TEST WITH GRAPHIC -->
//
// <-- Non-regression test for bug 3106 -->
//
// <-- GitLab URL -->
// https://gitlab.com/scilab/scilab/-/issues/3106
//
// <-- Short Description -->
//   Pushbutton is badly placed.

f = figure();

my_button = uicontrol("parent"              , f,...
    "style"               , "pushbutton",...
    "string"              , "Max size button",...
    "position"            , [0 0 100 100]);

set(my_button, "Position", [0 0 f.axes_size]);

