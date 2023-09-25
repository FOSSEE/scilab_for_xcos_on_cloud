// =============================================================================
// Scilab ( https://www.scilab.org/ ) - This file is part of Scilab
// Copyright (C) 2012 - Scilab Enterprises - Adeline CARNIS
//
//  This file is distributed under the same license as the Scilab package.
// =============================================================================

// <-- CLI SHELL MODE -->

// unit tests for eigs function
// =============================================================================

// Interface
// =========
assert_checkfalse(execstr("eigs()"   ,"errcatch") == 0);
refMsg = msprintf(_("%s : Wrong number of input arguments : %d to %d expected.\n"), "eigs", 1, 6);
assert_checkerror("eigs()", refMsg);

assert_checkfalse(execstr("eigs(1)","errcatch") == 0);
refMsg = msprintf(_("%s: Wrong type for input argument #%d: A square matrix expected.\n"), "eigs", 1);
assert_checkerror("eigs(1)", refMsg);

assert_checkfalse(execstr("eigs([])", "errcatch") == 0);
refMsg = msprintf(_("%s: Wrong type for input argument #%d: A full or sparse square matrix or a function expected"), "eigs", 1);
assert_checkerror("eigs([])", refMsg);

assert_checkfalse(execstr("eigs(%nan)", "errcatch") == 0);
refMsg = msprintf(_("%s: Wrong type for input argument #%d: A square matrix expected.\n"), "eigs", 1);
assert_checkerror("eigs(%nan)", refMsg);

assert_checkfalse(execstr("eigs(%inf)", "errcatch") == 0);
refMsg = msprintf(_("%s: Wrong type for input argument #%d: A square matrix expected.\n"), "eigs", 1);
assert_checkerror("eigs(%inf)", refMsg);

assert_checkfalse(execstr("eigs(%eps)", "errcatch") == 0);
refMsg = msprintf(_("%s: Wrong type for input argument #%d: A square matrix expected.\n"), "eigs", 1);
assert_checkerror("eigs(%eps)", refMsg);

assert_checkfalse(execstr("eigs([%f %f])", "errcatch") == 0);
refMsg = msprintf(_("%s: Wrong type for input argument #%d: A full or sparse square matrix or a function expected"), "eigs", 1);
assert_checkerror("eigs([%f %f])", refMsg);

assert_checkfalse(execstr("eigs(sparse([%f %f]))", "errcatch") == 0);
refMsg = msprintf(_("%s: Wrong type for input argument #%d: A full or sparse square matrix or a function expected"), "eigs", 1);
assert_checkerror("eigs(sparse([%f %f]))", refMsg);

assert_checkfalse(execstr("eigs([1 2])", "errcatch") == 0);
refMsg = msprintf(_("%s: Wrong type for input argument #%d: A square matrix expected.\n"), "eigs", 1);
assert_checkerror("eigs([1 2])", refMsg);

assert_checkfalse(execstr("eigs([1; 2])", "errcatch") == 0);
refMsg = msprintf(_("%s: Wrong type for input argument #%d: A square matrix expected.\n"), "eigs", 1);
assert_checkerror("eigs([1; 2])", refMsg);

assert_checkfalse(execstr("eigs(sparse([1 2]))", "errcatch") == 0);
refMsg = msprintf(_("%s: Wrong type for input argument #%d: A square matrix expected.\n"), "eigs", 1);
assert_checkerror("eigs(sparse([1 2]))", refMsg);

assert_checkfalse(execstr("eigs(sparse([1; 2]))", "errcatch") == 0);
refMsg = msprintf(_("%s: Wrong type for input argument #%d: A square matrix expected.\n"), "eigs", 1);
assert_checkerror("eigs(sparse([1; 2]))", refMsg);


n = 20;
A            = diag(10*ones(n,1));
A(1:$-1,2:$) = A(1:$-1,2:$) + diag(6*ones(n-1,1));
A(2:$,1:$-1) = A(2:$,1:$-1) + diag(6*ones(n-1,1));

assert_checkfalse(execstr("eigs(A, %f)", "errcatch") == 0);
refMsg = msprintf(_("%s: Wrong type for input argument #%d: An empty matrix or full or sparse square matrix expected.\n"), "eigs", 2);
assert_checkerror("eigs(A, %f)", refMsg);

assert_checkfalse(execstr("eigs(A, %nan)", "errcatch") == 0);
refMsg = msprintf(_("%s: Wrong dimension for input argument #%d: B must have the same size as A.\n"), "eigs", 2);
assert_checkerror("eigs(A, %nan)", refMsg);

assert_checkfalse(execstr("eigs(A, %inf)", "errcatch") == 0);
refMsg = msprintf(_("%s: Wrong dimension for input argument #%d: B must have the same size as A.\n"), "eigs", 2);
assert_checkerror("eigs(A, %inf)", refMsg);

assert_checkfalse(execstr("eigs(A, %eps)", "errcatch") == 0);
refMsg = msprintf(_("%s: Wrong dimension for input argument #%d: B must have the same size as A.\n"), "eigs", 2);
assert_checkerror("eigs(A, %eps)", refMsg);

assert_checkfalse(execstr("eigs(sparse(A), %f)", "errcatch") == 0);
refMsg = msprintf(_("%s: Wrong type for input argument #%d: An empty matrix or full or sparse square matrix expected.\n"), "eigs", 2);
assert_checkerror("eigs(sparse(A), %f)", refMsg);

assert_checkfalse(execstr("eigs(sparse(A), %nan)", "errcatch") == 0);
refMsg = msprintf(_("%s: Wrong dimension for input argument #%d: B must have the same size as A.\n"), "eigs", 2);
assert_checkerror("eigs(sparse(A), %nan)", refMsg);

assert_checkfalse(execstr("eigs(sparse(A), %inf)", "errcatch") == 0);
refMsg = msprintf(_("%s: Wrong dimension for input argument #%d: B must have the same size as A.\n"), "eigs", 2);
assert_checkerror("eigs(sparse(A), %inf)", refMsg);

assert_checkfalse(execstr("eigs(sparse(A), %eps)", "errcatch") == 0);
refMsg = msprintf(_("%s: Wrong dimension for input argument #%d: B must have the same size as A.\n"), "eigs", 2);
assert_checkerror("eigs(sparse(A), %eps)", refMsg);

assert_checkfalse(execstr("eigs(A,[1 2])", "errcatch") == 0);
refMsg = msprintf(_("%s: Wrong dimension for input argument #%d: B must have the same size as A.\n"), "eigs", 2);
assert_checkerror("eigs(A,[1 2])", refMsg);

assert_checkfalse(execstr("eigs(A,[1;2])", "errcatch") == 0);
refMsg = msprintf(_("%s: Wrong dimension for input argument #%d: B must have the same size as A.\n"), "eigs", 2);
assert_checkerror("eigs(A,[1;2])", refMsg);

assert_checkfalse(execstr("eigs(sparse(A), [1 2])", "errcatch") == 0);
refMsg = msprintf(_("%s: Wrong dimension for input argument #%d: B must have the same size as A.\n"), "eigs", 2);
assert_checkerror("eigs(sparse(A), [1 2])", refMsg);

assert_checkfalse(execstr("eigs(sparse(A), [1;2])", "errcatch") == 0);
refMsg = msprintf(_("%s: Wrong dimension for input argument #%d: B must have the same size as A.\n"), "eigs", 2);
assert_checkerror("eigs(sparse(A), [1;2])", refMsg);


assert_checkfalse(execstr("eigs(A, [], [])", "errcatch") == 0);
refMsg = msprintf(_("%s: Wrong type for input argument #%d: A scalar expected.\n"), "eigs", 3);
assert_checkerror("eigs(A, [], [])", refMsg);

