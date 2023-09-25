// Scilab ( https://www.scilab.org/ ) - This file is part of Scilab
// Copyright (C) 2008-2009 - INRIA - Michael Baudin
// Copyright (C) 2011 - DIGITEO - Michael Baudin
//
// Copyright (C) 2012 - 2016 - Scilab Enterprises
//
// This file is hereby licensed under the terms of the GNU GPL v2.0,
// pursuant to article 5.3.4 of the CeCILL v.2.1.
// This file was originally licensed under the terms of the CeCILL v2.1,
// and continues to be available under such terms.
// For more information, see the COPYING file which you should have received
// along with this program.

// <-- CLI SHELL MODE -->


function y = rosenbrock (x)
  y = 100*(x(2)-x(1)^2)^2 + (1-x(1))^2;
endfunction

//
// Test optimsimplex_sort
//
s1 = optimsimplex_new ();
s1 = optimsimplex_setn(s1,2);
s1 = optimsimplex_setnbve(s1,3);
newsimplex = [
    1.    2.  
    3.    4.  
    5.    6.  
];
s1 = optimsimplex_setallx ( s1 , newsimplex );
s1 = optimsimplex_setallfv ( s1 , [5.0 2.0 1.0]' );
s1 = optimsimplex_sort ( s1 );
ve1 = optimsimplex_getve ( s1 , 1 );
assert_checkequal ( ve1.n , 2 );
assert_checkequal ( ve1.x , [5.0 6.0] );
assert_checkequal ( ve1.fv , 1.0 );
ve1 = optimsimplex_getve ( s1 , 2 );
assert_checkequal ( ve1.n , 2 );
assert_checkequal ( ve1.x , [3.0 4.0] );
assert_checkequal ( ve1.fv , 2.0 );
ve1 = optimsimplex_getve ( s1 , 3 );
assert_checkequal ( ve1.n , 2 );
assert_checkequal ( ve1.x , [1.0 2.0] );
assert_checkequal ( ve1.fv , 5.0 );
s1 = optimsimplex_destroy ( s1 );

