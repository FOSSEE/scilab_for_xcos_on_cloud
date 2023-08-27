// ===================================================================
// Scilab ( http://www.scilab.org/ ) - This file is part of Scilab
// Copyright (C) 2020 - Samuel GOUGEON
//
//  This file is distributed under the same license as the Scilab package.
// ===================================================================
//
// <-- CLI SHELL MODE -->
// <-- NO CHECK REF -->
// <-- ENGLISH IMPOSED -->
//
//====================================================================
//         Tests of multilevel gsort() for decimal numbers
//====================================================================
/*
We sort numbers,
 - first: by integer part, with int()
 - second: by fractional part, with a custom function.
*/
function r = get_frac(d)
    r = d - int(d)
endfunction
crit = list(int, get_frac);

// Initial data
// ------------
d = [
   2.3   1.5   1.7   2.1   2.3   2.6   1.9   2.6
   0.    2.8   2.1   0.8   1.8   2.9   1.6   1.
   1.9   1.5   0.3   0.4   2.3   2.7   0.    0.8
   2.6   1.8   2.3   0.2   0.8   1.    1.6   2.9
   2.5   1.8   2.3   0.5   1.4   1.9   2.3   1.3
   1.5   1.5   2.1   2.9   0.4   2.7   1.    0.2
  ];

// "g" multilevel sorting
// ----------------------
[r, k] = gsort(d, "g", ["i" "d"], crit);
ref = [
   0.8   0.3   1.9   1.6   1.4   2.9   2.6   2.3
   0.8   0.2   1.9   1.6   1.3   2.9   2.6   2.3
   0.8   0.2   1.8   1.5   1.    2.8   2.5   2.3
   0.5   0.    1.8   1.5   1.    2.7   2.3   2.1
   0.4   0.    1.8   1.5   1.    2.7   2.3   2.1
   0.4   1.9   1.7   1.5   2.9   2.6   2.3   2.1
  ];
kref = [
  20  15  35  38  29  32  31  25
  28  22  37  40  47  46  43  27
  45  48  10   6  34   8   5  41
  23   2  11   7  42  33   1  14
  21  39  26   9  44  36  16  18
  30   3  13  12  24   4  17  19
  ];
assert_checkequal(r, ref);
assert_checkequal(k, kref);

// "r" and "c" multilevel sorting
// ------------------------------
[r, k] = gsort(d, "c", ["i" "d"], crit);
ref = [
   1.9   1.7   1.5   2.6   2.6   2.3   2.3   2.1
   0.8   0.    1.8   1.6   1.    2.9   2.8   2.1
   0.8   0.4   0.3   0.    1.9   1.5   2.7   2.3
   0.8   0.2   1.8   1.6   1.    2.9   2.6   2.3
   0.5   1.9   1.8   1.4   1.3   2.5   2.3   2.3
   0.4   0.2   1.5   1.5   1.    2.9   2.7   2.1
  ];
kref = [
  7  3  2  6  8  1  5  4
  4  1  5  7  8  6  2  3
  8  4  3  7  1  2  6  5
  5  4  2  7  6  8  1  3
  4  6  2  5  8  1  3  7
  5  8  1  2  7  4  6  3
  ];
assert_checkequal(r, ref);
assert_checkequal(k, kref);
//
[r, k] = gsort(d, "r", ["d" "i"], crit);
ref = [
   2.3   2.8   2.1   2.1   2.3   2.6   2.3   2.6
   2.5   1.5   2.1   2.9   2.3   2.7   1.    2.9
   2.6   1.5   2.3   0.2   1.4   2.7   1.6   1.
   1.5   1.5   2.3   0.4   1.8   2.9   1.6   1.3
   1.9   1.8   1.7   0.5   0.4   1.    1.9   0.2
   0.    1.8   0.3   0.8   0.8   1.9   0.    0.8
  ];
kref = [
  1  2  2  1  1  1  5  1
  5  1  6  6  3  3  6  4
  4  3  4  4  5  6  2  2
  6  6  5  3  2  2  4  5
  3  4  1  5  6  4  1  6
  2  5  3  2  4  5  3  3
  ];
assert_checkequal(r, ref);
assert_checkequal(k, kref);

// Lexicographic multilevel sorting
// --------------------------------
d = [
   0.1   0.1   1.1   0.1   0.1   1.    0.1   0.
   1.    1.    1.1   0.    1.    1.1   0.    1.
   0.1   0.1   0.1   0.    1.1   0.1   0.    0.
   0.    0.    0.1   1.    1.    1.    1.    0.1
   1.1   1.    1.1   0.1   1.    1.1   0.1   0.1
   1.1   0.1   0.1   0.1   1.    0.1   0.    0.
    ];
[r, k] = gsort(d, "lr", ["i" "d"], crit);
ref = [
   0.1   0.1   0.1   0.    1.1   0.1   0.    0.
   0.1   0.1   1.1   0.1   0.1   1.    0.1   0.
   0.    0.    0.1   1.    1.    1.    1.    0.1
   1.1   0.1   0.1   0.1   1.    0.1   0.    0.
   1.1   1.    1.1   0.1   1.    1.1   0.1   0.1
   1.    1.    1.1   0.    1.    1.1   0.    1.
  ];
assert_checkequal(r, ref);
assert_checkequal(k', [3  1  4  6  5  2]);

//
[r, k] = gsort(d, "lc", ["d" "i"], crit);
ref = [
   1.    1.1   0.    0.1   0.1   0.1   0.1   0.1
   1.1   1.1   1.    1.    1.    1.    0.    0.
   0.1   0.1   0.    1.1   0.1   0.1   0.    0.
   1.    0.1   0.1   1.    0.    0.    1.    1.
   1.1   1.1   0.1   1.    1.    1.1   0.1   0.1
   0.1   0.1   0.    1.    0.1   1.1   0.    0.1
  ];
assert_checkequal(r, ref);
assert_checkequal(k, [6  3  8  5  2  1  7  4]);
