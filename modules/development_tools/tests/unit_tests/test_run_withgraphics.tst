// =============================================================================
// Scilab ( https://www.scilab.org/ ) - This file is part of Scilab
// Copyright (C) 2011 - DIGITEO - Michael Baudin
//
//  This file is distributed under the same license as the Scilab package.
// =============================================================================

// <-- TEST WITH GRAPHIC -->

// Checks that this file is launched in graphics mode.
m = getscilabmode();
assert_checkequal(m,"NW");
plot();
