// =============================================================================
// Scilab ( https://www.scilab.org/ ) - This file is part of Scilab
// Copyright (C) 2010-2011 - DIGITEO - Michael Baudin
//
//  This file is distributed under the same license as the Scilab package.
// =============================================================================

// <-- CLI SHELL MODE -->

x=[0.2113249 %nan 0.6653811 %nan;0.7560439 0.3303271 0.6283918 %nan];
[nonan,numb]=thrownan(x);
expected = [0.2113249;0.7560439;0.3303271;0.6653811;0.6283918];
assert_checkequal ( nonan , expected );
assert_checkequal ( numb , [1,2,4,5,6] );
//
[nonan,numb]=thrownan([]);
assert_checkequal ( nonan , [] );
assert_checkequal ( numb , [] );

