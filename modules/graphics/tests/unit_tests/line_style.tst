// =============================================================================
// Scilab ( https://www.scilab.org/ ) - This file is part of Scilab
// Copyright (C) 2010 - DIGITEO - pierre.lando@scilab.org
// Copyright (C) 2013 - Scilab Enterprises - Calixte DENIZET
//
// This file is distributed under the same license as the Scilab package.
// =============================================================================

// <-- TEST WITH GRAPHIC -->
//
//

// <-- Short Description -->
//   Check line_style correctness

// Try this :

for i = [1:10] do
    plot([i,i]);
    e=gce();
    e=e.children();
    e.line_style = i;
end

// check that you have bottom to up : dash, dash dot, longdash dot, bigdash dot, bigdash longdash, dot, double dot, longblank dot, bigblank dot.
