// =============================================================================
// Scilab ( https://www.scilab.org/ ) - This file is part of Scilab
// Copyright (C) 2010-2011 - DIGITEO - Michael Baudin
//
//  This file is distributed under the same license as the Scilab package.
// =============================================================================
// <-- CLI SHELL MODE -->
//
// <-- Non-regression test for bug 8727 -->
//
// <-- GitLab URL -->
// https://gitlab.com/scilab/scilab/-/issues/8727
//
// <-- Short Description -->
// The karmarkar function requires the initial guess x0.
//




n=11;
Aeq = zeros(n,n+2);
Aeq(:,1) = 2*linspace(0,1,n)';
Aeq(:,2) = ones(11,1);
Aeq(1:n,3:n+2) = eye(n,n);
beq = 1 + linspace(0,1,n)'.^2;
c=[-1;-1;zeros(n,1)];
xopt=karmarkar(Aeq,beq,c);

xstar  = [ 
    0.5041940  
    0.7457937  
    0.2542063  
    0.1633675  
    0.0925287  
    0.0416899  
    0.0108511  
    0.0000123  
    0.0091735  
    0.0383347  
    0.0874959  
    0.1566571  
    0.2458183  
];
assert_checkalmostequal ( xopt , xstar , 1.e-6, 1.e-6 );

