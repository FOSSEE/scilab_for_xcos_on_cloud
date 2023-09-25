// =============================================================================
// Scilab ( https://www.scilab.org/ ) - This file is part of Scilab
// Copyright (C) 2006-2008 - INRIA - Serge STEER <serge.steer@inria.fr>
//
//  This file is distributed under the same license as the Scilab package.
// =============================================================================

// <-- ENGLISH IMPOSED -->
// <-- NEED JVM -->

// <-- Non-regression test for bug 1768 -->
//
// <-- GitLab URL -->
// https://gitlab.com/scilab/scilab/-/issues/1768
//
// <-- Short Description -->
//    I just downloaded Scilab-4.0rc1.
//    Whenever I write a new function and try to write the relative help 
//    file, xmltohtml crashes. Apparently, it does not found the whatis file 
//    even if it was just created successfully

// <-- NO CHECK ERROR OUTPUT -->

function y=foo1(a,b)
  y=a+b
endfunction

T=help_skeleton('foo1');

mkdir(TMPDIR+"/bug_1768");
mkdir(TMPDIR+"/bug_1768/help");
mkdir(TMPDIR+"/bug_1768/help/en_US");

mputl(T,TMPDIR+"/bug_1768/help/en_US/foo1.xml");
index_file = xmltohtml(TMPDIR+"/bug_1768/help/en_US","Bug 1768 Manual");

if ~isdir(TMPDIR+"/bug_1768/help/en_US/scilab_en_US_help") then pause, end
if fileinfo(index_file) == [] then pause, end
