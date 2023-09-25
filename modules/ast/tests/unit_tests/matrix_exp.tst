// ============================================================================
// Scilab ( https://www.scilab.org/ ) - This file is part of Scilab
// Copyright (C) 2014 - Scilab Enterprises - Calixte DENIZET
//
//  This file is distributed under the same license as the Scilab package.
// ============================================================================
//
// <-- CLI SHELL MODE -->
// <-- ENGLISH IMPOSED -->
//

// Try to take all the branches in run_MatrixExp code...

funcprot(0);
a=[[] []; [] []];
a=[1 2];
a=[1;2];
a=[1 2;];
a=[1 2;3 4];
a=[1 2:4;5:7 3];
a=[1 2:4 [];[] [] 5:7 [] 3];
a=[1 2;sin(3) 4];
assert_checkerror("a=[1 2;3 4 5]", "inconsistent row/column dimensions");
assert_checkerror("a=[1 2;list(3) 4]", msprintf("Undefined operation for the given operands.\n" + "%s", msprintf("check or define function %s for overloading.\n", "%l_c_s")));
function y=%l_c_s(l, x);y=[l(1)+1 x];end
assert_checkequal([1 2;list(3) 4], [1 2;4 4]);
function y=%l_c_s(l, x);y=[l(1) l(1) x];end
assert_checkerror("a=[1 2;list(3) 4]", "inconsistent row/column dimensions");
a=[1 2 3; 7 sprand(1,2,0.5)];
