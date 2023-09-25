// =============================================================================
// Scilab ( https://www.scilab.org/ ) - This file is part of Scilab
// Copyright (C) 2007-2008 - INRIA - Serge STEER <serge.steer@inria.fr>
//
//  This file is distributed under the same license as the Scilab package.
// =============================================================================

// <-- CLI SHELL MODE -->

// <-- Non-regression test for bug 2970 -->
//
// <-- GitLab URL -->
// https://gitlab.com/scilab/scilab/-/issues/2970
//
// <-- Short Description -->
//-->u=mopen('foo','wb');

//-->mput(int32(1996),'l',u)
//Warning !!!
//Scilab has found a critical error (EXCEPTION_ACCESS_VIOLATION)

u = mopen(TMPDIR+filesep()+'foo','wb');
mput(int32(1996),'l',u)
mclose(u);

u = mopen(TMPDIR+filesep()+'foo','rb');
r = mget(u,'l');
mclose(u);

if ( r <> int32(1996) ) then pause,end
