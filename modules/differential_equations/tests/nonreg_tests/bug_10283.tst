// =============================================================================
// Scilab ( http://www.scilab.org/ ) - This file is part of Scilab
// Copyright (C) 2011 - DIGITEO - Cedric Delamarre
//
//  This file is distributed under the same license as the Scilab package.
// =============================================================================
// <-- CLI SHELL MODE -->
//
// <-- Non-regression test for bug 10283 -->
//
// <-- Bugzilla URL -->
//http://bugzilla.scilab.org/show_bug.cgi?id=10283
//
// <-- Short Description -->
// ode crashed when using w and iw arguments,
// because some bad values had been saved in iw at the last execution.


function ydot = f(t,yin)
    ydot(1)=-0.040*yin(1) + 1.0D4*yin(2)*yin(3);
    ydot(3)=3.0D7*yin(2)**2;
    ydot(2)=-ydot(1) - ydot(3);
endfunction

y(1)    = 1;
y(2)    = 0;
y(3)    = 0;
t       = 0;
rtol    = 1.0d-4;
atol(1) = 1.0d-6;
atol(2) = 1.0d-10;
atol(3) = 1.0d-6;
tout    = 0.4*exp((0:11)*log(10));
tout2   = 0.4*exp(12*log(10));
tout3   = 0.4*exp((0:12)*log(10));

[yout w iw] = ode(y, t, tout, rtol, atol, f);
yout2 = ode(y, t, tout2, rtol, atol, f, w, iw);
yout3 = ode(y, t, tout3, rtol, atol, f);

assert_checkalmostequal(yout2, yout3(:,13), %eps, [], "matrix");

