//<-- CLI SHELL MODE -->
// =============================================================================
// Scilab ( https://www.scilab.org/ ) - This file is part of Scilab
// Copyright (C) ????-2008 - INRIA - Serge Steer
//
//  This file is distributed under the same license as the Scilab package.
// =============================================================================
//state space
a=[1 2;0 4];b=[1;1];c=[1 2];
sl=syslin('c',a,b,c);
if or(sl.A<>a)|or(sl.B<>b)|or(sl.C<>c)|or(sl.D<>0)|or(sl.dt<>'c') then pause,end
sl=syslin('d',a,b,c);
if or(sl.A<>a)|or(sl.B<>b)|or(sl.C<>c)|or(sl.D<>0)|or(sl.dt<>'d') then pause,end
sl=syslin(0.1,a,b,c);
if or(sl.A<>a)|or(sl.B<>b)|or(sl.C<>c)|or(sl.D<>0)|or(sl.dt<>0.1) then pause,end

sl=syslin('c',a,b,c,1);
if or(sl.A<>a)|or(sl.B<>b)|or(sl.C<>c)|or(sl.D<>1)|or(sl.dt<>'c') then pause,end
sl=syslin('d',a,b,c,1);
if or(sl.A<>a)|or(sl.B<>b)|or(sl.C<>c)|or(sl.D<>1)|or(sl.dt<>'d') then pause,end
sl=syslin(0.1,a,b,c,1);
if or(sl.A<>a)|or(sl.B<>b)|or(sl.C<>c)|or(sl.D<>1)|or(sl.dt<>0.1) then pause,end

sl=syslin('c',a,b,c,1+%s);
if or(sl.A<>a)|or(sl.B<>b)|or(sl.C<>c)|or(sl.D<>1+%s)|or(sl.dt<>'c') then pause,end
sl=syslin('d',a,b,c,1+%s);
if or(sl.A<>a)|or(sl.B<>b)|or(sl.C<>c)|or(sl.D<>1+%s)|or(sl.dt<>'d') then pause,end
sl=syslin(0.1,a,b,c,1+%s);
if or(sl.A<>a)|or(sl.B<>b)|or(sl.C<>c)|or(sl.D<>1+%s)|or(sl.dt<>0.1) then pause,end

b=eye(2,2);d=zeros(1,2);

sl=syslin('c',a,b,c,d);
if or(sl.A<>a)|or(sl.B<>b)|or(sl.C<>c)|or(sl.D<>d)|or(sl.dt<>'c') then pause,end
sl=syslin('d',a,b,c,d);
if or(sl.A<>a)|or(sl.B<>b)|or(sl.C<>c)|or(sl.D<>d)|or(sl.dt<>'d') then pause,end
sl=syslin(0.1,a,b,c,d);
if or(sl.A<>a)|or(sl.B<>b)|or(sl.C<>c)|or(sl.D<>d)|or(sl.dt<>0.1) then pause,end

c=[];d=[]
sl=syslin('c',a,b,c,d);
if or(sl.A<>a)|or(sl.B<>b)|or(sl.C<>c)|or(sl.D<>d)|or(sl.dt<>'c') then pause,end
sl=syslin('d',a,b,c,d);
if or(sl.A<>a)|or(sl.B<>b)|or(sl.C<>c)|or(sl.D<>d)|or(sl.dt<>'d') then pause,end
sl=syslin(0.1,a,b,c,d);
if or(sl.A<>a)|or(sl.B<>b)|or(sl.C<>c)|or(sl.D<>d)|or(sl.dt<>0.1) then pause,end

c=[1 2];d=[];b=[];
sl=syslin('c',a,b,c,d);
if or(sl.A<>a)|or(sl.B<>b)|or(sl.C<>c)|or(sl.D<>d)|or(sl.dt<>'c') then pause,end
sl=syslin('d',a,b,c,d);
if or(sl.A<>a)|or(sl.B<>b)|or(sl.C<>c)|or(sl.D<>d)|or(sl.dt<>'d') then pause,end
sl=syslin(0.1,a,b,c,d);
if or(sl.A<>a)|or(sl.B<>b)|or(sl.C<>c)|or(sl.D<>d)|or(sl.dt<>0.1) then pause,end

a=[];b=[];c=[];d=1;
sl=syslin('c',a,b,c,d);
if or(sl.A<>a)|or(sl.B<>b)|or(sl.C<>c)|or(sl.D<>d)|or(sl.dt<>'c') then pause,end
sl=syslin('d',a,b,c,d);
if or(sl.A<>a)|or(sl.B<>b)|or(sl.C<>c)|or(sl.D<>d)|or(sl.dt<>'d') then pause,end
sl=syslin(0.1,a,b,c,d);
if or(sl.A<>a)|or(sl.B<>b)|or(sl.C<>c)|or(sl.D<>d)|or(sl.dt<>0.1) then pause,end

  
//transfer functions
num=1+%s;den=1-%s+3*%s^2;simp_mode(%f);
sl=syslin('c',num,den);
if or(sl.num<>num)|or(sl.den<>den)|or(sl.dt<>'c') then pause,end

sl=syslin('c',num./den);
if or(sl.num<>num)|or(sl.den<>den)|or(sl.dt<>'c') then pause,end

num=1+%z;den=1-%z+3*%z^2;simp_mode(%f);
sl=syslin('d',num,den);
if or(sl.num<>num)|or(sl.den<>den)|or(sl.dt<>'d') then pause,end
sl=syslin('d',num./den);

num=[1+%s %s^2];den=(1-%s+3*%s^2)*ones(num);simp_mode(%f);
sl=syslin('c',num,den);
if or(sl.num<>num)|or(sl.den<>den)|or(sl.dt<>'c') then pause,end

num=[1+%z 2];den=(1-%z+3*%z^2)*ones(num);simp_mode(%f);
sl=syslin('c',num./den);
if or(sl.num<>num)|or(sl.den<>den)|or(sl.dt<>'c') then pause,end
