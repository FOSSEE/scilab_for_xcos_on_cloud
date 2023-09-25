// =============================================================================
// Scilab ( https://www.scilab.org/ ) - This file is part of Scilab
// Copyright (C) 2011 - INRIA - Serge Steer
//
//  This file is distributed under the same license as the Scilab package.
// =============================================================================

// <-- CLI SHELL MODE -->
//
// <-- ENGLISH IMPOSED -->
//
// <-- Non-regression test for bug 9836 -->
//
// <-- GitLab URL -->
// https://gitlab.com/scilab/scilab/-/issues/9836 
//
// <-- Short Description -->
// repfreq failed due to "singular problem

s=%s;
num=1+8*s-8*s^2-16*s^3;
den=32*s^2+64*s^3+32*s^4+8*s^5+s^6;
H=syslin('c',num,den); //The system includes 2 integrators


f=2^(-29);//evaluate at a very low frequency

r_ref=-2.2815502244818564e14-imult(1.60210611463226081e7);//computed with Maple   

assert_checkalmostequal(repfreq(H,f),r_ref);

S1=syslin('c',cont_frm(H.num,H.den));

assert_checkalmostequal(repfreq(S1,f),r_ref);

//using tf2ss make the error explode, just check if repfreq returns
//without error (warning must be issued)
S2=tf2ss(H);
assert_checkequal(execstr("repfreq(S2,f)","errcatch"),0);
