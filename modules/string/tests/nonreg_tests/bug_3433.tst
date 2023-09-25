// ============================================================================
// Scilab ( https://www.scilab.org/ ) - This file is part of Scilab
// Copyright (C) 2009 - DIGITEO - Allan CORNET
//
//  This file is distributed under the same license as the Scilab package.
// ============================================================================

// <-- CLI SHELL MODE -->

// <-- Non-regression test for bug 3433 -->
//
// <-- GitLab URL -->
// https://gitlab.com/scilab/scilab/-/issues/4141
//
// Short description:
// length returns a incorrect size
//==============================================================
 tab_ref = [
"世界您好",
"азеазея",
"ハロー・ワールド",
"เฮลโลเวิลด์",
"حريات وحقوق",
"תוכנית"];

length_ref = [
    4,   
    7,   
    8,   
    11,  
    11,  
    6]; 

for i = 1:size(tab_ref,'*')
 if ( length(tab_ref(i)) <> length_ref(i) ) then pause,end
end


tab_ref = [
"世界您好",
"азеазея",
"ハロー・ワールド",
"תוכנית"];

ref  = [
 '世'   ,
 'а'   ,
 'ハ'   ,
 'ת'   ];


for i = 1:size(tab_ref,'*')
 r = part(tab_ref(i),1);
 if r <> ref(i) then pause,end
end

if part("世界您好",3:4) <> '您好' then pause,end