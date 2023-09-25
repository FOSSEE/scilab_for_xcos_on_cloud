//<-- CLI SHELL MODE -->
// =============================================================================
// Scilab ( https://www.scilab.org/ ) - This file is part of Scilab
// Copyright (C) 2009 - INRIA - Serge Steer
//
//  This file is distributed under the same license as the Scilab package.
// =============================================================================

// <-- Non-regression test for bug 4077 -->
//
// <-- GitLab URL -->
// https://gitlab.com/scilab/scilab/-/issues/4077
//
// <-- Short Description -->
// problem with exec and try
warning('off');
mputl(['function r=circe()'
'  for j=1,end'
'  try b=0,end'
'  r= 0'       
'endfunction'],TMPDIR+'/circe.sci');
for i=1,exec(TMPDIR+'/circe.sci'),end
if type(circe)<>13 then pause,end
warning('on');
