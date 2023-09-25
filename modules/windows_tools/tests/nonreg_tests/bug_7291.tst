// =============================================================================
// Scilab ( https://www.scilab.org/ ) - This file is part of Scilab
// Copyright (C) 2010 - DIGITEO - Allan CORNET
//
//  This file is distributed under the same license as the Scilab package.
// =============================================================================
//
// <-- CLI SHELL MODE -->
//
// <-- Non-regression test for bug 7291 -->
//
// <-- GitLab URL -->
// https://gitlab.com/scilab/scilab/-/issues/7291
//
// <-- Short Description -->
// unix('') and dos('') returned a wrong messsage in console

r = unix('');
if r <> 1 then pause,end

[a,b] = dos('');
if b <> %f then pause,end
if a <> [] then pause,end

[a,b] = dos('', '-echo');
if b <> %f then pause,end
if a <> [] then pause,end