assert_checkfalse(execstr("eigs(A, [], %f)", "errcatch") == 0);
refMsg = msprintf(_("%s: Wrong type for input argument #%d: A scalar expected.\n"), "eigs", 3);
assert_checkerror("eigs(A, [], %f)", refMsg);

assert_checkfalse(execstr("eigs(A, [], 2*%i)", "errcatch") == 0);
refMsg = msprintf(_("%s: Wrong type for input argument #%d: A scalar expected.\n"), "eigs", 3);
assert_checkerror("eigs(A, [], 2*%i)", refMsg);

assert_checkfalse(execstr("eigs(A, [], -15)", "errcatch") == 0);
refMsg = msprintf(_("%s: Wrong type for input argument #%d: k must be a positive integer.\n"), "eigs", 3);
assert_checkerror("eigs(A, [], -15)", refMsg);

assert_checkfalse(execstr("eigs(A, [], 5.6)", "errcatch") == 0);
refMsg = msprintf(_("%s: Wrong type for input argument #%d: k must be a positive integer.\n"), "eigs", 3);
assert_checkerror("eigs(A, [], 5.6)", refMsg);

assert_checkfalse(execstr("eigs(A, [], [1 2])", "errcatch") == 0);
refMsg = msprintf(_("%s: Wrong type for input argument #%d: A scalar expected.\n"), "eigs", 3);
assert_checkerror("eigs(A, [], [1 2])", refMsg);

assert_checkfalse(execstr("eigs(A, [], %nan)", "errcatch") == 0);
refMsg = msprintf(_("%s: Wrong type for input argument #%d: k must be a positive integer.\n"), "eigs", 3);
assert_checkerror("eigs(A, [], %nan)", refMsg);

assert_checkfalse(execstr("eigs(A, [], %eps)", "errcatch") == 0);
refMsg = msprintf(_("%s: Wrong type for input argument #%d: k must be a positive integer.\n"), "eigs", 3);
assert_checkerror("eigs(A, [], %eps)", refMsg);

assert_checkfalse(execstr("eigs(A, [], %inf)", "errcatch") == 0);
refMsg = msprintf(_("%s: Wrong value for input argument #%d: k must be in the range 1 to N.\n"), "eigs", 3);
assert_checkerror("eigs(A, [], %inf)", refMsg);

assert_checkfalse(execstr("eigs(sparse(A), [], %f)", "errcatch") == 0);
refMsg = msprintf(_("%s: Wrong type for input argument #%d: A scalar expected.\n"), "eigs", 3);
assert_checkerror("eigs(sparse(A), [], %f)", refMsg);

assert_checkfalse(execstr("eigs(sparse(A), [], 2*%i)", "errcatch") == 0);
refMsg = msprintf(_("%s: Wrong type for input argument #%d: A scalar expected.\n"), "eigs", 3);
assert_checkerror("eigs(sparse(A), [], 2*%i)", refMsg);

assert_checkfalse(execstr("eigs(sparse(A), [], -15)", "errcatch") == 0);
refMsg = msprintf(_("%s: Wrong type for input argument #%d: k must be a positive integer.\n"), "eigs", 3);
assert_checkerror("eigs(sparse(A), [], -15)", refMsg);

assert_checkfalse(execstr("eigs(sparse(A), [], 5.6)", "errcatch") == 0);
refMsg = msprintf(_("%s: Wrong type for input argument #%d: k must be a positive integer.\n"), "eigs", 3);
assert_checkerror("eigs(sparse(A), [], 5.6)", refMsg);

assert_checkfalse(execstr("eigs(sparse(A), [], [1 2])", "errcatch") == 0);
refMsg = msprintf(_("%s: Wrong type for input argument #%d: A scalar expected.\n"), "eigs", 3);
assert_checkerror("eigs(sparse(A), [], [1 2])", refMsg);

assert_checkfalse(execstr("eigs(A, [], 4, [])", "errcatch") == 0);
refMsg = msprintf(_("%s: Wrong type for input argument #%d: A scalar expected.\n"), "eigs", 4);
assert_checkerror("eigs(A, [], 4, [])", refMsg);

assert_checkfalse(execstr("eigs(A, [], 4, %nan)", "errcatch") == 0);
refMsg = msprintf(_("%s: Wrong type for input argument #%d: sigma must be a real.\n"), "eigs", 4);
assert_checkerror("eigs(A, [], 4, %nan)", refMsg);

assert_checkfalse(execstr("eigs(A, [], 4, %f)", "errcatch") == 0);
refMsg = msprintf(_("%s: Wrong type for input argument #%d: A scalar expected.\n"), "eigs", 4);
assert_checkerror("eigs(A, [], 4, %f)", refMsg);

assert_checkfalse(execstr("eigs(sparse(A), [], 4, [])", "errcatch") == 0);
refMsg = msprintf(_("%s: Wrong type for input argument #%d: A scalar expected.\n"), "eigs", 4);
assert_checkerror("eigs(sparse(A), [], 4, [])", refMsg);

assert_checkfalse(execstr("eigs(sparse(A), [], 4, %nan)", "errcatch") == 0);
refMsg = msprintf(_("%s: Wrong type for input argument #%d: A scalar expected.\n"), "eigs", 4);
assert_checkerror("eigs(sparse(A), [], 4, %nan)", refMsg);

assert_checkfalse(execstr("eigs(sparse(A), [], 4, %f)", "errcatch") == 0);
refMsg = msprintf(_("%s: Wrong type for input argument #%d: a real scalar or a string expected.\n"), "eigs", 4);
assert_checkerror("eigs(sparse(A), [], 4, %f)", refMsg);

which = "ahh";
assert_checkfalse(execstr("eigs(A, [], 4, which)", "errcatch") == 0);
refMsg = msprintf(_("%s: Wrong value for input argument #%d: Unrecognized sigma value.\n Sigma must be one of ''%s'', ''%s'', ''%s'', ''%s'' or ''%s''.\n"), "eigs", 4, "LM", "SM", "LA", "SA", "BE");
assert_checkerror("eigs(A, [], 4, which)", refMsg);

assert_checkfalse(execstr("eigs(sparse(A), [], 4, which)", "errcatch") == 0);
refMsg = msprintf(_("%s: Wrong value for input argument #%d: Unrecognized sigma value.\n Sigma must be one of ''%s'', ''%s'', ''%s'', ''%s'' or ''%s''.\n"), "eigs", 4, "LM", "SM", "LA", "SA", "BE");
assert_checkerror("eigs(sparse(A), [], 4, which)", refMsg);

which = "LM";
assert_checkfalse(execstr("eigs(A, [], 4, which ,%nan)", "errcatch") == 0);
refMsg = msprintf(_("%s: Wrong type for input argument #%d: A structure expected"), "eigs", 5);
assert_checkerror("eigs(A, [], 4, which ,%nan)", refMsg);

assert_checkfalse(execstr("eigs(sparse(A), [], 4, which ,%nan)", "errcatch") == 0);
refMsg = msprintf(_("%s: Wrong type for input argument #%d: A structure expected"), "eigs", 5);
assert_checkerror("eigs(sparse(A), [], 4, which, %nan)", refMsg);

opts.var = %nan;
assert_checkfalse(execstr("eigs(A, [], 4, which ,opts)", "errcatch") == 0);
refMsg = msprintf(_("%s: Wrong type for input argument: If A is a matrix, use opts with tol, maxiter, ncv, resid, cholB"), "eigs");
assert_checkerror("eigs(A, [], 4, which, opts)", refMsg);

assert_checkfalse(execstr("eigs(sparse(A), [], 4, which ,opts)", "errcatch") == 0);
refMsg = msprintf(_("%s: Wrong type for input argument: If A is a matrix, use opts with tol, maxiter, ncv, resid, cholB"), "eigs");
assert_checkerror("eigs(sparse(A), [], 4, which, opts)", refMsg);

