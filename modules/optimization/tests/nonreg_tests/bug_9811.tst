// =============================================================================
// Scilab ( http://www.scilab.org/ ) - This file is part of Scilab
// Copyright (C) 2011 - Ruben Bibas
//
//  This file is distributed under the same license as the Scilab package.
// =============================================================================
// <-- CLI SHELL MODE -->
//
// <-- Non-regression test for bug 9811 -->
//
// <-- Bugzilla URL -->
// http://bugzilla.scilab.org/show_bug.cgi?id=9811
//
// <-- Short Description -->
// fminsearch may produce a warning, but output.message is wrong
//

function y=banana(x)
  y = 100*(x(2)-x(1)^2)^2 + (1-x(1))^2;
endfunction

// regular ending
[x,fval,exitflag,output] = fminsearch ( banana , [-1.2 1] );
assert_checkfalse(isempty(strstr(output.message,"satisfies")));

// maximum number of iterations exceeded
opt = optimset ( "MaxIter" , 10 );
[x,fval,exitflag,output] = fminsearch ( banana , [-1.2 1] , opt );
assert_checkfalse(isempty(strstr(output.message,"iterations")));

// maximum number of funevals exceeded
opt = optimset ( "MaxFunEvals" , 10 );
[x,fval,exitflag,output] = fminsearch ( banana , [-1.2 1] , opt );
assert_checkfalse(isempty(strstr(output.message,"function evaluations")));

// user stop (don't really know what that means)
//opt = optimset ( "MaxFunEvals" , 10 );
//[x,fval,exitflag,output] = fminsearch ( banana , [-1.2 1] , opt );
//test4 = isempty(strstr(output.message,"user stop"));

