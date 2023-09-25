// =============================================================================
// Scilab ( https://www.scilab.org/ ) - This file is part of Scilab
// Copyright (C) 2012 - Scilab Enterprises - Paul Bignier
//
//  This file is distributed under the same license as the Scilab package.
// =============================================================================
//
// <-- ENGLISH IMPOSED -->
// <-- NO CHECK REF -->
//
// <-- XCOS TEST -->
//

// Import diagram
assert_checktrue(importXcosDiagram("SCI/modules/xcos/tests/unit_tests/Solvers/ODE/Kalman.zcos"));

// Set solver to LSodar + run LSodar + save results
scs_m.props.tol(6) = 0;                                    // Set solver to LSodar
try scicos_simulate(scs_m); catch disp(lasterror()); end; // Run LSodar
lsodarval = res.values;  // Results

// Set solver to CVode BDF/Newton + run + save results
scs_m.props.tol(6) = 1;
try scicos_simulate(scs_m); catch disp(lasterror()); end;
cvval = res.values;

// Compare results
compa = abs(lsodarval-cvval);

// Extract mean, standard deviation, maximum
mea = mean(compa);
[maxi, indexMaxi] = max(compa);
stdeviation = stdev(compa);

// Verifying closeness of the results
assert_checktrue(maxi <= 1d-8);
assert_checktrue(mea <= 1d-8);
assert_checktrue(stdeviation <= 1d-8);


// Import diagram
assert_checktrue(importXcosDiagram("SCI/modules/xcos/tests/unit_tests/Solvers/ODE/Controller.zcos"));

// Set solver to LSodar + run LSodar + save results
scs_m.props.tol(6) = 0;                                    // Set solver to LSodar
try scicos_simulate(scs_m); catch disp(lasterror()); end; // Run LSodar
lsodarval = res.values;  // Results

// Set solver to CVode BDF/Newton + run + save results
scs_m.props.tol(6) = 1;
try scicos_simulate(scs_m); catch disp(lasterror()); end;
cvval = res.values;

// Compare results
compa = abs(lsodarval-cvval);

// Extract mean, standard deviation, maximum
mea = mean(compa);
[maxi, indexMaxi] = max(compa);
stdeviation = stdev(compa);

// Verifying closeness of the results
assert_checktrue(maxi <= 10^-4);
assert_checktrue(mea <= 10^-4);
assert_checktrue(stdeviation <= 10^-4);
