// =============================================================================
// Scilab ( https://www.scilab.org/ ) - This file is part of Scilab
// Copyright (C) 2013 - Scilab Enterprises - Sylvestre Ledru
// Copyright (C) 2013 - Scilab Enterprises - Calixte Denizet
//
//  This file is distributed under the same license as the Scilab package.
// =============================================================================

c = jcompile("TestDirectBuffer",["import java.nio.DoubleBuffer;";
"public class TestDirectBuffer {";
"public static void increment(DoubleBuffer x) {";
"for (int i = 0; i < x.capacity(); i++) x.put(i, x.get(i) + 1);";
"}";
"}"])
a = 1:10000;
b = a + 1; // only used to compare with the following...
jinvoke_db(c, "increment", "a");
assert_checktrue(and(a==b));

jremove c;
