// =============================================================================
// Scilab ( https://www.scilab.org/ ) - This file is part of Scilab
// Copyright (C) 2006-2008 - INRIA - Pierre MARECHAL <pierre.marechal@inria.fr>
//
//  This file is distributed under the same license as the Scilab package.
// =============================================================================

// <-- CLI SHELL MODE -->

// unit tests for oct2dec function
// =============================================================================

A = [ "123456" ; "23456" ; "4621423" ];
B = oct2dec(A);

if oct2dec(A(1)) <> B(1) then pause,end
if oct2dec(A(2)) <> B(2) then pause,end
if oct2dec(A(3)) <> B(3) then pause,end

A = [ ...
	40934608; ...
	229889448; ...
	211537456; ...
	184634745; ...
	190177603; ...
	308922273; ...
	97681753; ...
	61570170; ...
	287441613; ...
	121556375; ...
	120023010; ...
	95705416; ...
	26335216; ...
	251403449; ...
	84135910; ...
	364529613; ...
	249207688; ...
	54675502; ...
	151320334; ...
	144692149; ...
	362038663; ...
	307170229; ...
	256227208; ...
	186560448; ...
	281035833; ...
	127664274; ...
	267752742; ...
	182472147; ...
	307967566; ...
	223321452; ...
	269602397; ...
	348902175; ...
	80581396; ...
	108510348; ...
	160907415; ...
	270758999; ...
	44803117; ...
	258589168; ...
	332329169; ...
	332244730; ...
	7516039; ...
	79722674; ...
	55320642; ...
	33851255; ...
	331126124; ...
	139456553; ...
	25751364; ...
	207704307; ...
	194132056; ...
	177071699; ...
	352396457; ...
	183541215; ...
	111612423; ...
	235994160; ...
	370101663; ...
	20018752; ...
	363658435; ...
	265224901; ...
	202490899; ...
	298996497; ...
	115916848; ...
	99463791; ...
	275269167; ...
	196498244; ...
	207974140; ...
	63547078; ...
	94627738; ...
	252777257; ...
	322136247; ...
	54327403; ...
	212392483; ...
	329652286; ...
	134050078; ...
	267713126; ...
	363503542; ...
	92546697; ...
	34540175; ...
	16625401; ...
	300251005; ...
	228672231; ...
	193697101; ...
	280017957; ...
	39583941; ...
	305309524; ...
	143382613; ...
	37056099; ...
	325328277; ...
	134411543; ...
	302281001; ...
	155189671; ...
	60778536; ...
	45568344; ...
	254653463; ...
	336047704; ...
	242066589; ...
	89998098; ...
	26965277; ...
	336694327; ...
	342775355; ...
	349101524];

B = [ ..
	"234116320"; ..
	"1554752650"; ..
	"1446747060"; ..
	"1300246571"; ..
	"1325360503"; ..
	"2232343641"; ..
	"564500531"; ..
	"352676172"; ..
	"2110401315"; ..
	"717546627"; ..
	"711663742"; ..
	"555054510"; ..
	"144353760"; ..
	"1677016271"; ..
	"500747746"; ..
	"2556443715"; ..
	"1666515610"; ..
	"320444056"; ..
	"1101173416"; ..
	"1047751665"; ..
	"2545042607"; ..
	"2223605665"; ..
	"1721333610"; ..
	"1307527700"; ..
	"2060042071"; ..
	"747000222"; ..
	"1775312446"; ..
	"1270046723"; ..
	"2226633116"; ..
	"1523716554"; ..
	"2004347135"; ..
	"2462751437"; ..
	"463311424"; ..
	"635736214"; ..
	"1145640227"; ..
	"2010672127"; ..
	"252722055"; ..
	"1732340760"; ..
	"2363570321"; ..
	"2363323372"; ..
	"34527607"; ..
	"460074262"; ..
	"323020102"; ..
	"201103567"; ..
	"2357112554"; ..
	"1023770051"; ..
	"142167504"; ..
	"1430250363"; ..
	"1344434130"; ..
	"1243363123"; ..
	"2500222251"; ..
	"1274116737"; ..
	"651611007"; ..
	"1604176060"; ..
	"2603646637"; ..
	"114273100"; ..
	"2553176303"; ..
	"1763601305"; ..
	"1404342023"; ..
	"2164451421"; ..
	"672140060"; ..
	"573331157"; ..
	"2032043057"; ..
	"1355451504"; ..
	"1431267374"; ..
	"362323306"; ..
	"550763632"; ..
	"1704211451"; ..
	"2314664267"; ..
	"317174153"; ..
	"1452155043"; ..
	"2351414076"; ..
	"777270436"; ..
	"1775175146"; ..
	"2552517666"; ..
	"541023211"; ..
	"203605217"; ..
	"77327371"; ..
	"2171273575"; ..
	"1550241347"; ..
	"1342712515"; ..
	"2054136045"; ..
	"227000305"; ..
	"2214523524"; ..
	"1042754125"; ..
	"215267143"; ..
	"2331016625"; ..
	"1000572427"; ..
	"2201070451"; ..
	"1120000647"; ..
	"347664050"; ..
	"255650530"; ..
	"1713332027"; ..
	"2401727130"; ..
	"1633322235"; ..
	"527241422"; ..
	"146672435"; ..
	"2404306067"; ..
	"2433453073"; ..
	"2463556724"];

if or(oct2dec(B)<>A) then pause,end