clear opts
opts.maxiter  = [];
assert_checkfalse(execstr("eigs(A, [], 4, which ,opts)", "errcatch") == 0);
refMsg = msprintf(_("%s: Wrong type for input argument #%d: %s must be a scalar.\n"), "eigs", 5, "opts.maxiter");
assert_checkerror("eigs(A, [], 4, which, opts)", refMsg);

assert_checkfalse(execstr("eigs(sparse(A), [], 4, which ,opts)", "errcatch") == 0);
refMsg = msprintf(_("%s: Wrong type for input argument #%d: %s must be a scalar.\n"), "eigs", 5, "opts.maxiter");
assert_checkerror("eigs(sparse(A), [], 4, which, opts)", refMsg);

opts.maxiter  = %nan;
assert_checkfalse(execstr("eigs(A, [], 4, which ,opts)", "errcatch") == 0);
refMsg = msprintf(_("%s: Wrong type for input argument #%d: %s must be an integer positive value.\n"), "eigs", 5, "opts.maxiter");
assert_checkerror("eigs(A, [], 4, which, opts)", refMsg);

assert_checkfalse(execstr("eigs(sparse(A), [], 4, which ,opts)", "errcatch") == 0);
refMsg = msprintf(_("%s: Wrong type for input argument #%d: %s must be an integer positive value.\n"), "eigs", 5, "opts.maxiter");
assert_checkerror("eigs(sparse(A), [], 4, which ,opts)", refMsg);

opts.maxiter  = %f;
assert_checkfalse(execstr("eigs(A, [], 4, which ,opts)", "errcatch") == 0);
refMsg = msprintf(_("%s: Wrong type for input argument #%d: %s must be a scalar.\n"), "eigs", 5, "opts.maxiter");
assert_checkerror("eigs(A, [], 4, which, opts)", refMsg);

assert_checkfalse(execstr("eigs(sparse(A), [], 4, which ,opts)", "errcatch") == 0);
refMsg = msprintf(_("%s: Wrong type for input argument #%d: %s must be a scalar.\n"), "eigs", 5, "opts.maxiter");
assert_checkerror("eigs(sparse(A), [], 4, which, opts)", refMsg);

opts.maxiter  = "ahh";
assert_checkfalse(execstr("eigs(A, [], 4, which ,opts)", "errcatch") == 0);
refMsg = msprintf(_("%s: Wrong type for input argument #%d: %s must be a scalar.\n"), "eigs", 5, "opts.maxiter");
assert_checkerror("eigs(A, [], 4, which, opts)", refMsg);

assert_checkfalse(execstr("eigs(sparse(A), [], 4, which ,opts)", "errcatch") == 0);
refMsg = msprintf(_("%s: Wrong type for input argument #%d: %s must be a scalar.\n"), "eigs", 5, "opts.maxiter");
assert_checkerror("eigs(sparse(A), [], 4, which, opts)", refMsg);

opts.maxiter = 5.1;
assert_checkfalse(execstr("eigs(A, [], 4, which ,opts)", "errcatch") == 0);
refMsg = msprintf(_("%s: Wrong type for input argument #%d: %s must be an integer positive value.\n"), "eigs", 5, "opts.maxiter");
assert_checkerror("eigs(A, [], 4, which, opts)", refMsg);

assert_checkfalse(execstr("eigs(sparse(A), [], 4, which ,opts)", "errcatch") == 0);
refMsg = msprintf(_("%s: Wrong type for input argument #%d: %s must be an integer positive value.\n"), "eigs", 5, "opts.maxiter");
assert_checkerror("eigs(sparse(A), [], 4, which ,opts)", refMsg);

opts.maxiter = -5.1;
assert_checkfalse(execstr("eigs(A, [], 4, which ,opts)", "errcatch") == 0);
refMsg = msprintf(_("%s: Wrong type for input argument #%d: %s must be an integer positive value.\n"), "eigs", 5, "opts.maxiter");
assert_checkerror("eigs(A, [], 4, which, opts)", refMsg);

assert_checkfalse(execstr("eigs(sparse(A), [], 4, which ,opts)", "errcatch") == 0);
refMsg = msprintf(_("%s: Wrong type for input argument #%d: %s must be an integer positive value.\n"), "eigs", 5, "opts.maxiter");
assert_checkerror("eigs(sparse(A), [], 4, which ,opts)", refMsg);

clear opts
opts.tol  = [];
assert_checkfalse(execstr("eigs(A, [], 4, which ,opts)", "errcatch") == 0);
refMsg = msprintf(_("%s: Wrong type for input argument #%d: %s must be a real scalar.\n"), "eigs", 6, "opts.tol");
assert_checkerror("eigs(A, [], 4, which, opts)", refMsg);

assert_checkfalse(execstr("eigs(sparse(A), [], 4, which ,opts)", "errcatch") == 0);
refMsg = msprintf(_("%s: Wrong type for input argument #%d: %s must be a real scalar.\n"), "eigs", 6, "opts.tol");
assert_checkerror("eigs(sparse(A), [], 4, which, opts)", refMsg);



opts.tol  = %nan;
assert_checkfalse(execstr("eigs(A, [], 4, which ,opts)", "errcatch") == 0);
refMsg = msprintf(_("%s: Wrong type for input argument #%d: %s must be a real scalar.\n"), "eigs", 6, "opts.tol");
assert_checkerror("eigs(A, [], 4, which, opts)", refMsg);

assert_checkfalse(execstr("eigs(sparse(A), [], 4, which ,opts)", "errcatch") == 0);
refMsg = msprintf(_("%s: Wrong type for input argument #%d: %s must be a real scalar.\n"), "eigs", 6, "opts.tol");
assert_checkerror("eigs(sparse(A), [], 4, which, opts)", refMsg);

opts.tol  = %f;
assert_checkfalse(execstr("eigs(A, [], 4, which ,opts)", "errcatch") == 0);
refMsg = msprintf(_("%s: Wrong type for input argument #%d: %s must be a real scalar.\n"), "eigs", 6, "opts.tol");
assert_checkerror("eigs(A, [], 4, which, opts)", refMsg);

assert_checkfalse(execstr("eigs(sparse(A), [], 4, which ,opts)", "errcatch") == 0);
refMsg = msprintf(_("%s: Wrong type for input argument #%d: %s must be a real scalar.\n"), "eigs", 6, "opts.tol");
assert_checkerror("eigs(sparse(A), [], 4, which, opts)", refMsg);

opts.tol  = "ahh";
assert_checkfalse(execstr("eigs(A, [], 4, which ,opts)", "errcatch") == 0);
refMsg = msprintf(_("%s: Wrong type for input argument #%d: %s must be a real scalar.\n"), "eigs", 6, "opts.tol");
assert_checkerror("eigs(A, [], 4, which, opts)", refMsg);

assert_checkfalse(execstr("eigs(sparse(A), [], 4, which ,opts)", "errcatch") == 0);
refMsg = msprintf(_("%s: Wrong type for input argument #%d: %s must be a real scalar.\n"), "eigs", 6, "opts.tol");
assert_checkerror("eigs(sparse(A), [], 4, which, opts)", refMsg);

clear opts
opts.ncv  = %nan;
assert_checkfalse(execstr("eigs(A, [], 4, which ,opts)", "errcatch") == 0);
refMsg = msprintf(_("%s: Wrong type for input argument #%d: %s must be an integer scalar.\n"), "eigs", 7, "opts.ncv");
assert_checkerror("eigs(A, [], 4, which, opts)", refMsg);

assert_checkfalse(execstr("eigs(sparse(A), [], 4, which ,opts)", "errcatch") == 0);
refMsg = msprintf(_("%s: Wrong type for input argument #%d: %s must be an integer scalar.\n"), "eigs", 7, "opts.ncv");
assert_checkerror("eigs(sparse(A), [], 4, which, opts)", refMsg);

