// =============================================================================
// Scilab ( http://www.scilab.org/ ) - This file is part of Scilab
// Copyright (C) 2008 - INRIA - Serge Steer
// Copyright (C) 2010 - DIGITEO - Michael Baudin
//
//  This file is distributed under the same license as the Scilab package.
// =============================================================================

// <-- CLI SHELL MODE -->
// <-- NO CHECK REF -->

// Maple code used to create reference
// Digits := 40:
// writeto("cotd.ref"): interface(prettyprint = 0): 
// for i from -179 to 179 do if (i<>0) then print(i, evalf[30](cot(i*Pi/180), 30)) end end do; 
// writeto(terminal):
pi=%pi;eps=%eps;Inf=%inf;NaN=%nan; //used to make following code runnable under Matlab
ieee(2);
ref=[-179, 57.2899616307594246872781475371
-178, 28.6362532829156035507565093210
-177, 19.0811366877282110634067487343
-176, 14.3006662567119279101280533476
-175, 11.4300523027613430672108555492
-174, 9.51436445422258492968397145497
-173, 8.14434642797459402382566139499
-172, 7.11536972238420874823056614364
-171, 6.31375151467504309897946424477
-170, 5.67128181961770953099441843986
-169, 5.14455401597031013472322071712
-168, 4.70463010947845423358623453739
-167, 4.33147587428415554554616775457
-166, 4.01078093353584471634571512945
-165, 3.73205080756887729352744634151
-164, 3.48741444384090865069622422510
-163, 3.27085261848414086530885625731
-162, 3.07768353717525340257029057604
-161, 2.90421087767582280257932553452
-160, 2.74747741945462227876166402650
-159, 2.60508906469380153625841233642
-158, 2.47508685341629582524001324608
-157, 2.35585236582375283393958666234
-156, 2.24603677390421605416332143842
-155, 2.14450692050955861635626079104
-154, 2.05030384157929621689901107055
-153, 1.96261050550515058230464042621
-152, 1.88072646534633201236083759582
-151, 1.80404775527142393738178474824
-150, 1.73205080756887729352744634151
-149, 1.66427948235051791103049617004
-148, 1.60033452904105035532673308118
-147, 1.53986496381458290482679697261
-146, 1.48256096851274025478715714915
-145, 1.42814800674211450216061848500
-144, 1.37638192047117353820720958191
-143, 1.32704482162041003715947257408
-142, 1.27994163219307878031102984757
-141, 1.23489715653505139855617469537
-140, 1.19175359259420995870530807186
-139, 1.15036840722100955587633102557
-138, 1.11061251482919287014348196417
-137, 1.07236871002468253294602774807
-136, 1.03553031379056950695883255125
-135, 1.
-134, .965688774807074045958027299698
-133, .932515086137661705612185627427
-132, .900404044297839945120477203883
-131, .869286737816226662200095638705
-130, .839099631177280011763127298122
-129, .809784033195007148036991374238
-128, .781285626506717397062949971961
-127, .753554050102794157073956448623
-126, .726542528005360885895466757480
-125, .700207538209709779458522719443
-124, .674508516842426632142460861996
-123, .649407593197510576982062911309
-122, .624869351909327509780510827954
-121, .600860619027560414878664426352
-120, .577350269189625764509148780503
-119, .554309051452768917820763092336
-118, .531709431661478748075915871844
-117, .509525449494428810513706911248
-116, .487732588565861422773111126620
-115, .466307658154998592830006194797
-114, .445228685308536163922367030649
-113, .424474816209604742023532062939
-112, .404026225835156811322348143583
-111, .383864035035415795971448408100
-110, .363970234266202361351047882779
-109, .344327613289665241957265839380
-108, .324919696232906326155871412217
-107, .305730681458660355734541958993
-106, .286745385758807940042758062734
-105, .267949192431122706472553658490
-104, .249328002843180691624039937806
-103, .230868191125563111748145613470
-102, .212556561670022125259591660571
-101, .194380309137718484243194224973
-100, .176326980708464973471090386870
-99, .158384440324536293838883092690
-98, .140540834702391446838117693433
-97, .122784560902904591134231136048
-96, .105104235265676462511502380140
-95, 0.874886635259240052220186694403e-1
-94, 0.699268119435104136669210603234e-1
-93, 0.524077792830412040388058244791e-1
-92, 0.349207694917477305004026257737e-1
-91, 0.174550649282175857651288952246e-1
-90, 0.
-89, -0.174550649282175857651288952246e-1
-88, -0.349207694917477305004026257737e-1
-87, -0.524077792830412040388058244791e-1
-86, -0.699268119435104136669210603234e-1
-85, -0.874886635259240052220186694403e-1
-84, -.105104235265676462511502380140
-83, -.122784560902904591134231136048
-82, -.140540834702391446838117693433
-81, -.158384440324536293838883092690
-80, -.176326980708464973471090386870
-79, -.194380309137718484243194224973
-78, -.212556561670022125259591660571
-77, -.230868191125563111748145613470
-76, -.249328002843180691624039937806
-75, -.267949192431122706472553658490
-74, -.286745385758807940042758062734
-73, -.305730681458660355734541958993
-72, -.324919696232906326155871412217
-71, -.344327613289665241957265839380
-70, -.363970234266202361351047882779
-69, -.383864035035415795971448408100
-68, -.404026225835156811322348143583
-67, -.424474816209604742023532062939
-66, -.445228685308536163922367030649
-65, -.466307658154998592830006194797
-64, -.487732588565861422773111126620
-63, -.509525449494428810513706911248
-62, -.531709431661478748075915871844
-61, -.554309051452768917820763092336
-60, -.577350269189625764509148780503
-59, -.600860619027560414878664426352
-58, -.624869351909327509780510827954
-57, -.649407593197510576982062911309
-56, -.674508516842426632142460861996
-55, -.700207538209709779458522719443
-54, -.726542528005360885895466757480
-53, -.753554050102794157073956448623
-52, -.781285626506717397062949971961
-51, -.809784033195007148036991374238
-50, -.839099631177280011763127298122
-49, -.869286737816226662200095638705
-48, -.900404044297839945120477203883
-47, -.932515086137661705612185627427
-46, -.965688774807074045958027299698
-45, -1.
-44, -1.03553031379056950695883255125
-43, -1.07236871002468253294602774807
-42, -1.11061251482919287014348196417
-41, -1.15036840722100955587633102557
-40, -1.19175359259420995870530807186
-39, -1.23489715653505139855617469537
-38, -1.27994163219307878031102984757
-37, -1.32704482162041003715947257408
-36, -1.37638192047117353820720958191
-35, -1.42814800674211450216061848500
-34, -1.48256096851274025478715714915
-33, -1.53986496381458290482679697261
-32, -1.60033452904105035532673308118
-31, -1.66427948235051791103049617004
-30, -1.73205080756887729352744634151
-29, -1.80404775527142393738178474824
-28, -1.88072646534633201236083759582
-27, -1.96261050550515058230464042621
-26, -2.05030384157929621689901107055
-25, -2.14450692050955861635626079104
-24, -2.24603677390421605416332143842
-23, -2.35585236582375283393958666234
-22, -2.47508685341629582524001324608
-21, -2.60508906469380153625841233642
-20, -2.74747741945462227876166402650
-19, -2.90421087767582280257932553452
-18, -3.07768353717525340257029057604
-17, -3.27085261848414086530885625731
-16, -3.48741444384090865069622422510
-15, -3.73205080756887729352744634151
-14, -4.01078093353584471634571512945
-13, -4.33147587428415554554616775457
-12, -4.70463010947845423358623453739
-11, -5.14455401597031013472322071712
-10, -5.67128181961770953099441843986
-9, -6.31375151467504309897946424477
-8, -7.11536972238420874823056614364
-7, -8.14434642797459402382566139499
-6, -9.51436445422258492968397145497
-5, -11.4300523027613430672108555492
-4, -14.3006662567119279101280533476
-3, -19.0811366877282110634067487343
-2, -28.6362532829156035507565093210
-1, -57.2899616307594246872781475371
1, 57.2899616307594246872781475371
2, 28.6362532829156035507565093210
3, 19.0811366877282110634067487343
4, 14.3006662567119279101280533476
5, 11.4300523027613430672108555492
6, 9.51436445422258492968397145497
7, 8.14434642797459402382566139499
8, 7.11536972238420874823056614364
9, 6.31375151467504309897946424477
10, 5.67128181961770953099441843986
11, 5.14455401597031013472322071712
12, 4.70463010947845423358623453739
13, 4.33147587428415554554616775457
14, 4.01078093353584471634571512945
15, 3.73205080756887729352744634151
16, 3.48741444384090865069622422510
17, 3.27085261848414086530885625731
18, 3.07768353717525340257029057604
19, 2.90421087767582280257932553452
20, 2.74747741945462227876166402650
21, 2.60508906469380153625841233642
22, 2.47508685341629582524001324608
23, 2.35585236582375283393958666234
24, 2.24603677390421605416332143842
25, 2.14450692050955861635626079104
26, 2.05030384157929621689901107055
27, 1.96261050550515058230464042621
28, 1.88072646534633201236083759582
29, 1.80404775527142393738178474824
30, 1.73205080756887729352744634151
31, 1.66427948235051791103049617004
32, 1.60033452904105035532673308118
33, 1.53986496381458290482679697261
34, 1.48256096851274025478715714915
35, 1.42814800674211450216061848500
36, 1.37638192047117353820720958191
37, 1.32704482162041003715947257408
38, 1.27994163219307878031102984757
39, 1.23489715653505139855617469537
40, 1.19175359259420995870530807186
41, 1.15036840722100955587633102557
42, 1.11061251482919287014348196417
43, 1.07236871002468253294602774807
44, 1.03553031379056950695883255125
45, 1.
46, .965688774807074045958027299698
47, .932515086137661705612185627427
48, .900404044297839945120477203883
49, .869286737816226662200095638705
50, .839099631177280011763127298122
51, .809784033195007148036991374238
52, .781285626506717397062949971961
53, .753554050102794157073956448623
54, .726542528005360885895466757480
55, .700207538209709779458522719443
56, .674508516842426632142460861996
57, .649407593197510576982062911309
58, .624869351909327509780510827954
59, .600860619027560414878664426352
60, .577350269189625764509148780503
61, .554309051452768917820763092336
62, .531709431661478748075915871844
63, .509525449494428810513706911248
64, .487732588565861422773111126620
65, .466307658154998592830006194797
66, .445228685308536163922367030649
67, .424474816209604742023532062939
68, .404026225835156811322348143583
69, .383864035035415795971448408100
70, .363970234266202361351047882779
71, .344327613289665241957265839380
72, .324919696232906326155871412217
73, .305730681458660355734541958993
74, .286745385758807940042758062734
75, .267949192431122706472553658490
76, .249328002843180691624039937806
77, .230868191125563111748145613470
78, .212556561670022125259591660571
79, .194380309137718484243194224973
80, .176326980708464973471090386870
81, .158384440324536293838883092690
82, .140540834702391446838117693433
83, .122784560902904591134231136048
84, .105104235265676462511502380140
85, 0.874886635259240052220186694403e-1
86, 0.699268119435104136669210603234e-1
87, 0.524077792830412040388058244791e-1
88, 0.349207694917477305004026257737e-1
89, 0.174550649282175857651288952246e-1
90, 0.
91, -0.174550649282175857651288952246e-1
92, -0.349207694917477305004026257737e-1
93, -0.524077792830412040388058244791e-1
94, -0.699268119435104136669210603234e-1
95, -0.874886635259240052220186694403e-1
96, -.105104235265676462511502380140
97, -.122784560902904591134231136048
98, -.140540834702391446838117693433
99, -.158384440324536293838883092690
100, -.176326980708464973471090386870
101, -.194380309137718484243194224973
102, -.212556561670022125259591660571
103, -.230868191125563111748145613470
104, -.249328002843180691624039937806
105, -.267949192431122706472553658490
106, -.286745385758807940042758062734
107, -.305730681458660355734541958993
108, -.324919696232906326155871412217
109, -.344327613289665241957265839380
110, -.363970234266202361351047882779
111, -.383864035035415795971448408100
112, -.404026225835156811322348143583
113, -.424474816209604742023532062939
114, -.445228685308536163922367030649
115, -.466307658154998592830006194797
116, -.487732588565861422773111126620
117, -.509525449494428810513706911248
118, -.531709431661478748075915871844
119, -.554309051452768917820763092336
120, -.577350269189625764509148780503
121, -.600860619027560414878664426352
122, -.624869351909327509780510827954
123, -.649407593197510576982062911309
124, -.674508516842426632142460861996
125, -.700207538209709779458522719443
126, -.726542528005360885895466757480
127, -.753554050102794157073956448623
128, -.781285626506717397062949971961
129, -.809784033195007148036991374238
130, -.839099631177280011763127298122
131, -.869286737816226662200095638705
132, -.900404044297839945120477203883
133, -.932515086137661705612185627427
134, -.965688774807074045958027299698
135, -1.
136, -1.03553031379056950695883255125
137, -1.07236871002468253294602774807
138, -1.11061251482919287014348196417
139, -1.15036840722100955587633102557
140, -1.19175359259420995870530807186
141, -1.23489715653505139855617469537
142, -1.27994163219307878031102984757
143, -1.32704482162041003715947257408
144, -1.37638192047117353820720958191
145, -1.42814800674211450216061848500
146, -1.48256096851274025478715714915
147, -1.53986496381458290482679697261
148, -1.60033452904105035532673308118
149, -1.66427948235051791103049617004
150, -1.73205080756887729352744634151
151, -1.80404775527142393738178474824
152, -1.88072646534633201236083759582
153, -1.96261050550515058230464042621
154, -2.05030384157929621689901107055
155, -2.14450692050955861635626079104
156, -2.24603677390421605416332143842
157, -2.35585236582375283393958666234
158, -2.47508685341629582524001324608
159, -2.60508906469380153625841233642
160, -2.74747741945462227876166402650
161, -2.90421087767582280257932553452
162, -3.07768353717525340257029057604
163, -3.27085261848414086530885625731
164, -3.48741444384090865069622422510
165, -3.73205080756887729352744634151
166, -4.01078093353584471634571512945
167, -4.33147587428415554554616775457
168, -4.70463010947845423358623453739
169, -5.14455401597031013472322071712
170, -5.67128181961770953099441843986
171, -6.31375151467504309897946424477
172, -7.11536972238420874823056614364
173, -8.14434642797459402382566139499
174, -9.51436445422258492968397145497
175, -11.4300523027613430672108555492
176, -14.3006662567119279101280533476
177, -19.0811366877282110634067487343
178, -28.6362532829156035507565093210
179, -57.2899616307594246872781475371
];

x=ref(:,1);
expected = ref(:,2);
computed = cotd(x);
e=max(abs((expected-computed)./expected));
if e>100*eps then pause,end
//
x=ref(:,1)+2^6*360; 
expected = ref(:,2);
computed = cotd(x);
e=max(abs((expected-computed)./expected));
if e>100*eps then pause,end
//
x=ref(:,1)+2^10*360; 
expected = ref(:,2);
computed = cotd(x);
e=max(abs((expected-computed)./expected));
if e>100*eps then pause,end

assert_checkequal(cotd([-180 0 180]), %inf*[1 1 1]);
assert_checkequal(cotd([-90 90]), [0 0]);
assert_checkequal(cotd([]), []);
