//<-- CLI SHELL MODE -->
// =============================================================================
// Scilab ( https://www.scilab.org/ ) - This file is part of Scilab
// Copyright (C) 2010 - DIGITEO - Allan CORNET
//
//  This file is distributed under the same license as the Scilab package.
// =============================================================================

// <-- Non-regression test for bug 6399 -->

// <-- Short Description -->
// [tempfd,ierr]=file('open',pathconvert(TMPDIR)+gettext("unitfile.dat"),"old"); returned a error
// in previous version (compatibility) returns values
// 
//
// <-- GitLab URL -->
// https://gitlab.com/scilab/scilab/-/issues/6399
//

// Lhs == 2 no error only output
ierr = execstr('[tempfd,iErrf]=file(''open'',pathconvert(TMPDIR)+gettext(''unitfile.dat''),''old'');','errcatch');
if ierr <> 0 then pause,end
if tempfd <> [] then pause,end
if iErrf <> 240 then pause,end

// Lhs <> 2 error 240 sended
ierr = execstr('file(''open'',pathconvert(TMPDIR)+gettext(''unitfile.dat''),''old'');','errcatch');
if ierr <> 240 then pause,end