opts.ncv  = %f;
assert_checkfalse(execstr("eigs(A, [], 4, which ,opts)", "errcatch") == 0);
refMsg = msprintf(_("%s: Wrong type for input argument #%d: %s must be an integer scalar.\n"), "eigs", 7, "opts.ncv");
assert_checkerror("eigs(A, [], 4, which, opts)", refMsg);

assert_checkfalse(execstr("eigs(sparse(A), [], 4, which ,opts)", "errcatch") == 0);
refMsg = msprintf(_("%s: Wrong type for input argument #%d: %s must be an integer scalar.\n"), "eigs", 7, "opts.ncv");
assert_checkerror("eigs(sparse(A), [], 4, which, opts)", refMsg);

opts.ncv  = "ahh";
assert_checkfalse(execstr("eigs(A, [], 4, which ,opts)", "errcatch") == 0);
refMsg = msprintf(_("%s: Wrong type for input argument #%d: %s must be an integer scalar.\n"), "eigs", 7, "opts.ncv");
assert_checkerror("eigs(A, [], 4, which, opts)", refMsg);

assert_checkfalse(execstr("eigs(sparse(A), [], 4, which ,opts)", "errcatch") == 0);
refMsg = msprintf(_("%s: Wrong type for input argument #%d: %s must be an integer scalar.\n"), "eigs", 7, "opts.ncv");
assert_checkerror("eigs(sparse(A), [], 4, which, opts)", refMsg);

opts.ncv  = %eps;
assert_checkfalse(execstr("eigs(A, [], 4, which ,opts)", "errcatch") == 0);
refMsg = msprintf(_("%s: Wrong type for input argument #%d: %s must be an integer scalar.\n"), "eigs", 7, "opts.ncv");
assert_checkerror("eigs(A, [], 4, which, opts)", refMsg);

assert_checkfalse(execstr("eigs(sparse(A), [], 4, which ,opts)", "errcatch") == 0);
refMsg = msprintf(_("%s: Wrong type for input argument #%d: %s must be an integer scalar.\n"), "eigs", 7, "opts.ncv");
assert_checkerror("eigs(sparse(A), [], 4, which, opts)", refMsg);

opts.ncv  = -5.1;
assert_checkfalse(execstr("eigs(A, [], 4, which ,opts)", "errcatch") == 0);
refMsg = msprintf(_("%s: Wrong type for input argument #%d: %s must be an integer scalar.\n"), "eigs", 7, "opts.ncv");
assert_checkerror("eigs(A, [], 4, which, opts)", refMsg);

assert_checkfalse(execstr("eigs(sparse(A), [], 4, which ,opts)", "errcatch") == 0);
refMsg = msprintf(_("%s: Wrong type for input argument #%d: %s must be an integer scalar.\n"), "eigs", 7, "opts.ncv");
assert_checkerror("eigs(sparse(A), [], 4, which, opts)", refMsg);

opts.ncv  = 5.1;
assert_checkfalse(execstr("eigs(A, [], 4, which ,opts)", "errcatch") == 0);
refMsg = msprintf(_("%s: Wrong type for input argument #%d: %s must be an integer scalar.\n"), "eigs", 7, "opts.ncv");
assert_checkerror("eigs(A, [], 4, which, opts)", refMsg);

assert_checkfalse(execstr("eigs(sparse(A), [], 4, which ,opts)", "errcatch") == 0);
refMsg = msprintf(_("%s: Wrong type for input argument #%d: %s must be an integer scalar.\n"), "eigs", 7, "opts.ncv");
assert_checkerror("eigs(sparse(A), [], 4, which, opts)", refMsg);

opts.ncv = n + 6;
assert_checkfalse(execstr("eigs(A, [], 4, which ,opts)", "errcatch") == 0);
refMsg = msprintf(_("%s: Wrong value for input argument #%d: For real symmetric problems, NCV must be k < NCV <= N.\n"), "eigs", 7);
assert_checkerror("eigs(A, [], 4, which, opts)", refMsg);

assert_checkfalse(execstr("eigs(sparse(A), [], 4, which ,opts)", "errcatch") == 0);
refMsg = msprintf(_("%s: Wrong value for input argument #%d: For real symmetric problems, NCV must be k < NCV <= N.\n"), "eigs", 7);
assert_checkerror("eigs(sparse(A), [], 4, which, opts)", refMsg);

clear opts
opts.cholB  = %nan;
assert_checkfalse(execstr("eigs(A, [], 4, which ,opts)", "errcatch") == 0);
refMsg = msprintf(_("%s: Wrong value for input argument #%d: %s must be %s or %s.\n"), "eigs", 8, "opts.cholB", "%f", "%t");
assert_checkerror("eigs(A, [], 4, which, opts)", refMsg);

assert_checkfalse(execstr("eigs(sparse(A), [], 4, which ,opts)", "errcatch") == 0);
refMsg = msprintf(_("%s: Wrong value for input argument #%d: %s must be %s or %s.\n"), "eigs", 8, "opts.cholB", "%f", "%t");
assert_checkerror("eigs(sparse(A), [], 4, which, opts)", refMsg);

opts.cholB  = "ahh";
assert_checkfalse(execstr("eigs(A, [], 4, which ,opts)", "errcatch") == 0);
refMsg = msprintf(_("%s: Wrong type for input argument #%d: %s must be an integer scalar or a boolean.\n"), "eigs", 8, "opts.cholB");
assert_checkerror("eigs(A, [], 4, which, opts)", refMsg);

assert_checkfalse(execstr("eigs(sparse(A), [], 4, which ,opts)", "errcatch") == 0);
refMsg = msprintf(_("%s: Wrong type for input argument #%d: %s must be an integer scalar or a boolean.\n"), "eigs", 8, "opts.cholB");
assert_checkerror("eigs(sparse(A), [], 4, which, opts)", refMsg);

opts.cholB  = %eps;
assert_checkfalse(execstr("eigs(A, [], 4, which ,opts)", "errcatch") == 0);
refMsg = msprintf(_("%s: Wrong value for input argument #%d: %s must be %s or %s.\n"), "eigs", 8, "opts.cholB", "%f", "%t");
assert_checkerror("eigs(A, [], 4, which, opts)", refMsg);

assert_checkfalse(execstr("eigs(sparse(A), [], 4, which ,opts)", "errcatch") == 0);
refMsg = msprintf(_("%s: Wrong value for input argument #%d: %s must be %s or %s.\n"), "eigs", 8, "opts.cholB", "%f", "%t");
assert_checkerror("eigs(sparse(A), [], 4, which, opts)", refMsg);

opts.cholB  = -5.1;
assert_checkfalse(execstr("eigs(A, [], 4, which ,opts)", "errcatch") == 0);
refMsg = msprintf(_("%s: Wrong value for input argument #%d: %s must be %s or %s.\n"), "eigs", 8, "opts.cholB", "%f", "%t");
assert_checkerror("eigs(A, [], 4, which, opts)", refMsg);

assert_checkfalse(execstr("eigs(sparse(A), [], 4, which ,opts)", "errcatch") == 0);
refMsg = msprintf(_("%s: Wrong value for input argument #%d: %s must be %s or %s.\n"), "eigs", 8, "opts.cholB", "%f", "%t");
assert_checkerror("eigs(sparse(A), [], 4, which, opts)", refMsg);

opts.cholB  = 5.1;
assert_checkfalse(execstr("eigs(A, [], 4, which ,opts)", "errcatch") == 0);
refMsg = msprintf(_("%s: Wrong value for input argument #%d: %s must be %s or %s.\n"), "eigs", 8, "opts.cholB", "%f", "%t");
assert_checkerror("eigs(A, [], 4, which, opts)", refMsg);

