% Test file for function true()
% Matlab version: 7.9.0.529 (R2009b)

% TEST 1
res1 = true(2);
% TEST 2
res2 = true(3,5);
% TEST 3
res3 = true(4,4);
% TEST 4
res4 = true([10,10]);
% TEST 5
res5 = true(size([1 2]));
% TEST 6
res6 = true(m2sciUnknownDims([1,2]));
