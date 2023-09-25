// =============================================================================
// Scilab ( https://www.scilab.org/ ) - This file is part of Scilab
// Copyright (C) 2008 - INRIA - Serge Steer
//
//  This file is distributed under the same license as the Scilab package.
// =============================================================================

// <-- TEST WITH GRAPHIC -->

clf();a=gca();a.axes_visible="on";
xpoly([0 1],[1 1]/2);
e1=gce();
c=captions(e1,"test");
if or(c.text <> "test") then pause,end
if or(c.links <> e1) then pause,end
c2=captions(e1,"XXXX");
if or(c2.text <> "XXXX") then pause,end

if size(a.children,"*") <>2 then pause,end
e1.foreground=5;e1.thickness=3;
xpoly([0 1],0.2+[1 1]/2);
e2=gce();e2.mark_mode="on";e2.line_mode="off";e2.mark_style=3;
c=captions([e2,e1],["XXXX";"YYY"]);


if or(c.text <> ["XXXX";"YYY"]) then pause,end
if or(c.links <> [e2,e1]) then pause,end

c=captions([],[]);
if c<>[]  then pause,end

if execstr("captions([e1],[''XXXX'';''YYY''])","errcatch")==0 then pause,end
if execstr("captions([e1,e2],[''XXXX''])","errcatch")==0 then pause,end

if execstr("captions(e1,[])","errcatch")==0 then pause,end

//following tests should be visual
clf();a=gca();a.axes_visible="on";a.box="on";a.margins(4)=0.35;
E=[];
for y= 0:0.1:1
    xpoly([0 1],[1 1]*y);
    e=gce();e.foreground=10*y;
    E=[e E];
end
c=captions(E,string( 0:0.1:1));
sleep(2000)


clf();a=gca();a.axes_visible="on";a.box="on";
xpoly([0 1],[1 1]/2);
c=captions(gce(),"test");


//test of different possible locations
clf();f=gcf();
x=[0:0.1:2*%pi]';
plot2d(x,[sin(x) sin(2*x) sin(3*x)],[1 -2 3])
E=get(gce(),"children");
E(1).thickness=3;
E(2).mark_size_unit="point";E(2).mark_size=2;

a=gca();a.box="on";a.margins(2)=0.3;a.margins(1)=0.25;


c=captions(E,["sin(x)" "sin(2*x)" "sin(3*x)"]);
c.fill_mode="on";c.background=2;

locations=["upper_left","upper_right","lower_right","lower_left"];
locations=["in_"+locations "out_"+locations "lower_caption" "upper_caption"];

for l=locations;
    c.legend_location=l;
    sleep(2000)
end
c.legend_location="by_coordinates";c.position=[0.5 1/8];
sleep(2000)


// captions with paches
clf();a=gca();
a.data_bounds=[-1 -1;2 2];a.axes_visible="on";
x=[0:0.1:2*%pi]';
xpoly(cos(x),sin(x))
E=gce();
xpoly(1+0.3*cos(x),1+0.3*sin(x))
E=[gce(), E];
xpoly(1.5+0.1*cos(x),1.5+0.1*sin(x))
E=[gce(), E];
for k=1:3
    E(4-k).foreground=k;
    E(4-k).background=k+1;
    E(4-k).fill_mode="on";
    E(4-k).closed="on";
end
E(3).thickness=3;
c=captions(E,["A" "B" "C"]);
c.legend_location="in_upper_right";