assert_checkfalse(execstr("eigs(sparse(A), [], 4, which ,opts)", "errcatch") == 0);
refMsg = msprintf(_("%s: Wrong value for input argument #%d: %s must be %s or %s.\n"), "eigs", 8, "opts.cholB", "%f", "%t");
assert_checkerror("eigs(sparse(A), [], 4, which, opts)", refMsg);



opts.cholB = [];
assert_checkfalse(execstr("eigs(A, [], 4, which ,opts)", "errcatch") == 0);
refMsg = msprintf(_("%s: Wrong type for input argument #%d: %s must be an integer scalar or a boolean.\n"), "eigs", 8, "opts.cholB");
assert_checkerror("eigs(A, [], 4, which, opts)", refMsg);

assert_checkfalse(execstr("eigs(sparse(A), [], 4, which ,opts)", "errcatch") == 0);
refMsg = msprintf(_("%s: Wrong type for input argument #%d: %s must be an integer scalar or a boolean.\n"), "eigs", 8, "opts.cholB");
assert_checkerror("eigs(sparse(A), [], 4, which, opts)", refMsg);

clear opts
opts.resid  = %nan;
assert_checkfalse(execstr("eigs(A, [], 4, which ,opts)", "errcatch") == 0);
refMsg = msprintf(_("%s: Wrong dimension for input argument #%d: Start vector %s must be N by 1.\n"), "eigs", 9, "opts.resid");
assert_checkerror("eigs(A, [], 4, which, opts)", refMsg);

assert_checkfalse(execstr("eigs(sparse(A), [], 4, which ,opts)", "errcatch") == 0);
refMsg = msprintf(_("%s: Wrong dimension for input argument #%d: Start vector %s must be N by 1.\n"), "eigs", 9, "opts.resid");
assert_checkerror("eigs(sparse(A), [], 4, which, opts)", refMsg);

opts.resid  = %f;
assert_checkfalse(execstr("eigs(A, [], 4, which ,opts)", "errcatch") == 0);
refMsg = msprintf(_("%s: Wrong type for input argument #%d: A real or complex matrix expected.\n"), "eigs", 9);
assert_checkerror("eigs(A, [], 4, which, opts)", refMsg);

assert_checkfalse(execstr("eigs(sparse(A), [], 4, which ,opts)", "errcatch") == 0);
refMsg = msprintf(_("%s: Wrong type for input argument #%d: A real or complex matrix expected.\n"), "eigs", 9);
assert_checkerror("eigs(sparse(A), [], 4, which, opts)", refMsg);

opts.resid  = "ahh";
assert_checkfalse(execstr("eigs(A, [], 4, which ,opts)", "errcatch") == 0);
refMsg = msprintf(_("%s: Wrong type for input argument #%d: A real or complex matrix expected.\n"), "eigs", 9);
assert_checkerror("eigs(A, [], 4, which, opts)", refMsg);

assert_checkfalse(execstr("eigs(sparse(A), [], 4, which ,opts)", "errcatch") == 0);
refMsg = msprintf(_("%s: Wrong type for input argument #%d: A real or complex matrix expected.\n"), "eigs", 9);
assert_checkerror("eigs(sparse(A), [], 4, which, opts)", refMsg);

opts.resid  = %eps;
assert_checkfalse(execstr("eigs(A, [], 4, which ,opts)", "errcatch") == 0);
refMsg = msprintf(_("%s: Wrong dimension for input argument #%d: Start vector %s must be N by 1.\n"), "eigs", 9, "opts.resid");
assert_checkerror("eigs(A, [], 4, which, opts)", refMsg);

assert_checkfalse(execstr("eigs(sparse(A), [], 4, which ,opts)", "errcatch") == 0);
refMsg = msprintf(_("%s: Wrong dimension for input argument #%d: Start vector %s must be N by 1.\n"), "eigs", 9, "opts.resid");
assert_checkerror("eigs(sparse(A), [], 4, which, opts)", refMsg);

opts.resid  = [1 2];
assert_checkfalse(execstr("eigs(A, [], 4, which ,opts)", "errcatch") == 0);
refMsg = msprintf(_("%s: Wrong dimension for input argument #%d: Start vector %s must be N by 1.\n"), "eigs", 9, "opts.resid");
assert_checkerror("eigs(A, [], 4, which, opts)", refMsg);

assert_checkfalse(execstr("eigs(sparse(A), [], 4, which ,opts)", "errcatch") == 0);
refMsg = msprintf(_("%s: Wrong dimension for input argument #%d: Start vector %s must be N by 1.\n"), "eigs", 9, "opts.resid");
assert_checkerror("eigs(sparse(A), [], 4, which, opts)", refMsg);

opts.resid  = [1;2];
assert_checkfalse(execstr("eigs(A, [], 4, which ,opts)", "errcatch") == 0);
refMsg = msprintf(_("%s: Wrong dimension for input argument #%d: Start vector %s must be N by 1.\n"), "eigs", 9, "opts.resid");
assert_checkerror("eigs(A, [], 4, which, opts)", refMsg);

assert_checkfalse(execstr("eigs(sparse(A), [], 4, which ,opts)", "errcatch") == 0);
refMsg = msprintf(_("%s: Wrong dimension for input argument #%d: Start vector %s must be N by 1.\n"), "eigs", 9, "opts.resid");
assert_checkerror("eigs(sparse(A), [], 4, which, opts)", refMsg);

opts.resid = [];
assert_checkfalse(execstr("eigs(A, [], 4, which ,opts)", "errcatch") == 0);
refMsg = msprintf(_("%s: Wrong dimension for input argument #%d: Start vector %s must be N by 1.\n"), "eigs", 9, "opts.resid");
assert_checkerror("eigs(A, [], 4, which, opts)", refMsg);

assert_checkfalse(execstr("eigs(sparse(A), [], 4, which ,opts)", "errcatch") == 0);
refMsg = msprintf(_("%s: Wrong dimension for input argument #%d: Start vector %s must be N by 1.\n"), "eigs", 9, "opts.resid");
assert_checkerror("eigs(sparse(A), [], 4, which, opts)", refMsg);

clear opts
opts.issym = %f;
assert_checkfalse(execstr("eigs(A, [], 4, which ,opts)", "errcatch") == 0);
refMsg = msprintf(_("%s: Wrong type for input argument: If A is a matrix, use opts with tol, maxiter, ncv, resid, cholB"), "eigs");
assert_checkerror("eigs(A, [], 4, which, opts)", refMsg);

clear opts
opts.isreal = %f;
assert_checkfalse(execstr("eigs(A, [], 4, which ,opts)", "errcatch") == 0);
refMsg = msprintf(_("%s: Wrong type for input argument: If A is a matrix, use opts with tol, maxiter, ncv, resid, cholB"), "eigs");
assert_checkerror("eigs(A, [], 4, which, opts)", refMsg);

clear opts
n = 20;
k = 5;
A            = diag(10*ones(n,1));
A(1:$-1,2:$) = A(1:$-1,2:$) + diag(6*ones(n-1,1));
A(2:$,1:$-1) = A(2:$,1:$-1) + diag(6*ones(n-1,1));
A = sparse(A);

d1 = eigs(A, [], k);
d0 = spec(full(A));
assert_checkalmostequal(d1, d0(($-k+1):$), 1.e-10);

d1 = eigs(A, [], k, "LM");
assert_checkalmostequal(d1, d0(($-k+1):$), 1.e-10);

d1 = eigs(A, [], k, "SM");
assert_checkalmostequal(d1, d0(1:k), 1.e-10);

d1 = eigs(A, [], k, "LA");
assert_checkalmostequal(d1, d0(($-k+1):$), 1.e-10);

d1 = eigs(A, [], k, "SA");
assert_checkalmostequal(d1, d0(k:-1:1), 1.e-10);

