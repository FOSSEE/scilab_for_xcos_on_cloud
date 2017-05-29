// =============================================================================
// Scilab ( http://www.scilab.org/ ) - This file is part of Scilab
// Copyright (C) 2011 - INRIA - Serge Steer
//
//  This file is distributed under the same license as the Scilab package.
// =============================================================================

// <-- TEST WITH GRAPHIC -->
// <-- ENGLISH IMPOSED -->

// <-- Non-regression test for bug 9269 -->
//
// <-- Bugzilla URL -->
// http://bugzilla.scilab.org/show_bug.cgi?id=9269
//
// <-- Short Description -->
// Specified graphic entities for legend() are drawn in reverse order.
x = 0:10;
y1 = x; y2 = y1+1; y3 = y1+2;

scf(0);clf();
plot(x,y1,"b-v",x,y2,"r--^",x,y3,"k--o");
l=legend("is blue ?","is red ?","is black ?");
assert_checkequal(l.links(1:3).foreground,[1,5,2]); //black red blue

scf(0);clf();
plot(x,y1,"b-v"); h1 = gce(); // first curve (in blue)
plot(x,y2,"r--^"); h2 = gce();// second curve (in red)
plot(x,y3,"k--o"); h3 = gce();// third curve (in black)
l= legend([h1,h2,h3],"is blue ?","is red ?","is black ?");
assert_checkequal(l.links(1:3).foreground,[1,5,2]); //black red blue

delete(l)
l= legend(h1,h2,h3,"is blue ?","is red ?","is black ?");
assert_checkequal(l.links(1:3).foreground,[1,5,2]); //black red blue

scf(0);clf();
plot(x,y1,"b-v",x,y2,"r--^"); h1 = gce(); // first curve (in blue) and second (in red)
plot(x,y3,"k--o"); h3 = gce();// third curve (in black)
l=legend([h1,h3],"is blue ?","is red ?","is black ?");
assert_checkequal(l.links(1:3).foreground,[1,5,2]); //black red blue


clear;
x = 0:9;
y = rand(10,7);
scf(1);
clf;
plot(x, y);
NameList = ["aze" "rty" "uio" "qsd" "fgh" "jkl" "wxc"];

MyOrder = [4 1 5 3]; // My selection in My order

ha = gca();          // handle on axis
hc = ha.children(1); // handle on compound
he = hc.children;    // handle on polylines
l=legend(he(MyOrder), NameList(MyOrder));
assert_checkequal(l.links(4:-1:1).foreground,he(MyOrder).foreground);

