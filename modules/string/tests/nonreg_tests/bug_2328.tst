// =============================================================================
// Scilab ( https://www.scilab.org/ ) - This file is part of Scilab
// Copyright (C) 2006-2008 - INRIA - Serge STEER <serge.steer@inria.fr>
//
//  This file is distributed under the same license as the Scilab package.
// =============================================================================

// <-- ENGLISH IMPOSED -->

// <-- CLI SHELL MODE -->

// <-- Non-regression test for bug 2328 -->
//
// <-- GitLab URL -->
// https://gitlab.com/scilab/scilab/-/issues/2328
//
// <-- Short Description -->
//The built-in function part() generates an error report when the first
//argument is []. For consistency, it should return a [] result, rather
//than generate an error.

if part([],1)<>[] then pause,end

//testing overloading
function t=%p_part(t,p)
    n=horner(p,length(t))
    t=part(t,n)
endfunction

if part("xyz",$)<>"z" then pause,end

//testing overloading
function t=%s_part(t,p)
    t=t(p)
endfunction

if part([1 2 3],2)<>2 then pause,end