d1 = eigs(A, [], k, "BE");
assert_checkalmostequal(d1, [d0(1:2); d0($-2:$)], 1.e-10);

d1 = eigs(A, [], k, 2);
assert_checkalmostequal(d1, d0(3:3+k-1), 1.e-10);

d1 = eigs(A, speye(n,n), k, "LM");
assert_checkalmostequal(d1, d0(($-k+1):$), 1.e-10);

d1 = eigs(A, speye(n,n), k, 2);
assert_checkalmostequal(d1, d0(3:3+k-1), 1.e-10);

opts.cholB = %t;
d1 = eigs(A, speye(n,n), k, "LM", opts);
assert_checkalmostequal(d1, d0(($-k+1):$), 1.e-10);

opts.cholB = %t;
d1 = eigs(A, speye(n,n), k, 2, opts);
assert_checkalmostequal(eigs(A, [],k, 2), d0(3:3+k-1), 1.e-10);

[d1, v1] = eigs(A, [], k, "LM");
assert_checkalmostequal(A*v1, v1*d1,sqrt(%eps), 1.e-10);

[d1, v1] = eigs(A, [], k, "SM");
assert_checkalmostequal(A*v1, v1*d1,sqrt(%eps), 1.e-10);

[d1, v1] = eigs(A, [], k, "LA");
assert_checkalmostequal(A*v1, v1*d1,sqrt(%eps), 1.e-10);

[d1, v1] = eigs(A, [], k, "SA");
assert_checkalmostequal(A*v1, v1*d1,sqrt(%eps), 1.e-10);

[d1, v1] = eigs(A, [], k, "BE");
assert_checkalmostequal(A*v1, v1*d1,sqrt(%eps), 1.e-10);


n = 20;
k = 5;
A            = diag((1:n));
A(1:$-1,2:$) = A(1:$-1,2:$) + diag(6*ones(n-1,1));
A(2:$,1:$-1) = A(2:$,1:$-1) + diag(-6*ones(n-1,1));
A = sparse(A);

d1 = eigs(A, [], k);
d0 = gsort(spec(full(A)));

assert_checkalmostequal(abs(d1), abs(d0(k+2-1:-1:2)), 1.e-10);

d1 = eigs(A, [], k, "LM");
assert_checkalmostequal(abs(d1), abs(d0(k+2-1:-1:2)), 1.e-10);

d1 = eigs(A, [], k, "SM");
assert_checkalmostequal(abs(d1), abs(d0($-k:$-1)), 1.e-10);

d1 = eigs(A, [], k, "LR");
assert_checkalmostequal(real(d1), real(d0(k+2-1:-1:2)), 1.e-10);

d1 = eigs(A, [], k, "SR");
assert_checkalmostequal(real(d1), gsort(real(d0([13 14 18 19 20]))), 1.e-10);

d1 = eigs(A, [], k, "LI");
assert_checkalmostequal(abs(imag(d1)), abs(imag(d0([3 4 2 1 18]))), 1.e-10);

d1 = eigs(A, [], k, "SI");
assert_checkalmostequal(abs(imag(d1)), abs(imag(d0([9 10 11 12 15]))), 1.e-10);

d1 = eigs(A, [], k, 2);
assert_checkalmostequal(abs(d1), abs(d0([19 20 12 11 15])), 1.e-10);

d1 = eigs(A, speye(n,n), k, "LM");
assert_checkalmostequal(abs(d1), abs(d0(k+2-1:-1:2)), 1.e-10);

d1 = eigs(A, speye(n,n), k, 2);
assert_checkalmostequal(abs(d1), abs(d0([19 20 12 11 15])), 1.e-10);

opts.cholB = %t;
d1 = eigs(A, speye(n,n), k, "LM", opts);
assert_checkalmostequal(abs(d1), abs(d0(k+2-1:-1:2)), 1.e-10);

opts.cholB = %t;
d1 = eigs(A, speye(n,n), k, 2, opts);
assert_checkalmostequal(abs(d1), abs(d0([19 20 12 11 15])), 1.e-10);

[d1, v1] = eigs(A, [], k, "LM");
assert_checkalmostequal(A*v1, v1*d1,sqrt(%eps), 1.e-10);

[d1, v1] = eigs(A, [], k, "SM");
assert_checkalmostequal(A*v1, v1*d1,sqrt(%eps), 1.e-10);

[d1, v1] = eigs(A, [], k, "LR");
assert_checkalmostequal(A*v1, v1*d1,sqrt(%eps), 1.e-10);

[d1, v1] = eigs(A, [], k, "SR");
assert_checkalmostequal(A*v1, v1*d1,sqrt(%eps), 1.e-10);

[d1, v1] = eigs(A, [], k, "LI");
assert_checkalmostequal(A*v1, v1*d1,sqrt(%eps), 1.e-10);

[d1, v1] = eigs(A, [], k, "SI");
assert_checkalmostequal(A*v1, v1*d1,sqrt(%eps), 1.e-10);

n = 20;
k = 5;
A            = diag((1:n) + %i * ones(1,n));
A(1:$-1,2:$) = A(1:$-1,2:$) + diag(6*ones(n-1,1));
A(2:$,1:$-1) = A(2:$,1:$-1) + diag(-6*ones(n-1,1));
A = sparse(A);

d1 = eigs(A, [], k);
d0 = gsort(spec(full(A)));
r = gsort(real(d0));
im = gsort(imag(d0));
assert_checkalmostequal(abs(d1), abs(d0(k:-1:1)), 1.e-10);

d1 = eigs(A, [], k, "LM");
assert_checkalmostequal(abs(d1), abs(d0(k:-1:1)), 1.e-10);

//d1 = eigs(A, [], k, 'SM');
//assert_checkalmostequal(abs(d1), abs(d0(1:k)), 1.e-14); // error -> impossible to invert complex sparse matrix

d1 = eigs(A, [], k, "LR");
assert_checkalmostequal(real(d1), real(d0(k:-1:1)), 1.e-10);

d1 = eigs(A, [], k, "SR");
assert_checkalmostequal(real(d1), r($-k+1:$), 1.e-10);

d1 = eigs(A, [], k, "LI");
assert_checkalmostequal(imag(d1), im(k:-1:1), 1.e-10);

d1 = eigs(A, [], k, "SI");
assert_checkalmostequal(imag(d1), im($-k+1:$), 1.e-10);

d1 = eigs(A, speye(n,n), k, "LM");
assert_checkalmostequal(abs(d1), abs(d0(k:-1:1)), 1.e-10);

opts.cholB = %t;
d1 = eigs(A, speye(n,n), k, "LM", opts);
assert_checkalmostequal(abs(d1), abs(d0(k:-1:1)), 1.e-10);

[d1, v1] = eigs(A, [], k, "LM");
assert_checkalmostequal(A*v1, v1*d1,sqrt(%eps), 1.e-10);

[d1, v1] = eigs(A, [], k, "LR");
assert_checkalmostequal(A*v1, v1*d1,sqrt(%eps), 1.e-10);

[d1, v1] = eigs(A, [], k, "SR");
assert_checkalmostequal(A*v1, v1*d1,sqrt(%eps), 1.e-10);

[d1, v1] = eigs(A, [], k, "LI");
assert_checkalmostequal(A*v1, v1*d1,sqrt(%eps), 1.e-10);

[d1, v1] = eigs(A, [], k, "SI");
assert_checkalmostequal(A*v1, v1*d1,sqrt(%eps), 1.e-10);


n = 20;
k = 5;
A            = diag(10*ones(n,1));
A(1:$-1,2:$) = A(1:$-1,2:$) + diag(6*ones(n-1,1));
A(2:$,1:$-1) = A(2:$,1:$-1) + diag(6*ones(n-1,1));

d1 = eigs(A, [], k);
d0 = spec(A);

assert_checkalmostequal(d1, d0(($-k+1):$), 1.e-10);

