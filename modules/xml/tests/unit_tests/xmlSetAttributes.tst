// ,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,=
// Scilab ( https://www.scilab.org/ ) - This file is part of Scilab
// Copyright (C) 2011 - DIGITEO - Sylvestre LEDRU
//
//  This file is distributed under the same license as the Scilab package.
// ,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,=

// <-- CLI SHELL MODE -->

doc = xmlReadStr("<root><a><b><c></c></b></a><b></b></root>");

// Retrieve all the nodes
xp = xmlXPath(doc, "//a");

// Add the attributes hello="world" and bonjour="monde" to all the nodes
xmlSetAttributes(xp, ["hello" "world" ; "bonjour" "monde"]);
doc2 = xmlReadStr("<root><a hello=""world"" bonjour=""monde""><b><c></c></b></a><b></b></root>");
assert_checkequal(xmlDump(doc),xmlDump(doc2));
xp = xmlXPath(doc, "//*/*/c");
xmlSetAttributes(xp, ["hello" "world" ; "bonjour" "monde"]);
doc2 = xmlReadStr("<root><a hello=""world"" bonjour=""monde""><b><c hello=""world"" bonjour=""monde""></c></b></a><b></b></root>");
assert_checkequal(xmlDump(doc),xmlDump(doc2));


// Add the attribute foo="bar" to the first child of root
xmlSetAttributes(doc.root.children(1), ["foo" "bar"]);
doc2 = xmlReadStr("<root><a hello=""world"" bonjour=""monde"" foo=""bar""><b><c hello=""world"" bonjour=""monde""></c></b></a><b></b></root>");
assert_checkequal(xmlDump(doc),xmlDump(doc2));


// Add the attribute bar="foo" to all the children of root
xmlSetAttributes(doc.root.children, ["bar" "foo2"]);
doc2 = xmlReadStr("<root><a hello=""world"" bonjour=""monde"" foo=""bar"" bar=""foo2""><b><c hello=""world"" bonjour=""monde""></c></b></a><b bar=""foo2""></b></root>");
assert_checkequal(xmlDump(doc),xmlDump(doc2));

// Add the attribute truc="machin" to the list of the attributes of the second <b>
xmlSetAttributes(doc.root.children(2).attributes, ["truc" "machin"]);
doc2 = xmlReadStr("<root><a hello=""world"" bonjour=""monde"" foo=""bar"" bar=""foo2""><b><c hello=""world"" bonjour=""monde""></c></b></a><b bar=""foo2"" truc=""machin""></b></root>");
assert_checkequal(xmlDump(doc),xmlDump(doc2));

xmlDelete(doc);
xmlDelete(doc2);


doc = xmlReadStr("<root><a><b><c></c></b></a><b></b></root>");

xp = xmlXPath(doc, "//accc");

a=xmlSetAttributes(xp, ["hello" "world" ; "bonjour" "monde"]);
assert_checkequal(length(a),0);
