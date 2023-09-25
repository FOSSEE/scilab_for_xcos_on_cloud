// =============================================================================
// Scilab ( https://www.scilab.org/ ) - This file is part of Scilab
// Copyright (C) 2010 - INRIA - Serge Steer
//
//  This file is distributed under the same license as the Scilab package.
// =============================================================================

// <-- CLI SHELL MODE -->

// <-- Non-regression test for bug 4783 -->
//
// <-- GitLab URL -->
// https://gitlab.com/scilab/scilab/-/issues/4783
//
// <-- Short Description -->
// comparison between sparse complex matrix and a full one is wrong when the sparse matrix contains a full zero row.

C=sparse([1 1+2*%i;0 0]);
D=full(C);
if ~and(full(D==C)) then pause,end
if or(full(D<>C)) then pause,end
if ~and(full(C==D)) then pause,end
if or(full(C<>D)) then pause,end


//real case = OK
C=sparse([1 2;0 0]);
D=full(C);
if ~and(full(D==C)) then pause,end
if or(full(D<>C)) then pause,end
if ~and(full(C==D)) then pause,end
if or(full(C<>D)) then pause,end