d1 = eigs(A, [], k, "LM");
assert_checkalmostequal(d1, d0(($-k+1):$), 1.e-10);

d1 = eigs(A, [], k, "SM");
assert_checkalmostequal(d1, d0(1:k), 1.e-10);

d1 = eigs(A, [], k, "LA");
assert_checkalmostequal(d1, d0(($-k+1):$), 1.e-10);

d1 = eigs(A, [], k, "SA");
assert_checkalmostequal(d1, d0(k:-1:1), 1.e-10);

d1 = eigs(A, [], k, "BE");
assert_checkalmostequal(d1, [d0(1:2); d0($-2:$)], 1.e-10);

d1 = eigs(A, [], k, 2);
assert_checkalmostequal(d1, d0(3:3+k-1), 1.e-10);

d1 = eigs(A, eye(n,n), k, "LM");
assert_checkalmostequal(d1, d0(($-k+1):$), 1.e-10);

d1 = eigs(A, eye(n,n), k, 2);
assert_checkalmostequal(d1, d0(3:3+k-1), 1.e-10);

opts.cholB = %t;
d1 = eigs(A, eye(n,n), k, "LM", opts);
assert_checkalmostequal(d1, d0(($-k+1):$), 1.e-10);

opts.cholB = %t;
d1 = eigs(A, eye(n,n), k, 2, opts);
assert_checkalmostequal(eigs(A, [],k, 2), d0(3:3+k-1), 1.e-10);

[d1, v1] = eigs(A, [], k, "LM");
assert_checkalmostequal(A*v1, v1*d1,sqrt(%eps), 1.e-10);

[d1, v1] = eigs(A, [], k, "SM");
assert_checkalmostequal(A*v1, v1*d1,sqrt(%eps), 1.e-10);

[d1, v1] = eigs(A, [], k, "LA");
assert_checkalmostequal(A*v1, v1*d1,sqrt(%eps), 1.e-10);

[d1, v1] = eigs(A, [], k, "SA");
assert_checkalmostequal(A*v1, v1*d1,sqrt(%eps), 1.e-10);

[d1, v1] = eigs(A, [], k, "BE");
assert_checkalmostequal(A*v1, v1*d1,sqrt(%eps), 1.e-10);

n = 20;
k = 5;
A            = diag((1:n));
A(1:$-1,2:$) = A(1:$-1,2:$) + diag(6*ones(n-1,1));
A(2:$,1:$-1) = A(2:$,1:$-1) + diag(-6*ones(n-1,1));

d1 = eigs(A, [], k);
d0 = gsort(spec(A));

assert_checkalmostequal(abs(d1), abs(d0(k+2-1:-1:2)), 1.e-10);

d1 = eigs(A, [], k, "LM");
assert_checkalmostequal(abs(d1), abs(d0(k+2-1:-1:2)), 1.e-10);

d1 = eigs(A, [], k, "SM");
assert_checkalmostequal(abs(d1), abs(d0($-k:$-1)), 1.e-10);

d1 = eigs(A, [], k, "LR");
assert_checkalmostequal(real(d1), real(d0(k+2-1:-1:2)), 1.e-10);

d1 = eigs(A, [], k, "SR");
assert_checkalmostequal(real(d1), gsort(real(d0([13 14 18 19 20]))), 1.e-10);

d1 = eigs(A, [], k, "LI");
assert_checkalmostequal(abs(imag(d1)), abs(imag(d0([3 4 2 1 18]))), 1.e-10);

d1 = eigs(A, [], k, "SI");
assert_checkalmostequal(abs(imag(d1)), abs(imag(d0([9 10 11 12 15]))), 1.e-10);

d1 = eigs(A, [], k, 2);
assert_checkalmostequal(abs(d1), abs(d0([19 20 12 11 15])), 1.e-10);

d1 = eigs(A, eye(n,n), k, "LM");
assert_checkalmostequal(abs(d1), abs(d0(k+2-1:-1:2)), 1.e-10);

d1 = eigs(A, eye(n,n), k, 2);
assert_checkalmostequal(abs(d1), abs(d0([19 20 12 11 15])), 1.e-10);

opts.cholB = %t;
d1 = eigs(A, eye(n,n), k, "LM", opts);
assert_checkalmostequal(abs(d1), abs(d0(k+2-1:-1:2)), 1.e-10);

opts.cholB = %t;
d1 = eigs(A, eye(n,n), k, 2, opts);
assert_checkalmostequal(abs(d1), abs(d0([19 20 12 11 15])), 1.e-10);

[d1, v1] = eigs(A, [], k, "LM");
assert_checkalmostequal(A*v1, v1*d1,sqrt(%eps), 1.e-10);

[d1, v1] = eigs(A, [], k, "SM");
assert_checkalmostequal(A*v1, v1*d1,sqrt(%eps), 1.e-10);

[d1, v1] = eigs(A, [], k, "LR");
assert_checkalmostequal(A*v1, v1*d1,sqrt(%eps), 1.e-10);

[d1, v1] = eigs(A, [], k, "SR");
assert_checkalmostequal(A*v1, v1*d1,sqrt(%eps), 1.e-10);

[d1, v1] = eigs(A, [], k, "LI");
assert_checkalmostequal(A*v1, v1*d1,sqrt(%eps), 1.e-10);

[d1, v1] = eigs(A, [], k, "SI");
assert_checkalmostequal(A*v1, v1*d1,sqrt(%eps), 1.e-10);


n = 20;
k = 5;
A            = diag((1:n) + %i * ones(1,n));
A(1:$-1,2:$) = A(1:$-1,2:$) + diag(6*ones(n-1,1));
A(2:$,1:$-1) = A(2:$,1:$-1) + diag(-6*ones(n-1,1));

d1 = eigs(A, [], k);
d0 = gsort(spec(A));
r = gsort(real(d0));
im = gsort(imag(d0));

assert_checkalmostequal(abs(d1), abs(d0(k:-1:1)), 1.e-10);

d1 = eigs(A, [], k, "LM");
assert_checkalmostequal(abs(d1), abs(d0(k:-1:1)), 1.e-10);

d1 = eigs(A, [], k, "SM");
assert_checkalmostequal(abs(d1), abs(d0($-k+1:$)), 1.e-10);

d1 = eigs(A, [], k, "LR");
assert_checkalmostequal(real(d1), r(k:-1:1), 1.e-10);

d1 = eigs(A, [], k, "SR");
assert_checkalmostequal(real(d1), r($-k+1:$), 1.e-10);

d1 = eigs(A, [], k, "LI");
assert_checkalmostequal(imag(d1), im(k:-1:1), 1.e-10);

d1 = eigs(A, [], k, "SI");
assert_checkalmostequal(imag(d1), im($-k+1:$), 1.e-10);

d1 = eigs(A, [], k, 2);
assert_checkalmostequal(gsort(abs(d1)), gsort(abs(d0($-1:-1:$-k))), 1.e-10);

d1 = eigs(A, eye(n,n), k, "LM");
assert_checkalmostequal(abs(d1), abs(d0(k:-1:1)), 1.e-10);

opts.cholB = %t;
d1 = eigs(A, eye(n,n), k, "LM", opts);
assert_checkalmostequal(abs(d1), abs(d0(k:-1:1)), 1.e-10);

opts.cholB = %t;
d1 = eigs(A, eye(n,n), k, 2, opts);
assert_checkalmostequal(abs(eigs(A, [], k, 2)), abs(d1), 1.e-10);

[d1, v1] = eigs(A, [], k, "LM");
assert_checkalmostequal(A*v1, v1*d1, sqrt(%eps), 1.e-10);

[d1, v1] = eigs(A, [], k, "LR");
assert_checkalmostequal(A*v1, v1*d1, sqrt(%eps), 1.e-10);

