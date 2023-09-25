// =============================================================================
// Scilab ( https://www.scilab.org/ ) - This file is part of Scilab
// Copyright (C) 2015 - Scilab Enterprises - Cedric Delamarre
//
//  This file is distributed under the same license as the Scilab package.
// =============================================================================
//
// <-- CLI SHELL MODE -->
// <-- Non-regression test for bug 14049 -->
//
// <-- GitLab URL -->
// https://gitlab.com/scilab/scilab/-/issues/14049
//
// <-- Short Description -->
// genlib  hangs if an unexpected endfunction occurs

mkdir(TMPDIR+filesep()+"bug_14049");
fun = [ "function r=foo()"
"x=1"
"endfunction"
"endfunction"];

mputl(fun, TMPDIR+filesep()+"bug_14049"+filesep()+"bug_14049.sce");
genlib("bug_14049lib",TMPDIR+filesep()+"bug_14049",%t);
