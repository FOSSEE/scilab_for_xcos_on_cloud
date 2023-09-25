//<-- CLI SHELL MODE -->
// =============================================================================
// Scilab ( https://www.scilab.org/ ) - This file is part of Scilab
// Copyright (C) 2009 - INRIA - Serge STEER <serge.steer@inria.fr>
//
//  This file is distributed under the same license as the Scilab package.
// =============================================================================

// <-- Non-regression test for bug 4750 -->
//
// <-- GitLab URL -->
// https://gitlab.com/scilab/scilab/-/issues/4750
//
// <-- Short Description -->
//error in catenation of boolean arrays

cp1 = [%F %F %F;%F %F %F;%F %F %T];
cp2 = [%F %F %F;%F %F %F;%F %F %F];
o1=or(cp1,1);
if or(o1<>[%f,%f,%t]) then pause,end
o2=or(cp2,1);
if or(o2<>[%f,%f,%f]) then pause,end

a1=[o1,o2];
if or(a1<>[%f,%f,%t,%f,%f,%f]) then pause,end

a2=[o2,o1];
if or(a2<>[%f,%f,%f,%f,%f,%t]) then pause,end

a3=[o1;o2];
if or(a3<>[%f,%f,%t;%f,%f,%f]) then pause,end

a4=[o2;o1];
if or(a4<>[%f,%f,%f;%f,%f,%t]) then pause,end


a5=[o1;o1;o1;o1;o1];
if or(a5<>[%f,%f,%t;%f,%f,%t;%f,%f,%t;%f,%f,%t;%f,%f,%t]) then pause,end

