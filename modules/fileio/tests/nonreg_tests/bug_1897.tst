// =============================================================================
// Scilab ( https://www.scilab.org/ ) - This file is part of Scilab
// Copyright (C) 2008 - INRIA - Serge Steer
//
//  This file is distributed under the same license as the Scilab package.
// =============================================================================

// <-- CLI SHELL MODE -->

// <-- Non-regression test for bug 1897 -->
//
// <-- GitLab URL -->
// https://gitlab.com/scilab/scilab/-/issues/1897
//
// <-- Short Description -->
//swap errors when wapping double precision numbers
n=10921;
y=linspace(0,10,n);
u=mopen(TMPDIR+'/test','wb');mput(y,'db',u);mclose(u);                    
u=mopen(TMPDIR+'/test','rb');yy=mget(size(y,'*'),'db',u);mclose(u);       
k=find(yy<>y);
if k<>[] then pause,end

n=10921;
y=linspace(0,10,n);
u=mopen(TMPDIR+'/test','wb');mput(y,'dl',u);mclose(u);                    
u=mopen(TMPDIR+'/test','rb');yy=mget(size(y,'*'),'dl',u);mclose(u);       
k=find(yy<>y);
if k<>[] then pause,end
