// =============================================================================
// Scilab ( https://www.scilab.org/ ) - This file is part of Scilab
// Copyright (C) 2008 - INRIA - Serge Steer
//
//  This file is distributed under the same license as the Scilab package.
// =============================================================================

// <-- CLI SHELL MODE -->

// Maple code used to create reference

// Digits := 40: 
// writeto("csc.ref"): interface(prettyprint = 0):
// for i from -179 to 179 do if (i<>0) then print(i*Pi/180, evalf[30](csc(i*Pi/180), 30)) end end do; 
// writeto(terminal):
ieee(2);
pi=%pi;eps=%eps;Inf=%inf;NaN=%nan; //used to make following code runnable under Matlab

ref=[-(179/180), -57.2986884985501834766126837351
-(89/90), -28.6537083478438211365216382162
-(59/60), -19.1073226092973979922961125616
-(44/45), -14.3355870262036756406284559734
-(35/36), -11.4737132456698551291492250358
-(29/30), -9.56677223350562613372277727945
-(173/180), -8.20550904812507833001991867581
-(43/45), -7.18529653432771916189748720396
-(19/20), -6.39245322149966154704221573407
-(17/18), -5.75877048314363353621643710929
-(169/180), -5.24084306416784875135543656705
-(14/15), -4.80973434474413069609773691753
-(167/180), -4.44541148258580103920857343490
-(83/90), -4.13356549443874930747994626551
-(11/12), -3.86370330515627314699897279892
-(41/45), -3.62795527854330009753434191853
-(163/180), -3.42030361983326865551180347723
-(9/10), -3.23606797749978969640917366873
-(161/180), -3.07155348675724235674832103818
-(8/9), -2.92380440016308725223275441337
-(53/60), -2.79042810962533591050431439049
-(79/90), -2.66946716255401430948320747106
-(157/180), -2.55930466524745219706802494981
-(13/15), -2.45859333557423817942291309899
-(31/36), -2.36620158315249851793367832620
-(77/90), -2.28117203270485932864715668402
-(17/20), -2.20268926458526662156295617055
-(38/45), -2.13005446818951270398487753363
-(151/180), -2.06266533962731421925878556929
-(5/6), -2.
-(149/180), -1.94160402641035637581583356145
-(37/45), -1.88707991479985829536949114391
-(49/60), -1.83607845877666314907100667726
-(73/90), -1.78829164997140061052169910815
-(29/36), -1.74344679562109801983768341673
-(4/5), -1.70130161670407986436308099413
-(143/180), -1.66164014112248320311482464970
-(71/90), -1.62426924548274402226829568696
-(47/60), -1.58901572906574944232778021955
-(7/9), -1.55572382686041232005635595464
-(139/180), -1.52425308670581424232102105808
-(23/30), -1.49447654986460866611493037227
-(137/180), -1.46627918563962492471078000564
-(34/45), -1.43955653962572631828118069483
-(3/4), -1.41421356237309504880168872421
-(67/90), -1.39016359101667878798155936264
-(133/180), -1.36732746109859529527321386803
-(11/15), -1.34563272960637610904284423453
-(131/180), -1.32501299334881135094544743202
-(13/18), -1.30540728933227860459313349292
-(43/60), -1.28675956589316733108672315286
-(32/45), -1.26901821507257881983606109858
-(127/180), -1.25213565815622566143108442816
-(7/10), -1.23606797749978969640917366873
-(25/36), -1.22077458876145606833458806426
-(31/45), -1.20621794850390538021837673384
-(41/60), -1.19236329283594745598731818292
-(61/90), -1.17917840336209642760127392029
-(121/180), -1.16663339721533049248125312741
-(2/3), -1.15470053837925152901829756101
-(119/180), -1.14335406787331999220559917761
-(59/90), -1.13257005068903916295458029820
-(13/20), -1.12232623763436080715678354235
-(29/45), -1.11260194047518893255362195457
-(23/36), -1.10337791896249175648689470334
-(19/30), -1.09463627850604674090442994196
-(113/180), -1.08636037740529625993805993245
-(28/45), -1.07853474267758344346480900558
-(37/60), -1.07114499363702901344007037528
-(11/18), -1.06417777247591214080957060222
-(109/180), -1.05762068118667065508786396731
-(3/5), -1.05146222423826721205133816970
-(107/180), -1.04569175648714800749844664425
-(53/90), -1.04029943586160209711671451135
-(7/12), -1.03527618041008304939559535050
-(26/45), -1.03061362934989808868698990977
-(103/180), -1.02630410779339158696241402430
-(17/30), -1.02234059486502927329658303481
-(101/180), -1.01871669495521423110738754753
-(5/9), -1.01542661188574498523421768499
-(11/20), -1.01246512578800293136174398299
-(49/90), -1.00982757251861810903821333214
-(97/180), -1.00750982545884835986263847367
-(8/15), -1.00550827956351640763197958403
-(19/36), -1.00381983754334738958457569145
-(47/90), -1.00244189808117211927910668775
-(31/60), -1.00137234599792097654873089884
-(23/45), -1.00060954429882177645842992547
-(91/180), -1.00015232804390766542842643421
-(1/2), -1.
-(89/180), -1.00015232804390766542842643421
-(22/45), -1.00060954429882177645842992547
-(29/60), -1.00137234599792097654873089884
-(43/90), -1.00244189808117211927910668775
-(17/36), -1.00381983754334738958457569145
-(7/15), -1.00550827956351640763197958403
-(83/180), -1.00750982545884835986263847367
-(41/90), -1.00982757251861810903821333214
-(9/20), -1.01246512578800293136174398299
-(4/9), -1.01542661188574498523421768499
-(79/180), -1.01871669495521423110738754753
-(13/30), -1.02234059486502927329658303481
-(77/180), -1.02630410779339158696241402430
-(19/45), -1.03061362934989808868698990977
-(5/12), -1.03527618041008304939559535050
-(37/90), -1.04029943586160209711671451135
-(73/180), -1.04569175648714800749844664425
-(2/5), -1.05146222423826721205133816970
-(71/180), -1.05762068118667065508786396731
-(7/18), -1.06417777247591214080957060222
-(23/60), -1.07114499363702901344007037528
-(17/45), -1.07853474267758344346480900558
-(67/180), -1.08636037740529625993805993245
-(11/30), -1.09463627850604674090442994196
-(13/36), -1.10337791896249175648689470334
-(16/45), -1.11260194047518893255362195457
-(7/20), -1.12232623763436080715678354235
-(31/90), -1.13257005068903916295458029820
-(61/180), -1.14335406787331999220559917761
-(1/3), -1.15470053837925152901829756101
-(59/180), -1.16663339721533049248125312741
-(29/90), -1.17917840336209642760127392029
-(19/60), -1.19236329283594745598731818292
-(14/45), -1.20621794850390538021837673384
-(11/36), -1.22077458876145606833458806426
-(3/10), -1.23606797749978969640917366873
-(53/180), -1.25213565815622566143108442816
-(13/45), -1.26901821507257881983606109858
-(17/60), -1.28675956589316733108672315286
-(5/18), -1.30540728933227860459313349292
-(49/180), -1.32501299334881135094544743202
-(4/15), -1.34563272960637610904284423453
-(47/180), -1.36732746109859529527321386803
-(23/90), -1.39016359101667878798155936264
-(1/4), -1.41421356237309504880168872421
-(11/45), -1.43955653962572631828118069483
-(43/180), -1.46627918563962492471078000564
-(7/30), -1.49447654986460866611493037227
-(41/180), -1.52425308670581424232102105808
-(2/9), -1.55572382686041232005635595464
-(13/60), -1.58901572906574944232778021955
-(19/90), -1.62426924548274402226829568696
-(37/180), -1.66164014112248320311482464970
-(1/5), -1.70130161670407986436308099413
-(7/36), -1.74344679562109801983768341673
-(17/90), -1.78829164997140061052169910815
-(11/60), -1.83607845877666314907100667726
-(8/45), -1.88707991479985829536949114391
-(31/180), -1.94160402641035637581583356145
-(1/6), -2.
-(29/180), -2.06266533962731421925878556929
-(7/45), -2.13005446818951270398487753363
-(3/20), -2.20268926458526662156295617055
-(13/90), -2.28117203270485932864715668402
-(5/36), -2.36620158315249851793367832620
-(2/15), -2.45859333557423817942291309899
-(23/180), -2.55930466524745219706802494981
-(11/90), -2.66946716255401430948320747106
-(7/60), -2.79042810962533591050431439049
-(1/9), -2.92380440016308725223275441337
-(19/180), -3.07155348675724235674832103818
-(1/10), -3.23606797749978969640917366873
-(17/180), -3.42030361983326865551180347723
-(4/45), -3.62795527854330009753434191853
-(1/12), -3.86370330515627314699897279892
-(7/90), -4.13356549443874930747994626551
-(13/180), -4.44541148258580103920857343490
-(1/15), -4.80973434474413069609773691753
-(11/180), -5.24084306416784875135543656705
-(1/18), -5.75877048314363353621643710929
-(1/20), -6.39245322149966154704221573407
-(2/45), -7.18529653432771916189748720396
-(7/180), -8.20550904812507833001991867581
-(1/30), -9.56677223350562613372277727945
-(1/36), -11.4737132456698551291492250358
-(1/45), -14.3355870262036756406284559734
-(1/60), -19.1073226092973979922961125616
-(1/90), -28.6537083478438211365216382162
-(1/180), -57.2986884985501834766126837351
(1/180), 57.2986884985501834766126837351
(1/90), 28.6537083478438211365216382162
(1/60), 19.1073226092973979922961125616
(1/45), 14.3355870262036756406284559734
(1/36), 11.4737132456698551291492250358
(1/30), 9.56677223350562613372277727945
(7/180), 8.20550904812507833001991867581
(2/45), 7.18529653432771916189748720396
(1/20), 6.39245322149966154704221573407
(1/18), 5.75877048314363353621643710929
(11/180), 5.24084306416784875135543656705
(1/15), 4.80973434474413069609773691753
(13/180), 4.44541148258580103920857343490
(7/90), 4.13356549443874930747994626551
(1/12), 3.86370330515627314699897279892
(4/45), 3.62795527854330009753434191853
(17/180), 3.42030361983326865551180347723
(1/10), 3.23606797749978969640917366873
(19/180), 3.07155348675724235674832103818
(1/9), 2.92380440016308725223275441337
(7/60), 2.79042810962533591050431439049
(11/90), 2.66946716255401430948320747106
(23/180), 2.55930466524745219706802494981
(2/15), 2.45859333557423817942291309899
(5/36), 2.36620158315249851793367832620
(13/90), 2.28117203270485932864715668402
(3/20), 2.20268926458526662156295617055
(7/45), 2.13005446818951270398487753363
(29/180), 2.06266533962731421925878556929
(1/6), 2.
(31/180), 1.94160402641035637581583356145
(8/45), 1.88707991479985829536949114391
(11/60), 1.83607845877666314907100667726
(17/90), 1.78829164997140061052169910815
(7/36), 1.74344679562109801983768341673
(1/5), 1.70130161670407986436308099413
(37/180), 1.66164014112248320311482464970
(19/90), 1.62426924548274402226829568696
(13/60), 1.58901572906574944232778021955
(2/9), 1.55572382686041232005635595464
(41/180), 1.52425308670581424232102105808
(7/30), 1.49447654986460866611493037227
(43/180), 1.46627918563962492471078000564
(11/45), 1.43955653962572631828118069483
(1/4), 1.41421356237309504880168872421
(23/90), 1.39016359101667878798155936264
(47/180), 1.36732746109859529527321386803
(4/15), 1.34563272960637610904284423453
(49/180), 1.32501299334881135094544743202
(5/18), 1.30540728933227860459313349292
(17/60), 1.28675956589316733108672315286
(13/45), 1.26901821507257881983606109858
(53/180), 1.25213565815622566143108442816
(3/10), 1.23606797749978969640917366873
(11/36), 1.22077458876145606833458806426
(14/45), 1.20621794850390538021837673384
(19/60), 1.19236329283594745598731818292
(29/90), 1.17917840336209642760127392029
(59/180), 1.16663339721533049248125312741
(1/3), 1.15470053837925152901829756101
(61/180), 1.14335406787331999220559917761
(31/90), 1.13257005068903916295458029820
(7/20), 1.12232623763436080715678354235
(16/45), 1.11260194047518893255362195457
(13/36), 1.10337791896249175648689470334
(11/30), 1.09463627850604674090442994196
(67/180), 1.08636037740529625993805993245
(17/45), 1.07853474267758344346480900558
(23/60), 1.07114499363702901344007037528
(7/18), 1.06417777247591214080957060222
(71/180), 1.05762068118667065508786396731
(2/5), 1.05146222423826721205133816970
(73/180), 1.04569175648714800749844664425
(37/90), 1.04029943586160209711671451135
(5/12), 1.03527618041008304939559535050
(19/45), 1.03061362934989808868698990977
(77/180), 1.02630410779339158696241402430
(13/30), 1.02234059486502927329658303481
(79/180), 1.01871669495521423110738754753
(4/9), 1.01542661188574498523421768499
(9/20), 1.01246512578800293136174398299
(41/90), 1.00982757251861810903821333214
(83/180), 1.00750982545884835986263847367
(7/15), 1.00550827956351640763197958403
(17/36), 1.00381983754334738958457569145
(43/90), 1.00244189808117211927910668775
(29/60), 1.00137234599792097654873089884
(22/45), 1.00060954429882177645842992547
(89/180), 1.00015232804390766542842643421
(1/2), 1.
(91/180), 1.00015232804390766542842643421
(23/45), 1.00060954429882177645842992547
(31/60), 1.00137234599792097654873089884
(47/90), 1.00244189808117211927910668775
(19/36), 1.00381983754334738958457569145
(8/15), 1.00550827956351640763197958403
(97/180), 1.00750982545884835986263847367
(49/90), 1.00982757251861810903821333214
(11/20), 1.01246512578800293136174398299
(5/9), 1.01542661188574498523421768499
(101/180), 1.01871669495521423110738754753
(17/30), 1.02234059486502927329658303481
(103/180), 1.02630410779339158696241402430
(26/45), 1.03061362934989808868698990977
(7/12), 1.03527618041008304939559535050
(53/90), 1.04029943586160209711671451135
(107/180), 1.04569175648714800749844664425
(3/5), 1.05146222423826721205133816970
(109/180), 1.05762068118667065508786396731
(11/18), 1.06417777247591214080957060222
(37/60), 1.07114499363702901344007037528
(28/45), 1.07853474267758344346480900558
(113/180), 1.08636037740529625993805993245
(19/30), 1.09463627850604674090442994196
(23/36), 1.10337791896249175648689470334
(29/45), 1.11260194047518893255362195457
(13/20), 1.12232623763436080715678354235
(59/90), 1.13257005068903916295458029820
(119/180), 1.14335406787331999220559917761
(2/3), 1.15470053837925152901829756101
(121/180), 1.16663339721533049248125312741
(61/90), 1.17917840336209642760127392029
(41/60), 1.19236329283594745598731818292
(31/45), 1.20621794850390538021837673384
(25/36), 1.22077458876145606833458806426
(7/10), 1.23606797749978969640917366873
(127/180), 1.25213565815622566143108442816
(32/45), 1.26901821507257881983606109858
(43/60), 1.28675956589316733108672315286
(13/18), 1.30540728933227860459313349292
(131/180), 1.32501299334881135094544743202
(11/15), 1.34563272960637610904284423453
(133/180), 1.36732746109859529527321386803
(67/90), 1.39016359101667878798155936264
(3/4), 1.41421356237309504880168872421
(34/45), 1.43955653962572631828118069483
(137/180), 1.46627918563962492471078000564
(23/30), 1.49447654986460866611493037227
(139/180), 1.52425308670581424232102105808
(7/9), 1.55572382686041232005635595464
(47/60), 1.58901572906574944232778021955
(71/90), 1.62426924548274402226829568696
(143/180), 1.66164014112248320311482464970
(4/5), 1.70130161670407986436308099413
(29/36), 1.74344679562109801983768341673
(73/90), 1.78829164997140061052169910815
(49/60), 1.83607845877666314907100667726
(37/45), 1.88707991479985829536949114391
(149/180), 1.94160402641035637581583356145
(5/6), 2.
(151/180), 2.06266533962731421925878556929
(38/45), 2.13005446818951270398487753363
(17/20), 2.20268926458526662156295617055
(77/90), 2.28117203270485932864715668402
(31/36), 2.36620158315249851793367832620
(13/15), 2.45859333557423817942291309899
(157/180), 2.55930466524745219706802494981
(79/90), 2.66946716255401430948320747106
(53/60), 2.79042810962533591050431439049
(8/9), 2.92380440016308725223275441337
(161/180), 3.07155348675724235674832103818
(9/10), 3.23606797749978969640917366873
(163/180), 3.42030361983326865551180347723
(41/45), 3.62795527854330009753434191853
(11/12), 3.86370330515627314699897279892
(83/90), 4.13356549443874930747994626551
(167/180), 4.44541148258580103920857343490
(14/15), 4.80973434474413069609773691753
(169/180), 5.24084306416784875135543656705
(17/18), 5.75877048314363353621643710929
(19/20), 6.39245322149966154704221573407
(43/45), 7.18529653432771916189748720396
(173/180), 8.20550904812507833001991867581
(29/30), 9.56677223350562613372277727945
(35/36), 11.4737132456698551291492250358
(44/45), 14.3355870262036756406284559734
(59/60), 19.1073226092973979922961125616
(89/90), 28.6537083478438211365216382162
(179/180), 57.2986884985501834766126837351
];

x=ref(:,1)*pi;
if max(abs((csc(x)-ref(:,2))./ref(:,2)))>40*eps then pause,end

//diff(csc(x*(1+e)), e) = -csc(x*(1+e))*cot(x*(1+e))*x
if max(abs((csc(x)-ref(:,2))./(cotg(x).*x.*csc(x))))>20*eps then pause, end
  
  
x=ref(:,1)*pi+2^8*pi;
if max(abs((csc(x)-ref(:,2))./ref(:,2)))>40*2^9*pi*eps then pause,end

if max(abs((csc(x)-ref(:,2))./(cotg(x).*x.*csc(x))))>20*eps then pause,end

x=ref(:,1)*pi+2^12*pi;
if max(abs((csc(x)-ref(:,2))./ref(:,2)))>40*2^13*pi*eps then pause,end

if max(abs((csc(x)-ref(:,2))./(cotg(x).*x.*csc(x))))>40*eps then pause,end


if csc(0)<>Inf then pause,end
if csc(%pi/2)<>1 then pause,end
if ~isnan(csc(-Inf)) then pause,end
if ~isnan(csc(Inf)) then pause,end
if ~isnan(csc(NaN)) then pause,end

if csc([])<>[] then pause,end