[d1, v1] = eigs(A, [], k, "SR");
assert_checkalmostequal(A*v1, v1*d1, sqrt(%eps), 1.e-10);

[d1, v1] = eigs(A, [], k, "LI");
assert_checkalmostequal(A*v1, v1*d1, sqrt(%eps), 1.e-10);

[d1, v1] = eigs(A, [], k, "SI");
assert_checkalmostequal(A*v1, v1*d1, sqrt(%eps), 1.e-10);

clear opts
// Tests : A is a function
// Sparse matrix tests
n = 20;
k = 5;
A            = diag(10*ones(n,1));
A(1:$-1,2:$) = A(1:$-1,2:$) + diag(6*ones(n-1,1));
A(2:$,1:$-1) = A(2:$,1:$-1) + diag(6*ones(n-1,1));
A = sparse(A);

function y = fn(x)
    y = A * x;
endfunction

opts.isreal = %t;
opts.issym = %t;

d1 = eigs(fn, n, [], k, "LM", opts );
d0 = spec(full(A));
assert_checkalmostequal(d1, d0(($-k+1):$), 1.e-10);

clear fn
function y = fn(x)
    y = A \x;
endfunction

opts.isreal = %t;
opts.issym = %t;

d1 = eigs(fn, n, [], k, "SM", opts );
assert_checkalmostequal(d1, d0(1:k), 1.e-10);

clear fn
function y = fn(x)
    y = (A - 2 * speye(n,n)) \x;
endfunction

opts.isreal = %t;
opts.issym = %t;

d1 = eigs(fn, n, [], k, 2, opts);
assert_checkalmostequal(d1, d0(3:3+k-1), 1.e-10);

n = 20;
k = 5;
A            = diag((1:n));
A(1:$-1,2:$) = A(1:$-1,2:$) + diag(6*ones(n-1,1));
A(2:$,1:$-1) = A(2:$,1:$-1) + diag(-6*ones(n-1,1));
A = sparse(A);

clear fn
function y = fn(x)
    y = A * x;
endfunction

opts.isreal = %t;
opts.issym = %f;

d1 = eigs(fn, n, [], k, "LM", opts );
d0 = gsort(spec(full(A)));
assert_checkalmostequal(abs(d1), abs(d0(k+2-1:-1:2)), 1.e-10);

clear fn
function y = fn(x)
    y = A \x;
endfunction

opts.isreal = %t;
opts.issym = %f;

d1 = eigs(fn, n, [], k, "SM", opts );
assert_checkalmostequal(abs(d1), abs(d0($-k:$-1)), 1.e-10);

clear fn
function y = fn(x)
    y = (A - 2 * speye(n,n)) \x;
endfunction

opts.isreal = %t;
opts.issym = %f;

d1 = eigs(fn, n, [], k, 2, opts );
assert_checkalmostequal(abs(d1), abs(d0([19 20 12 11 15])), 1.e-10);


n = 20;
k = 5;
A            = diag((1:n) + %i * ones(1,n));
A(1:$-1,2:$) = A(1:$-1,2:$) + diag(6*ones(n-1,1));
A(2:$,1:$-1) = A(2:$,1:$-1) + diag(-6*ones(n-1,1));
A = sparse(A);

clear fn
function y = fn(x)
    y = A * x;
endfunction

opts.isreal = %f;
opts.issym = %f;

d1 = eigs(fn, n, [], k, "LM", opts );
d0 = gsort(spec(full(A)));
r = gsort(real(d0));
im = gsort(imag(d0));
assert_checkalmostequal(abs(d1), abs(d0(k:-1:1)), 1.e-10);

clear fn
function y = fn(x)
    y = A \x;
endfunction

opts.isreal = %f;
opts.issym = %f;

d1 = eigs(fn, n, [], k, "SM", opts );
assert_checkalmostequal(abs(d1), abs(d0($-k+1:$)), 1.e-10);

clear fn
function y = fn(x)
    y = (A - 2 * speye(n,n)) \x;
endfunction

opts.isreal = %f;
opts.issym = %f;

d1 = eigs(fn, n, [], k, 2, opts );
assert_checkalmostequal(gsort(abs(d1)), gsort(abs(d0($-1:-1:$-k))), 1.e-10);



clear opts
// Full matrix tests
n = 20;
k = 5;
A            = diag(10*ones(n,1));
A(1:$-1,2:$) = A(1:$-1,2:$) + diag(6*ones(n-1,1));
A(2:$,1:$-1) = A(2:$,1:$-1) + diag(6*ones(n-1,1));

clear fn
function y = fn(x)
    y = A * x;
endfunction

opts.isreal = %t;
opts.issym = %t;

d1 = eigs(fn, n, [], k, "LM", opts );
d0 = spec(A);
assert_checkalmostequal(d1, d0(($-k+1):$), 1.e-10);

clear fn
function y = fn(x)
    y = A \x;
endfunction

opts.isreal = %t;
opts.issym = %t;

d1 = eigs(fn, n, [], k, "SM", opts );
assert_checkalmostequal(d1, d0(1:k), 1.e-10);

clear fn
function y = fn(x)
    y = (A - 2 * speye(n,n)) \x;
endfunction

opts.isreal = %t;
opts.issym = %t;

d1 = eigs(fn, n, [], k, 2, opts);
assert_checkalmostequal(d1, d0(3:3+k-1), 1.e-10);

n = 20;
k = 5;
A            = diag((1:n));
A(1:$-1,2:$) = A(1:$-1,2:$) + diag(6*ones(n-1,1));
A(2:$,1:$-1) = A(2:$,1:$-1) + diag(-6*ones(n-1,1));

clear fn
function y = fn(x)
    y = A * x;
endfunction

opts.isreal = %t;
opts.issym = %f;

d1 = eigs(fn, n, [], k, "LM", opts );
d0 = gsort(spec(A));
assert_checkalmostequal(abs(d1), abs(d0(k+2-1:-1:2)), 1.e-10);

clear fn
function y = fn(x)
    y = A \x;
endfunction

opts.isreal = %t;
opts.issym = %f;

d1 = eigs(fn, n, [], k, "SM", opts );
assert_checkalmostequal(abs(d1), abs(d0($-k:$-1)), 1.e-10);

clear fn
function y = fn(x)
    y = (A - 2 * speye(n,n)) \x;
endfunction

opts.isreal = %t;
opts.issym = %f;

d1 = eigs(fn, n, [], k, 2, opts );
assert_checkalmostequal(abs(d1), abs(d0([19 20 12 11 15])), 1.e-10);


n = 20;
k = 5;
A            = diag((1:n) + %i * ones(1,n));
A(1:$-1,2:$) = A(1:$-1,2:$) + diag(6*ones(n-1,1));
A(2:$,1:$-1) = A(2:$,1:$-1) + diag(-6*ones(n-1,1));

clear fn
function y = fn(x)
    y = A * x;
endfunction

opts.isreal = %f;
opts.issym = %f;

d1 = eigs(fn, n, [], k, "LM", opts );
d0 = gsort(spec(A));
r = gsort(real(d0));
im = gsort(imag(d0));
assert_checkalmostequal(abs(d1), abs(d0(k:-1:1)), 1.e-10);

clear fn
function y = fn(x)
    y = A \x;
endfunction

opts.isreal = %f;
opts.issym = %f;

d1 = eigs(fn, n, [], k, "SM", opts );
assert_checkalmostequal(abs(d1), abs(d0($-k+1:$)), 1.e-10);

clear fn
function y = fn(x)
    y = (A - 2 * speye(n,n)) \x;
endfunction

opts.isreal = %f;
opts.issym = %f;

d1 = eigs(fn, n, [], k, 2, opts );
assert_checkalmostequal(gsort(abs(d1)), gsort(abs(d0($-1:-1:$-k))), 1.e-10);
