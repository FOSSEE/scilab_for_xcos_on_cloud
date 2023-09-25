// =============================================================================
// Scilab ( https://www.scilab.org/ ) - This file is part of Scilab
// Copyright (C) 2005-2010 - INRIA - Serge.Steer@inria.fr
//
//  This file is distributed under the same license as the Scilab package.
// =============================================================================
// <-- NOT FIXED -->
// <-- Non-regression test for bug6816 -->
//
// <-- GitLab URL -->
// https://gitlab.com/scilab/scilab/-/issues/6816
//
// <-- Short Description -->
//incoherent extraction when there is no index M()
M=33;l=list(M);
if or(M()<>M) then pause,end
if or(l(1)()<>M) then pause,end

M='xxx';l=list(M);
if or(M()<>M) then pause,end
if or(l(1)()<>M) then pause,end

M=%s+1;l=list(M);
if or(M()<>M) then pause,end
if or(l(1)()<>M) then pause,end


M=tlist('foo');l=list(M);
if or(M()<>M) then pause,end
if or(l(1)()<>M) then pause,end
 

clear M
M.a=33;;l=list(M);
if or(M()<>M) then pause,end
if or(l(1)()<>M) then pause,end
 
