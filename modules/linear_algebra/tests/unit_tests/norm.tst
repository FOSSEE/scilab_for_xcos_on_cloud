// =============================================================================
// Scilab ( http://www.scilab.org/ ) - This file is part of Scilab
// Copyright (C) 2008 - INRIA Michael Baudin
// Copyright (C) 2011 - DIGITEO - Michael Baudin
// Copyright (C) 2013 - Scilab Enterprises - Paul Bignier: added performance and IEE compliance tests
//
//  This file is distributed under the same license as the Scilab package.
// =============================================================================
//
// <-- CLI SHELL MODE -->
//

// TODO : use relative error criteria instead of absolute error
eps = 100*%eps;

// Inf
assert_checkequal ( norm([1,2,3,-1,-2,-3],0)    , %inf );
assert_checkequal ( norm([1,2,3,-1,-2,-3],%nan) , %nan );
assert_checkequal ( norm([])                    , 0 );
// Vector
x = [1, 2, 3, -4];
assert_checkalmostequal ( norm(x,1)     , sum(abs(x))               , eps );
assert_checkalmostequal ( norm(x,2)     , sqrt(sum(abs(x).*abs(x))) , eps );
assert_checkalmostequal ( norm(x,2)     , norm(x)                   , eps );
assert_checkalmostequal ( norm(x,-%inf) , min(abs(x))               , eps );
p = 0.5;
assert_checkalmostequal ( norm(x,p) , sum(abs(x).^p).^(1/p)     , eps );
p = 2.5;
assert_checkalmostequal ( norm(x,p) ,     sum(abs(x).^p).^(1/p) , eps );
assert_checkalmostequal ( norm(x,"inf") , max(abs(x))           , eps );
assert_checkalmostequal ( norm(x,"inf") , norm(x,%inf)          , eps );
assert_checkalmostequal ( norm(x,"fro") , norm(x,2)             , eps );
// Complex
x = x + %i*x;
assert_checkalmostequal ( norm(x,1)     , sum(abs(x))               , eps );
assert_checkalmostequal ( norm(x,2)     , sqrt(sum(abs(x).*abs(x))) , eps );
assert_checkalmostequal ( norm(x,2)     , norm(x)                   , eps );
assert_checkalmostequal ( norm(x,-%inf) , min(abs(x))               , eps );
p = 0.5;
// 100*%eps is needed for linux
assert_checkalmostequal ( norm(x,p) , max(abs(x))*sum((abs(x)/max(abs(x))).^p).^(1/p) , 100*%eps );
p = 2.5;
assert_checkalmostequal ( norm(x,p) , max(abs(x))*sum((abs(x)/max(abs(x))).^p).^(1/p) , 100*%eps );
assert_checkalmostequal ( norm(x,"inf") , max(abs(x))   , 100*%eps);
assert_checkalmostequal ( norm(x,"inf") , norm(x,%inf)  , 100*%eps);
// The Frobenius norm of this complex input x can be numerically complex,
// e.g. 7.7459667 - 1.147D-16i
// See http://bugzilla.scilab.org/show_bug.cgi?id=9204
// assert_checkalmostequal ( norm(x,'fro') , norm(x,2)  , 100*%eps  , %eps );

// Scalar

x = [1.23];
assert_checkalmostequal ( norm(x,1) , sum(abs(x))               , 100*%eps );
assert_checkalmostequal ( norm(x,2) , sqrt(sum(abs(x).*abs(x))) , 100*%eps );
assert_checkalmostequal ( norm(x,2) , norm(x)                   , 100*%eps );
p = 0.5;
assert_checkalmostequal ( norm(x,p) , sum(abs(x)^p)^(1/p) ,  100*%eps );
p = 2.5;
assert_checkalmostequal ( norm(x,p) ,     sum(abs(x)^p)^(1/p) , 100*%eps );
assert_checkalmostequal ( norm(x,"inf") , max(abs(x))         , 100*%eps);
assert_checkalmostequal ( norm(x,"inf") , norm(x,%inf)        , 100*%eps );
assert_checkalmostequal ( norm(x,"fro") , norm(x,2)           , 100*%eps );

// Matrices
a = rand(10, 10, "n");
assert_checkalmostequal ( norm(a,1) , max(sum(abs(a),"r"))               , 100*%eps );
assert_checkalmostequal ( norm(a,"inf") , max(sum(abs(a),"c"))           , 100*%eps );
assert_checkalmostequal ( norm(a,%inf) , max(sum(abs(a),"c"))            , 100*%eps );
assert_checkalmostequal ( norm(a,2) , max(svd(a))                        , 100*%eps );
assert_checkalmostequal ( norm(a,"fro") , norm(matrix(a,1,size(a,"*")),2), 100*%eps );

a = a + %i*a;
assert_checkalmostequal ( norm(a,1) , max(sum(abs(a),"r"))               , 100*%eps );
assert_checkalmostequal ( norm(a,"inf") , max(sum(abs(a),"c"))           , 100*%eps );
assert_checkalmostequal ( norm(a,%inf) , max(sum(abs(a),"c"))            , 100*%eps );
assert_checkalmostequal ( norm(a,2) , max(svd(a))                        , 100*%eps );
// See http://bugzilla.scilab.org/show_bug.cgi?id=9204
// assert_checkalmostequal ( norm(a,'fro') , norm(matrix(a,1,size(a,'*')),2), 100*%eps );

//
// Difficult cases for large/small vectors
//
// Norm 2
x = 1.e307 * [1 1];
assert_checkequal ( norm(x) , sqrt(2) * 1.e307 );
x = 1.e-307 * [1 1];
assert_checkalmostequal ( norm(x) , sqrt(2) * 1.e-307 , 1.e308);
// Norm f
x = 1.e307 * [1 1];
assert_checkequal ( norm(x,"f") , sqrt(2) * 1.e307 );
x = 1.e-307 * [1 1];
assert_checkequal ( norm(x,"f") , sqrt(2) * 1.e-307 );
//
// Difficult cases for large/small matrices
//
// Norm f - case 1 : n < m
x = 1.e307 * ones(10, 20);
assert_checkequal ( norm(x,"f") , sqrt(200) * 1.e307 );
x = 1.e-307 * ones(10, 20);
assert_checkequal ( norm(x,"f") , sqrt(200) * 1.e-307 );
// norm f - case 2 : n > m
x = 1.e307 * ones(20, 10);
assert_checkequal ( norm(x,"f") , sqrt(200) * 1.e307 );
x = 1.e-307 * ones(20, 10);
assert_checkequal ( norm(x,"f") , sqrt(200) * 1.e-307 );
//
// Special cases for zero vectors
//
// Norm 2 of a zero vector
x = [0 0 0];
assert_checkequal ( norm(x,2) , 0.0 );
// Norm f of a zero vector
x = zeros(4, 1);
assert_checkequal ( norm(x,"f") , 0.0 );
// Norm f of a zero matrix, case 1 n > m
x = zeros(4, 2);
assert_checkequal ( norm(x,"f") , 0.0 );
// Norm f of a zero matrix, case 2 m > n
x = zeros(2, 4);
assert_checkequal ( norm(x,"f") , 0.0 );

//
// Norm 2 performance check,
// See https://bugzilla.scilab.org/show_bug.cgi?id=5017
//
n = 100000;
x = ones(n, 1);
x(n+1) = 1.e9;
tic();
for i = 1:1000
    norm(x);
end
t = toc();
assert_checktrue( t < 4 );
