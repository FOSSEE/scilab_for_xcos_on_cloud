// =============================================================================
// Scilab ( https://www.scilab.org/ ) - This file is part of Scilab
// Copyright (C) 2012 - Scilab Enterprises - Calixte DENIZET
//
//  This file is distributed under the same license as the Scilab package.
// =============================================================================
//
// <-- CLI SHELL MODE -->
//
// <-- Non-regression test for bug 11487 -->
//
// <-- GitLab URL -->
// https://gitlab.com/scilab/scilab/-/issues/11487
//
// <-- Short Description -->
// Infinite loop when a list was inserted into itself.
//

xml=["<root>";"<a>hello</a>";"<a>wolrd</a>";"</root>"];
expected=["<?xml version=""1.0""?>";"<root>";"  <a>hello</a>";"  <a>hello</a>";"  <a>wolrd</a>";"  <a>hello</a>";"  <a>hello</a>";"  <a>wolrd</a>";"</root>"];
doc=xmlReadStr(xml);
xp=xmlXPath(doc, "//root");
c=xp(1).children;
doc.root.children(2)=c;
doc.root.children(size(doc.root.children, "*") + 1)=c;
result=xmlDump(doc);
xmlDelete(doc);
assert_checkequal(expected, result);
