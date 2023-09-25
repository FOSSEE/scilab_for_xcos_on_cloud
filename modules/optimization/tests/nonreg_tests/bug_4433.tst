// =============================================================================
// Scilab ( https://www.scilab.org/ ) - This file is part of Scilab
// Copyright (C) 2009 - DIGITEO - Allan CORNET
//
//  This file is distributed under the same license as the Scilab package.
// =============================================================================

// <-- CLI SHELL MODE -->

// <-- Non-regression test for bug 4433 -->
//
// <-- GitLab URL -->
// https://gitlab.com/scilab/scilab/-/issues/4433
//
// <-- Short Description -->
// problem using optim. On some examples, the optim function makes scilab hangs.
// =============================================================================
for i=1:10
    deff("[y,dy,iprint] = testfunc(x,iprint)","y=sum(x.^2); dy = 2*x;");
    x0=40*ones(100,1);
    [f,xo]=optim(testfunc,x0,algo="gc",iprint=0);
end
// =============================================================================
