% Test file for function balance()
% Matlab version: 7.9.0.529 (R2009b)

% TEST 1
res1 = balance([]);
% TEST 2
res2 = balance(m2sciUnknownType([]));
% TEST 3
res3 = balance(m2sciUnknownDims([]));
% TEST 4
res4 = balance([1]);
% TEST 5
res5 = balance([1,2,3;4,5,6;7,8,0]);
% TEST 6
res6 = balance(m2sciUnknownType([1]));
% TEST 7
res7 = balance(m2sciUnknownType([1,2,3;4,5,6;7,8,0]));
% TEST 8
res8 = balance(m2sciUnknownDims([1]));
% TEST 9
res9 = balance(m2sciUnknownDims([1,2,3;4,5,6;7,8,0]));
% TEST 10
res10 = balance([i]);
% TEST 11
res11 = balance([i,2i,3i;4i,5i,6i;7i,8i,0]);
% TEST 12
res12 = balance(m2sciUnknownType([i]));
% TEST 13
res13 = balance(m2sciUnknownType([i,2i,3i;4i,5i,6i;7i,8i,0]));
% TEST 14
res14 = balance(m2sciUnknownDims([i]));
% TEST 15
res15 = balance(m2sciUnknownDims([i,2i,3i;4i,5i,6i;7i,8i,0]));
% TEST 16
[res16,res17] = balance([]);
% TEST 17
[res18,res19] = balance(m2sciUnknownType([]));
% TEST 18
[res20,res21] = balance(m2sciUnknownDims([]));
% TEST 19
[res22,res23] = balance([1]);
% TEST 20
[res24,res25] = balance([1,2,3;4,5,6;7,8,0]);
% TEST 21
[res26,res27] = balance(m2sciUnknownType([1]));
% TEST 22
[res28,res29] = balance(m2sciUnknownType([1,2,3;4,5,6;7,8,0]));
% TEST 23
[res30,res31] = balance(m2sciUnknownDims([1]));
% TEST 24
[res32,res33] = balance(m2sciUnknownDims([1,2,3;4,5,6;7,8,0]));
% TEST 25
[res34,res35] = balance([i]);
% TEST 26
[res36,res37] = balance([i,2i,3i;4i,5i,6i;7i,8i,0]);
% TEST 27
[res38,res39] = balance(m2sciUnknownType([i]));
% TEST 28
[res40,res41] = balance(m2sciUnknownType([i,2i,3i;4i,5i,6i;7i,8i,0]));
% TEST 29
[res42,res43] = balance(m2sciUnknownDims([i]));
% TEST 30
[res44,res45] = balance(m2sciUnknownDims([i,2i,3i;4i,5i,6i;7i,8i,0]));
