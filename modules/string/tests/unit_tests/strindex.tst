// =============================================================================
// Scilab ( https://www.scilab.org/ ) - This file is part of Scilab
// Copyright (C) 2007-2008 - INRIA
//
//  This file is distributed under the same license as the Scilab package.
// =============================================================================

// <-- CLI SHELL MODE -->

//===============================
// unit tests strindex
//===============================
if or(strindex('abc,abd,aa,bxe',',')<>[4 8 11]) then pause,end
if or(strindex('abc',',')<>[]) then pause,end
if or(strindex('abc,abd,aa,bxe',',a')<>[4 8]) then pause,end
if or(strindex('abc,abd,aa,bxe','a')<>[1 5 9 10]) then pause,end
if strindex(emptystr(),'a')<>[] then pause,end
//===============================
[pos,which]=strindex('abc,abd,aa,bxe',',');
if or(pos<>[4 8 11])|or(which<>[1 1 1]) then pause,end
[pos,which]=strindex('abc',',');
if or(pos<>[])|or(which<>[]) then pause,end
[pos,which]=strindex('abc,abd,aa,bxe',',a');
if or(pos<>[4 8])|or(which<>[1 1]) then pause,end
[pos,which]=strindex('abc,abd,aa,bxe','a');
if or(pos<>[1 5 9 10])|or(which<>[1 1 1 1]) then pause,end
[pos,which]=strindex('','a');
if or(pos<>[])|or(which<>[]) then pause,end
//===============================
[pos,which]=strindex('abc,cbd,aa,bxe',[',a',',b']);
if or(pos<>[8 11])|or(which<>[1 2]) then pause,end
[pos,which]=strindex('abc,cbd,aa,bxe',[',a','bb']);
if or(pos<>[8])|or(which<>[1]) then pause,end
//===============================
rand('u');str=strcat(string(round(8*rand(1,5000))));s= string(0:9);     
[pos,which]=strindex(str,s); 
if part(str,pos)<>strcat(s(which)) then pause,end
//===============================
ref = [4 10];
k=strindex('SCI/demos/scicos','/');
if (k <> ref ) then pause,end
//===============================
ref = 1;
k=strindex('SCI/demos/scicos','SCI/');
if (k <> ref ) then pause,end
//===============================
ref = [];
k=strindex('SCI/demos/scicos','!');
if (k <> ref ) then pause,end
//===============================
ref = [1 2 3 4];
k=strindex('aaaaa','aa');
if (k <> ref ) then pause,end
//===============================
ref = [1 11];
k=strindex('SCI/demos/scicos',['SCI','sci']);
if (k <> ref ) then pause,end
//===============================
refk = [2 4 8];
refw = [1 3 4];
[k,w]=strindex('1+3*abc/2.33',['+','-','*','/']);
if (k <> refk ) then pause,end
if (w <> refw ) then pause,end
//===============================
fd = mopen(SCI+'/modules/string/tests/unit_tests/text.txt','r');
txt = mgetl( fd );
mclose( fd );
//===============================
if (strindex(txt(1),'scilab') <> [])  then pause,end
if (strindex(txt(1),'Scilab') <> [1 216])  then pause,end
[ind1,ind2] = strindex(txt(1),'Scilab');
//===============================
if (ind1 <> [1 1]) then pause,end
if (ind2 <> [1 216]) then pause,end
//===============================
if (strindex('',' ') <> [])  then pause,end
//===============================
if (strindex([],' ') <> [])  then pause,end
//===============================
a = 'd:\TRUNK\Dev-Tools\SE\Innosetup\script\Create_ISS.sce';
[r1,r2] = strindex(a,['\',':']);
ref2  = [2.    1.    1.    1.    1.    1.    1.];
ref1  = [2.    3.    9.    19.    22.    32.    39];
if (ref2 <> r2) then pause,end;
if (ref1 <> r1) then pause,end;
//===============================
ierr = execstr("strindex(''2'' ,''/2(]*)?$\1/'' ,''dummy'');","errcatch");
if ierr <> 999 then pause,end 
//===============================
lf = ascii(10);

if strindex('abc','/abc/','r') <>  1   then pause,end
if strindex('xbc','/abc/','r') <>  []  then pause,end
if strindex('axc','/abc/','r') <>  []  then pause,end
if strindex('abx'                                     ,'/abc/'                                 ,'r') <>  []  then pause,end
if strindex('xabcy'                                   ,'/abc/'                                 ,'r') <>  2   then pause,end
if strindex('ababc'                                   ,'/abc/'                                 ,'r') <>  3   then pause,end
if strindex('abc'                                     ,'/ab*c/'                                ,'r') <>  1   then pause,end
if strindex('abc'                                     ,'/ab*bc/'                               ,'r') <>  1   then pause,end
if strindex('abbc'                                    ,'/ab*bc/'                               ,'r') <>  1   then pause,end
if strindex('abbbbc'                                  ,'/ab*bc/'                               ,'r') <>  1   then pause,end
if strindex('abbbbc'                                  ,'/.{1}/'                                ,'r') <>  1   then pause,end
if strindex('abbbbc'                                  ,'/.{3,4}/'                              ,'r') <>  1   then pause,end
if strindex('abbbbc'                                  ,'/ab{0,}bc/'                            ,'r') <>  1   then pause,end
if strindex('abbc'                                    ,'/ab+bc/'                               ,'r') <>  1   then pause,end
if strindex('abc'                                     ,'/ab+bc/'                               ,'r') <>  []  then pause,end
if strindex('abq'                                     ,'/ab+bc/'                               ,'r') <>  []  then pause,end
if strindex('abq'                                     ,'/ab{1,}bc/'                            ,'r') <>  []  then pause,end
if strindex('abbbbc'                                  ,'/ab+bc/'                               ,'r') <>  1   then pause,end
if strindex('abbbbc'                                  ,'/ab{1,}bc/'                            ,'r') <>  1   then pause,end
if strindex('abbbbc'                                  ,'/ab{1,3}bc/'                           ,'r') <>  1   then pause,end
if strindex('abbbbc'                                  ,'/ab{3,4}bc/'                           ,'r') <>  1   then pause,end
if strindex('abbbbc'                                  ,'/ab{4,5}bc/'                           ,'r') <>  []  then pause,end
if strindex('abbc'                                    ,'/ab?bc/'                               ,'r') <>  1   then pause,end
if strindex('abc'                                     ,'/ab?bc/'                               ,'r') <>  1   then pause,end
if strindex('abc'                                     ,'/ab{0,1}bc/'                           ,'r') <>  1   then pause,end
if strindex('abbbbc'                                  ,'/ab?bc/'                               ,'r') <>  []  then pause,end
if strindex('abc'                                     ,'/ab?c/'                                ,'r') <>  1   then pause,end
if strindex('abc'                                     ,'/ab{0,1}c/'                            ,'r') <>  1   then pause,end
if strindex('abc'                                     ,'/^abc$/'                               ,'r') <>  1   then pause,end
if strindex('abcc'                                    ,'/^abc$/'                               ,'r') <>  []  then pause,end
if strindex('abcc'                                    ,'/^abc/'                                ,'r') <>  1   then pause,end
if strindex('aabc'                                    ,'/^abc$/'                               ,'r') <>  []  then pause,end
if strindex('aabc'                                    ,'/abc$/'                                ,'r') <>  2   then pause,end
if strindex('aabcd'                                   ,'/abc$/'                                ,'r') <>  []  then pause,end
if strindex('abc'                                     ,'/a.c/'                                 ,'r') <>  1   then pause,end
if strindex('axc'                                     ,'/a.c/'                                 ,'r') <>  1   then pause,end
if strindex('axyzc'                                   ,'/a.*c/'                                ,'r') <>  1   then pause,end
if strindex('axyzd'                                   ,'/a.*c/'                                ,'r') <>  []  then pause,end
if strindex('abc'                                     ,'/a[bc]d/'                              ,'r') <>  []  then pause,end
if strindex('abd'                                     ,'/a[bc]d/'                              ,'r') <>  1   then pause,end
if strindex('abd'                                     ,'/a[b-d]e/'                             ,'r') <>  []  then pause,end
if strindex('ace'                                     ,'/a[b-d]e/'                             ,'r') <>  1   then pause,end
if strindex('aac'                                     ,'/a[b-d]/'                              ,'r') <>  2   then pause,end
if strindex('a-'                                      ,'/a[-b]/'                               ,'r') <>  1   then pause,end
if strindex('a-'                                      ,'/a[b-]/'                               ,'r') <>  1   then pause,end
if strindex('a]'                                      ,'/a]/'                                  ,'r') <>  1   then pause,end
if strindex('a]b'                                     ,'/a[]]b/'                               ,'r') <>  1   then pause,end
if strindex('aed'                                     ,'/a[^bc]d/'                             ,'r') <>  1   then pause,end
if strindex('abd'                                     ,'/a[^bc]d/'                             ,'r') <>  []  then pause,end
if strindex('adc'                                     ,'/a[^-b]c/'                             ,'r') <>  1   then pause,end
if strindex('a-c'                                     ,'/a[^-b]c/'                             ,'r') <>  []  then pause,end
if strindex('a]c'                                     ,'/a[^]b]c/'                             ,'r') <>  []  then pause,end
if strindex('adc'                                     ,'/a[^]b]c/'                             ,'r') <>  1   then pause,end
if strindex('a-'                                      ,'/\ba\b/'                               ,'r') <>  1   then pause,end
if strindex('-a'                                      ,'/\ba\b/'                               ,'r') <>  2   then pause,end
if strindex('-a-'                                     ,'/\ba\b/'                               ,'r') <>  2   then pause,end
if strindex('xy'                                      ,'/\by\b/'                               ,'r') <>  []  then pause,end
if strindex('yz'                                      ,'/\by\b/'                               ,'r') <>  []  then pause,end
if strindex('xyz'                                     ,'/\by\b/'                               ,'r') <>  []  then pause,end
if strindex('a-'                                      ,'/\Ba\B/'                               ,'r') <>  []  then pause,end
if strindex('-a'                                      ,'/\Ba\B/'                               ,'r') <>  []  then pause,end
if strindex('-a-'                                     ,'/\Ba\B/'                               ,'r') <>  []  then pause,end
if strindex('xy'                                      ,'/\By\b/'                               ,'r') <>  2   then pause,end
if strindex('xy'                                      ,'/\By\b/'                               ,'r') <>  2   then pause,end
if strindex('yz'                                      ,'/\by\B/'                               ,'r') <>  1   then pause,end
if strindex('xyz'                                     ,'/\By\B/'                               ,'r') <>  2   then pause,end
if strindex('a'                                       ,'/\w/'                                  ,'r') <>  1   then pause,end
if strindex('-'                                       ,'/\w/'                                  ,'r') <>  []  then pause,end
if strindex('a'                                       ,'/\W/'                                  ,'r') <>  []  then pause,end
if strindex('-'                                       ,'/\W/'                                  ,'r') <>  1   then pause,end
if strindex('a b'                                     ,'/a\sb/'                                ,'r') <>  1   then pause,end
if strindex('a-b'                                     ,'/a\sb/'                                ,'r') <>  []  then pause,end
if strindex('a b'                                     ,'/a\Sb/'                                ,'r') <>  []  then pause,end
if strindex('a-b'                                     ,'/a\Sb/'                                ,'r') <>  1   then pause,end
if strindex('1'                                       ,'/\d/'                                  ,'r') <>  1   then pause,end
if strindex('-'                                       ,'/\d/'                                  ,'r') <>  []  then pause,end
if strindex('1'                                       ,'/\D/'                                  ,'r') <>  []  then pause,end
if strindex('-'                                       ,'/\D/'                                  ,'r') <>  1   then pause,end
if strindex('a'                                       ,'/[\w]/'                                ,'r') <>  1   then pause,end
if strindex('-'                                       ,'/[\w]/'                                ,'r') <>  []  then pause,end
if strindex('a'                                       ,'/[\W]/'                                ,'r') <>  []  then pause,end
if strindex('-'                                       ,'/[\W]/'                                ,'r') <>  1   then pause,end
if strindex('a b'                                     ,'/a[\s]b/'                              ,'r') <>  1   then pause,end
if strindex('a-b'                                     ,'/a[\s]b/'                              ,'r') <>  []  then pause,end
if strindex('a b'                                     ,'/a[\S]b/'                              ,'r') <>  []  then pause,end
if strindex('a-b'                                     ,'/a[\S]b/'                              ,'r') <>  1   then pause,end
if strindex('1'                                       ,'/[\d]/'                                ,'r') <>  1   then pause,end
if strindex('-'                                       ,'/[\d]/'                                ,'r') <>  []  then pause,end
if strindex('1'                                       ,'/[\D]/'                                ,'r') <>  []  then pause,end
if strindex('-'                                       ,'/[\D]/'                                ,'r') <>  1   then pause,end
if strindex('abc'                                     ,'/ab|cd/'                               ,'r') <>  1   then pause,end
if strindex('abcd'                                    ,'/ab|cd/'                               ,'r') <>  1   then pause,end
if strindex('b'                                       ,'/$b/'                                  ,'r') <>  []  then pause,end
if strindex('ab'                                      ,'/a\(*b/'                               ,'r') <>  1   then pause,end
if strindex('a((b'                                    ,'/a\(*b/'                               ,'r') <>  1   then pause,end
if strindex('aabbabc'                                 ,'/a+b+c/'                               ,'r') <>  5   then pause,end
if strindex('aabbabc'                                 ,'/a{1,}b{1,}c/'                         ,'r') <>  5   then pause,end
if strindex('abcabc'                                  ,'/a.+?c/'                               ,'r') <>  1   then pause,end
if strindex('cde'                                     ,'/[^ab]*/'                              ,'r') <>  1   then pause,end
if strindex(''                                        ,'/abc/'                                 ,'r') <>  []  then pause,end
if strindex(''                                        ,'/a*/'                                  ,'r') <>  []  then pause,end
if strindex('e'                                       ,'/a|b|c|d|e/'                           ,'r') <>  1   then pause,end
if strindex('abcdefg'                                 ,'/abcd*efg/'                            ,'r') <>  1   then pause,end
if strindex('xabyabbbz'                               ,'/ab*/'                                 ,'r') <>  2   then pause,end
if strindex('xayabbbz'                                ,'/ab*/'                                 ,'r') <>  2   then pause,end
if strindex('hij'                                     ,'/[abhgefdc]ij/'                        ,'r') <>  1   then pause,end
if strindex('abcde'                                   ,'/^(ab|cd)e/'                           ,'r') <>  []  then pause,end
if strindex('adcdcde'                                 ,'/a[bcd]*dcdcde/'                       ,'r') <>  1   then pause,end
if strindex('adcdcde'                                 ,'/a[bcd]+dcdcde/'                       ,'r') <>  []  then pause,end
if strindex('alpha'                                   ,'/[a-zA-Z_][a-zA-Z0-9_]*/'              ,'r') <>  1   then pause,end
if strindex('effg'                                    ,'/(bc+d$|ef*g.|h?i(j|k))/'              ,'r') <>  []  then pause,end
if strindex('bcdd'                                    ,'/(bc+d$|ef*g.|h?i(j|k))/'              ,'r') <>  []  then pause,end
if strindex('aa'                                      ,'/((((((((((a))))))))))\10/'            ,'r') <>  1   then pause,end
if strindex('aa'                                      ,'/((((((((((a))))))))))\041/'           ,'r') <>  []  then pause,end
if strindex('a!'                                      ,'/((((((((((a))))))))))\041/'           ,'r') <>  1   then pause,end
if strindex('a'                                       ,'/(((((((((a)))))))))/'                 ,'r') <>  1   then pause,end
if strindex('uh-uh'                                   ,'/multiple words of text/'              ,'r') <>  []  then pause,end
if strindex('multiple words, yeah'                    ,'/multiple words/'                      ,'r') <>  1   then pause,end
if strindex('ab'                                      ,'/[k]/'                                 ,'r') <>  []  then pause,end
if strindex('ac'                                      ,'/a[-]?c/'                              ,'r') <>  1   then pause,end
if strindex('a'                                       ,'/(a)|\1/'                              ,'r') <>  1   then pause,end
if strindex('x'                                       ,'/(a)|\1/'                              ,'r') <>  []  then pause,end
if strindex('aaxabxbaxbbx'                            ,'/((\3|b)\2(a)x)+/'                     ,'r') <>  []  then pause,end
if strindex('ABC'                                     ,'/abc/i'                                ,'r') <>  1   then pause,end
if strindex('XBC'                                     ,'/abc/i'                                ,'r') <>  []  then pause,end
if strindex('AXC'                                     ,'/abc/i'                                ,'r') <>  []  then pause,end
if strindex('ABX'                                     ,'/abc/i'                                ,'r') <>  []  then pause,end
if strindex('XABCY'                                   ,'/abc/i'                                ,'r') <>  2   then pause,end
if strindex('ABABC'                                   ,'/abc/i'                                ,'r') <>  3   then pause,end
if strindex('ABC'                                     ,'/ab*c/i'                               ,'r') <>  1   then pause,end
if strindex('ABC'                                     ,'/ab*bc/i'                              ,'r') <>  1   then pause,end
if strindex('ABBC'                                    ,'/ab*bc/i'                              ,'r') <>  1   then pause,end
if strindex('ABBBBC'                                  ,'/ab*?bc/i'                             ,'r') <>  1   then pause,end
if strindex('ABBBBC'                                  ,'/ab{0,}?bc/i'                          ,'r') <>  1   then pause,end
if strindex('ABBC'                                    ,'/ab+?bc/i'                             ,'r') <>  1   then pause,end
if strindex('ABC'                                     ,'/ab+bc/i'                              ,'r') <>  []  then pause,end
if strindex('ABQ'                                     ,'/ab+bc/i'                              ,'r') <>  []  then pause,end
if strindex('ABQ'                                     ,'/ab{1,}bc/i'                           ,'r') <>  []  then pause,end
if strindex('ABBBBC'                                  ,'/ab+bc/i'                              ,'r') <>  1   then pause,end
if strindex('ABBBBC'                                  ,'/ab{1,}?bc/i'                          ,'r') <>  1   then pause,end
if strindex('ABBBBC'                                  ,'/ab{1,3}?bc/i'                         ,'r') <>  1   then pause,end
if strindex('ABBBBC'                                  ,'/ab{3,4}?bc/i'                         ,'r') <>  1   then pause,end
if strindex('ABBBBC'                                  ,'/ab{4,5}?bc/i'                         ,'r') <>  []  then pause,end
if strindex('ABBC'                                    ,'/ab??bc/i'                             ,'r') <>  1   then pause,end
if strindex('ABC'                                     ,'/ab??bc/i'                             ,'r') <>  1   then pause,end
if strindex('ABC'                                     ,'/ab{0,1}?bc/i'                         ,'r') <>  1   then pause,end
if strindex('ABBBBC'                                  ,'/ab??bc/i'                             ,'r') <>  []  then pause,end
if strindex('ABC'                                     ,'/ab??c/i'                              ,'r') <>  1   then pause,end
if strindex('ABC'                                     ,'/ab{0,1}?c/i'                          ,'r') <>  1   then pause,end
if strindex('ABC'                                     ,'/^abc$/i'                              ,'r') <>  1   then pause,end
if strindex('ABCC'                                    ,'/^abc$/i'                              ,'r') <>  []  then pause,end
if strindex('ABCC'                                    ,'/^abc/i'                               ,'r') <>  1   then pause,end
if strindex('AABC'                                    ,'/^abc$/i'                              ,'r') <>  []  then pause,end
if strindex('AABC'                                    ,'/abc$/i'                               ,'r') <>  2   then pause,end
if strindex('ABC'                                     ,'/a.c/i'                                ,'r') <>  1   then pause,end
if strindex('AXC'                                     ,'/a.c/i'                                ,'r') <>  1   then pause,end
if strindex('AXYZC'                                   ,'/a.*?c/i'                              ,'r') <>  1   then pause,end
if strindex('AXYZD'                                   ,'/a.*c/i'                               ,'r') <>  []  then pause,end
if strindex('ABC'                                     ,'/a[bc]d/i'                             ,'r') <>  []  then pause,end
if strindex('ABD'                                     ,'/a[bc]d/i'                             ,'r') <>  1   then pause,end
if strindex('ABD'                                     ,'/a[b-d]e/i'                            ,'r') <>  []  then pause,end
if strindex('ACE'                                     ,'/a[b-d]e/i'                            ,'r') <>  1   then pause,end
if strindex('AAC'                                     ,'/a[b-d]/i'                             ,'r') <>  2   then pause,end
if strindex('A-'                                      ,'/a[-b]/i'                              ,'r') <>  1   then pause,end
if strindex('A-'                                      ,'/a[b-]/i'                              ,'r') <>  1   then pause,end
if strindex('A]'                                      ,'/a]/i'                                 ,'r') <>  1   then pause,end
if strindex('A]B'                                     ,'/a[]]b/i'                              ,'r') <>  1   then pause,end
if strindex('AED'                                     ,'/a[^bc]d/i'                            ,'r') <>  1   then pause,end
if strindex('ABD'                                     ,'/a[^bc]d/i'                            ,'r') <>  []  then pause,end
if strindex('ADC'                                     ,'/a[^-b]c/i'                            ,'r') <>  1   then pause,end
if strindex('A-C'                                     ,'/a[^-b]c/i'                            ,'r') <>  []  then pause,end
if strindex('A]C'                                     ,'/a[^]b]c/i'                            ,'r') <>  []  then pause,end
if strindex('ADC'                                     ,'/a[^]b]c/i'                            ,'r') <>  1   then pause,end
if strindex('ABC'                                     ,'/ab|cd/i'                              ,'r') <>  1   then pause,end
if strindex('ABCD'                                    ,'/ab|cd/i'                              ,'r') <>  1   then pause,end
if strindex('B'                                       ,'/$b/i'                                 ,'r') <>  []  then pause,end
if strindex('AB'                                      ,'/a\(*b/i'                              ,'r') <>  1   then pause,end
if strindex('A((B'                                    ,'/a\(*b/i'                              ,'r') <>  1   then pause,end
if strindex('AABBABC'                                 ,'/a+b+c/i'                              ,'r') <>  5   then pause,end
if strindex('AABBABC'                                 ,'/a{1,}b{1,}c/i'                        ,'r') <>  5   then pause,end
if strindex('ABCABC'                                  ,'/a.+?c/i'                              ,'r') <>  1   then pause,end
if strindex('ABCABC'                                  ,'/a.*?c/i'                              ,'r') <>  1   then pause,end
if strindex('ABCABC'                                  ,'/a.{0,5}?c/i'                          ,'r') <>  1   then pause,end
if strindex('CDE'                                     ,'/[^ab]*/i'                             ,'r') <>  1   then pause,end
if strindex(''                                        ,'/abc/i'                                ,'r') <>  []  then pause,end
if strindex(''                                        ,'/a*/i'                                 ,'r') <>  []  then pause,end
if strindex('E'                                       ,'/a|b|c|d|e/i'                          ,'r') <>  1   then pause,end
if strindex('ABCDEFG'                                 ,'/abcd*efg/i'                           ,'r') <>  1   then pause,end
if strindex('XABYABBBZ'                               ,'/ab*/i'                                ,'r') <>  2   then pause,end
if strindex('XAYABBBZ'                                ,'/ab*/i'                                ,'r') <>  2   then pause,end
if strindex('HIJ'                                     ,'/[abhgefdc]ij/i'                       ,'r') <>  1   then pause,end
if strindex('ABCDE'                                   ,'/^(ab|cd)e/i'                          ,'r') <>  []  then pause,end
if strindex('ADCDCDE'                                 ,'/a[bcd]*dcdcde/i'                      ,'r') <>  1   then pause,end
if strindex('ADCDCDE'                                 ,'/a[bcd]+dcdcde/i'                      ,'r') <>  []  then pause,end
if strindex('ALPHA'                                   ,'/[a-zA-Z_][a-zA-Z0-9_]*/i'             ,'r') <>  1   then pause,end
if strindex('EFFG'                                    ,'/(bc+d$|ef*g.|h?i(j|k))/i'             ,'r') <>  []  then pause,end
if strindex('BCDD'                                    ,'/(bc+d$|ef*g.|h?i(j|k))/i'             ,'r') <>  []  then pause,end
if strindex('AA'                                      ,'/((((((((((a))))))))))\10/i'           ,'r') <>  1   then pause,end
if strindex('AA'                                      ,'/((((((((((a))))))))))\041/i'          ,'r') <>  []  then pause,end
if strindex('A!'                                      ,'/((((((((((a))))))))))\041/i'          ,'r') <>  1   then pause,end
if strindex('A'                                       ,'/(((((((((a)))))))))/i'                ,'r') <>  1   then pause,end
if strindex('UH-UH'                                   ,'/multiple words of text/i'             ,'r') <>  []  then pause,end
if strindex('MULTIPLE WORDS, YEAH'                    ,'/multiple words/i'                     ,'r') <>  1   then pause,end
if strindex('AB'                                      ,'/[k]/i'                                ,'r') <>  []  then pause,end
if strindex('AC'                                      ,'/a[-]?c/i'                             ,'r') <>  1   then pause,end
if strindex('abad'                                    ,'/a(?!b)./'                             ,'r') <>  3   then pause,end
if strindex('abad'                                    ,'/a(?=d)./'                             ,'r') <>  3   then pause,end
if strindex('abad'                                    ,'/a(?=c|d)./'                           ,'r') <>  3   then pause,end
if strindex('<&OUT'                                   ,'/^[<>]&/'                              ,'r') <>  1   then pause,end
if strindex('aaaaaaaaa'                               ,'/^(a\1?){4}$/'                         ,'r') <>  []  then pause,end
if strindex('aaaaaaaaaaa'                             ,'/^(a\1?){4}$/'                         ,'r') <>  []  then pause,end
if strindex('aaaaaaaaa'                               ,'/^(a(?(1)\1)){4}$/'                    ,'r') <>  []  then pause,end
if strindex('aaaaaaaaaaa'                             ,'/^(a(?(1)\1)){4}$/'                    ,'r') <>  []  then pause,end
if strindex('ab'                                      ,'/(?<=a)b/'                             ,'r') <>  2   then pause,end
if strindex('cb'                                      ,'/(?<=a)b/'                             ,'r') <>  []  then pause,end
if strindex('b'                                       ,'/(?<=a)b/'                             ,'r') <>  []  then pause,end
if strindex('ab'                                      ,'/(?<!c)b/'                             ,'r') <>  2   then pause,end
if strindex('cb'                                      ,'/(?<!c)b/'                             ,'r') <>  []  then pause,end
if strindex('b'                                       ,'/(?<!c)b/'                             ,'r') <>  1   then pause,end
if strindex('b'                                       ,'/(?<!c)b/'                             ,'r') <>  1   then pause,end
if strindex('aba'                                     ,'/(?:..)*a/'                            ,'r') <>  1   then pause,end
if strindex('aba'                                     ,'/(?:..)*?a/'                           ,'r') <>  1   then pause,end
if strindex('abc'                                     ,'/^(?:b|a(?=(.)))*\1/'                  ,'r') <>  1   then pause,end
if strindex('ab'                                      ,'/(?:(?i)a)b/'                          ,'r') <>  1   then pause,end
if strindex('Ab'                                      ,'/(?:(?i)a)b/'                          ,'r') <>  1   then pause,end
if strindex('aB'                                      ,'/(?:(?i)a)b/'                          ,'r') <>  []  then pause,end
if strindex('aB'                                      ,'/((?i)a)b/'                            ,'r') <>  []  then pause,end
if strindex('ab'                                      ,'/(?i:a)b/'                             ,'r') <>  1   then pause,end
if strindex('Ab'                                      ,'/(?i:a)b/'                             ,'r') <>  1   then pause,end
if strindex('aB'                                      ,'/(?i:a)b/'                             ,'r') <>  []  then pause,end
if strindex('aB'                                      ,'/((?i:a))b/'                           ,'r') <>  []  then pause,end
if strindex('ab'                                      ,'/(?:(?-i)a)b/i'                        ,'r') <>  1   then pause,end
if strindex('aB'                                      ,'/(?:(?-i)a)b/i'                        ,'r') <>  1   then pause,end
if strindex('Ab'                                      ,'/(?:(?-i)a)b/i'                        ,'r') <>  []  then pause,end
if strindex('Ab'                                      ,'/((?-i)a)b/i'                          ,'r') <>  []  then pause,end
if strindex('aB'                                      ,'/(?:(?-i)a)b/i'                        ,'r') <>  1   then pause,end
if strindex('AB'                                      ,'/(?:(?-i)a)b/i'                        ,'r') <>  []  then pause,end
if strindex('AB'                                      ,'/((?-i)a)b/i'                          ,'r') <>  []  then pause,end
if strindex('ab'                                      ,'/(?-i:a)b/i'                           ,'r') <>  1   then pause,end
if strindex('aB'                                      ,'/(?-i:a)b/i'                           ,'r') <>  1   then pause,end
if strindex('Ab'                                      ,'/(?-i:a)b/i'                           ,'r') <>  []  then pause,end
if strindex('Ab'                                      ,'/((?-i:a))b/i'                         ,'r') <>  []  then pause,end
if strindex('aB'                                      ,'/(?-i:a)b/i'                           ,'r') <>  1   then pause,end
if strindex('AB'                                      ,'/(?-i:a)b/i'                           ,'r') <>  []  then pause,end
if strindex('AB'                                      ,'/((?-i:a))b/i'                         ,'r') <>  []  then pause,end
if strindex('a'+lf+'B'                                ,'/((?-i:a.))b/i'                        ,'r') <>  []  then pause,end
if strindex('B'+lf+'B'                                ,'/((?s-i:a.))b/i'                       ,'r') <>  []  then pause,end
if strindex('cabbbb'                                  ,'/(?:c|d)(?:)(?:a(?:)(?:b)(?:b(?:))(?:b(?:)(?:b)))/','r') <>  1   then pause,end
if strindex('caaaaaaaabbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbb','/(?:c|d)(?:)(?:aaaaaaaa(?:)(?:bbbbbbbb)(?:bbbbbbbb(?:))(?:bbbbbbbb(?:)(?:bbbbbbbb)))/','r') <>  1   then pause,end
if strindex('foobar1234baz'                           ,'/foo\w*\d{4}baz/'                      ,'r') <>  1   then pause,end
if strindex('x~~'                                     ,'/x(~~)*(?:(?:F)?)?/'                   ,'r') <>  1   then pause,end
if strindex('aaac'                                    ,'/^a(?#xxx){3}c/'                       ,'r') <>  1   then pause,end
if strindex('aaac'                                    ,'/^a (?#xxx) (?#yyy) {3}c/x'            ,'r') <>  1   then pause,end
if strindex('dbcb'                                    ,'/(?<![cd])b/'                          ,'r') <>  []  then pause,end
if strindex('dbaacb'                                  ,'/(?<![cd])[ab]/'                       ,'r') <>  3   then pause,end
if strindex('dbcb'                                    ,'/(?<!(c|d))b/'                         ,'r') <>  []  then pause,end
if strindex('dbaacb'                                  ,'/(?<!(c|d))[ab]/'                      ,'r') <>  3   then pause,end
if strindex('cdaccb'                                  ,'/(?<!cd)[ab]/'                         ,'r') <>  6   then pause,end
if strindex('a--'                                     ,'/^(?:a?b?)*$/'                         ,'r') <>  []  then pause,end
if strindex('a'+lf+'b'+lf                             ,'/(?m)^b/'                              ,'r') <>  3   then pause,end
if strindex('a'+lf+'b'+lf+'c'+lf                      ,'/^b/'                                  ,'r') <>  []  then pause,end
if strindex('a'+lf+'b'+lf+'c'+lf                      ,'/()^b/'                                ,'r') <>  []  then pause,end
if strindex('a'                                       ,'/(x)?(?(1)a|b)/'                       ,'r') <>  []  then pause,end
if strindex('a'                                       ,'/(x)?(?(1)b|a)/'                       ,'r') <>  1   then pause,end
if strindex('a'                                       ,'/()?(?(1)b|a)/'                        ,'r') <>  1   then pause,end
if strindex('a'                                       ,'/()(?(1)b|a)/'                         ,'r') <>  []  then pause,end
if strindex('a'                                       ,'/()?(?(1)a|b)/'                        ,'r') <>  1   then pause,end
if strindex('blah)'                                   ,'/^(\()?blah(?(1)(\)))$/'               ,'r') <>  []  then pause,end
if strindex('(blah'                                   ,'/^(\()?blah(?(1)(\)))$/'               ,'r') <>  []  then pause,end
if strindex('blah)'                                   ,'/^(\(+)?blah(?(1)(\)))$/'              ,'r') <>  []  then pause,end
if strindex('(blah'                                   ,'/^(\(+)?blah(?(1)(\)))$/'              ,'r') <>  []  then pause,end
if strindex('a'                                       ,'/(?(?!a)a|b)/'                         ,'r') <>  []  then pause,end
if strindex('a'                                       ,'/(?(?!a)b|a)/'                         ,'r') <>  1   then pause,end
if strindex('a'                                       ,'/(?(?=a)b|a)/'                         ,'r') <>  []  then pause,end
if strindex('a'                                       ,'/(?(?=a)a|b)/'                         ,'r') <>  1   then pause,end
if strindex('aaab'                                    ,'/^(?=(a+?))\1ab/'                      ,'r') <>  []  then pause,end
if strindex('aaab'                                    ,'/^(?=(a+?))\1ab/'                      ,'r') <>  []  then pause,end
if strindex('abcd:'                                   ,'/([\w:]+::)?(\w+)$/'                   ,'r') <>  []  then pause,end
if strindex('abcd:'                                   ,'/([\w:]+::)?(\w+)$/'                   ,'r') <>  []  then pause,end
if strindex('aaab'                                    ,'/(>a+)ab/'                             ,'r') <>  []  then pause,end
if strindex('aaab'                                    ,'/(?>a+)b/'                             ,'r') <>  1   then pause,end
if strindex('abc'                                     ,'/[a[:]b[:c]/'                          ,'r') <>  1   then pause,end
if strindex('abc'                                     ,'/[a[:]b[:c]/'                          ,'r') <>  1   then pause,end
if strindex('((abc(ade)ufh()()x'                      ,'/((?>[^()]+)|\([^()]*\))+/'            ,'r') <>  3   then pause,end
if strindex('a'+lf+'b'+lf                             ,'/a\Z/'                                 ,'r') <>  []  then pause,end
if strindex('a'+lf+'b'+lf                             ,'/a\z/'                                 ,'r') <>  []  then pause,end
if strindex('a'+lf+'b'+lf                             ,'/a$/'                                  ,'r') <>  []  then pause,end
if strindex('b'+lf+'a'+lf                             ,'/a\z/'                                 ,'r') <>  []  then pause,end
if strindex('a'+lf+'b'+lf                             ,'/a\Z/m'                                ,'r') <>  []  then pause,end
if strindex('a'+lf+'b'+lf                             ,'/a\z/m'                                ,'r') <>  []  then pause,end
if strindex('b'+lf+'a'+lf                             ,'/a\z/m'                                ,'r') <>  []  then pause,end
if strindex('aa'+lf+'b'+lf                            ,'/aa\Z/'                                ,'r') <>  []  then pause,end
if strindex('aa'+lf+'b'+lf                            ,'/aa\z/'                                ,'r') <>  []  then pause,end
if strindex('aa'+lf+'b'+lf                            ,'/aa$/'                                 ,'r') <>  []  then pause,end
if strindex('b'+lf+'aa'+lf                            ,'/aa\z/'                                ,'r') <>  []  then pause,end
if strindex('aa'+lf+'b'+lf                            ,'/aa\Z/m'                               ,'r') <>  []  then pause,end
if strindex('aa'+lf+'b'+lf                            ,'/aa\z/m'                               ,'r') <>  []  then pause,end
if strindex('b'+lf+'aa'+lf                            ,'/aa\z/m'                               ,'r') <>  []  then pause,end
if strindex('ac'+lf+'b'+lf                            ,'/aa\Z/'                                ,'r') <>  []  then pause,end
if strindex('ac'+lf+'b'+lf                            ,'/aa\z/'                                ,'r') <>  []  then pause,end
if strindex('ac'+lf+'b'+lf                            ,'/aa$/'                                 ,'r') <>  []  then pause,end
if strindex('b'+lf+'ac'+lf                            ,'/aa\Z/'                                ,'r') <>  []  then pause,end
if strindex('b'+lf+'ac'+lf                            ,'/aa\z/'                                ,'r') <>  []  then pause,end
if strindex('b'+lf+'ac'+lf                            ,'/aa$/'                                 ,'r') <>  []  then pause,end
if strindex('b'+lf+'ac'                               ,'/aa\Z/'                                ,'r') <>  []  then pause,end
if strindex('b'+lf+'ac'                               ,'/aa\z/'                                ,'r') <>  []  then pause,end
if strindex('b'+lf+'ac'                               ,'/aa$/'                                 ,'r') <>  []  then pause,end
if strindex('ac'+lf+'b'+lf                            ,'/aa\Z/m'                               ,'r') <>  []  then pause,end
if strindex('ac'+lf+'b'+lf                            ,'/aa\z/m'                               ,'r') <>  []  then pause,end
if strindex('ac'+lf+'b'+lf                            ,'/aa$/m'                                ,'r') <>  []  then pause,end
if strindex('b'+lf+'ac'+lf                            ,'/aa\Z/m'                               ,'r') <>  []  then pause,end
if strindex('b'+lf+'ac'+lf                            ,'/aa\z/m'                               ,'r') <>  []  then pause,end
if strindex('b'+lf+'ac'+lf                            ,'/aa$/m'                                ,'r') <>  []  then pause,end
if strindex('b'+lf+'ac'                               ,'/aa\Z/m'                               ,'r') <>  []  then pause,end
if strindex('b'+lf+'ac'                               ,'/aa\z/m'                               ,'r') <>  []  then pause,end
if strindex('b'+lf+'ac'                               ,'/aa$/m'                                ,'r') <>  []  then pause,end
if strindex('ca'+lf+'b'+lf                            ,'/aa\Z/'                                ,'r') <>  []  then pause,end
if strindex('ca'+lf+'b'+lf                            ,'/aa\z/'                                ,'r') <>  []  then pause,end
if strindex('ca'+lf+'b'+lf                            ,'/aa$/'                                 ,'r') <>  []  then pause,end
if strindex('b'+lf+'ca'+lf                            ,'/aa\Z/'                                ,'r') <>  []  then pause,end
if strindex('b'+lf+'ca'+lf                            ,'/aa\z/'                                ,'r') <>  []  then pause,end
if strindex('b'+lf+'ca'+lf                            ,'/aa$/'                                 ,'r') <>  []  then pause,end
if strindex('b'+lf+'ca'                               ,'/aa\Z/'                                ,'r') <>  []  then pause,end
if strindex('b'+lf+'ca'                               ,'/aa\z/'                                ,'r') <>  []  then pause,end
if strindex('b'+lf+'ca'                               ,'/aa$/'                                 ,'r') <>  []  then pause,end
if strindex('ca'+lf+'b'+lf                            ,'/aa\Z/m'                               ,'r') <>  []  then pause,end
if strindex('ca'+lf+'b'+lf                            ,'/aa\z/m'                               ,'r') <>  []  then pause,end
if strindex('ca'+lf+'b'+lf                            ,'/aa$/m'                                ,'r') <>  []  then pause,end
if strindex('b'+lf+'ca'+lf                            ,'/aa\Z/m'                               ,'r') <>  []  then pause,end
if strindex('b'+lf+'ca'+lf                            ,'/aa\z/m'                               ,'r') <>  []  then pause,end
if strindex('b'+lf+'ca'+lf                            ,'/aa$/m'                                ,'r') <>  []  then pause,end
if strindex('b'+lf+'ca'                               ,'/aa\Z/m'                               ,'r') <>  []  then pause,end
if strindex('b'+lf+'ca'                               ,'/aa\z/m'                               ,'r') <>  []  then pause,end
if strindex('b'+lf+'ca'                               ,'/aa$/m'                                ,'r') <>  []  then pause,end
if strindex('ab'+lf+'b'+lf                            ,'/ab\Z/'                                ,'r') <>  []  then pause,end
if strindex('ab'+lf+'b'+lf                            ,'/ab\z/'                                ,'r') <>  []  then pause,end
if strindex('ab'+lf+'b'+lf                            ,'/ab$/'                                 ,'r') <>  []  then pause,end
if strindex('b'+lf+'ab'+lf                            ,'/ab\z/'                                ,'r') <>  []  then pause,end
if strindex('ab'+lf+'b'+lf                            ,'/ab\Z/m'                               ,'r') <>  []  then pause,end
if strindex('ab'+lf+'b'+lf                            ,'/ab\z/m'                               ,'r') <>  []  then pause,end
if strindex('b'+lf+'ab'+lf                            ,'/ab\z/m'                               ,'r') <>  []  then pause,end
if strindex('ac'+lf+'b'+lf                            ,'/ab\Z/'                                ,'r') <>  []  then pause,end
if strindex('ac'+lf+'b'+lf                            ,'/ab\z/'                                ,'r') <>  []  then pause,end
if strindex('ac'+lf+'b'+lf                            ,'/ab$/'                                 ,'r') <>  []  then pause,end
if strindex('b'+lf+'ac'+lf                            ,'/ab\Z/'                                ,'r') <>  []  then pause,end
if strindex('b'+lf+'ac'+lf                            ,'/ab\z/'                                ,'r') <>  []  then pause,end
if strindex('b'+lf+'ac'+lf                            ,'/ab$/'                                 ,'r') <>  []  then pause,end
if strindex('b'+lf+'ac'                               ,'/ab\Z/'                                ,'r') <>  []  then pause,end
if strindex('b'+lf+'ac'                               ,'/ab\z/'                                ,'r') <>  []  then pause,end
if strindex('b'+lf+'ac'                               ,'/ab$/'                                 ,'r') <>  []  then pause,end
if strindex('ac'+lf+'b'+lf                            ,'/ab\Z/m'                               ,'r') <>  []  then pause,end
if strindex('ac'+lf+'b'+lf                            ,'/ab\z/m'                               ,'r') <>  []  then pause,end
if strindex('ac'+lf+'b'+lf                            ,'/ab$/m'                                ,'r') <>  []  then pause,end
if strindex('b'+lf+'ac'+lf                            ,'/ab\Z/m'                               ,'r') <>  []  then pause,end
if strindex('b'+lf+'ac'+lf                            ,'/ab\z/m'                               ,'r') <>  []  then pause,end
if strindex('b'+lf+'ac'+lf                            ,'/ab$/m'                                ,'r') <>  []  then pause,end
if strindex('b'+lf+'ac'                               ,'/ab\Z/m'                               ,'r') <>  []  then pause,end
if strindex('b'+lf+'ac'                               ,'/ab\z/m'                               ,'r') <>  []  then pause,end
if strindex('b'+lf+'ac'                               ,'/ab$/m'                                ,'r') <>  []  then pause,end
if strindex('ca'+lf+'b'+lf                            ,'/ab\Z/'                                ,'r') <>  []  then pause,end
if strindex('ca'+lf+'b'+lf                            ,'/ab\z/'                                ,'r') <>  []  then pause,end
if strindex('ca'+lf+'b'+lf                            ,'/ab$/'                                 ,'r') <>  []  then pause,end
if strindex('b'+lf+'ca'+lf                            ,'/ab\Z/'                                ,'r') <>  []  then pause,end
if strindex('b'+lf+'ca'+lf                            ,'/ab\z/'                                ,'r') <>  []  then pause,end
if strindex('b'+lf+'ca'+lf                            ,'/ab$/'                                 ,'r') <>  []  then pause,end
if strindex('b'+lf+'ca'                               ,'/ab\Z/'                                ,'r') <>  []  then pause,end
if strindex('b'+lf+'ca'                               ,'/ab\z/'                                ,'r') <>  []  then pause,end
if strindex('b'+lf+'ca'                               ,'/ab$/'                                 ,'r') <>  []  then pause,end
if strindex('ca'+lf+'b'+lf                            ,'/ab\Z/m'                               ,'r') <>  []  then pause,end
if strindex('ca'+lf+'b'+lf                            ,'/ab\z/m'                               ,'r') <>  []  then pause,end
if strindex('ca'+lf+'b'+lf                            ,'/ab$/m'                                ,'r') <>  []  then pause,end
if strindex('b'+lf+'ca'+lf                            ,'/ab\Z/m'                               ,'r') <>  []  then pause,end
if strindex('b'+lf+'ca'+lf                            ,'/ab\z/m'                               ,'r') <>  []  then pause,end
if strindex('b'+lf+'ca'+lf                            ,'/ab$/m'                                ,'r') <>  []  then pause,end
if strindex('b'+lf+'ca'                               ,'/ab\Z/m'                               ,'r') <>  []  then pause,end
if strindex('b'+lf+'ca'                               ,'/ab\z/m'                               ,'r') <>  []  then pause,end
if strindex('b'+lf+'ca'                               ,'/ab$/m'                                ,'r') <>  []  then pause,end
if strindex('abb'+lf+'b'+lf                           ,'/abb\Z/'                               ,'r') <>  []  then pause,end
if strindex('abb'+lf+'b'+lf                           ,'/abb\z/'                               ,'r') <>  []  then pause,end
if strindex('abb'+lf+'b'+lf                           ,'/abb$/'                                ,'r') <>  []  then pause,end
if strindex('b'+lf+'abb'+lf                           ,'/abb\z/'                               ,'r') <>  []  then pause,end
if strindex('abb'+lf+'b'+lf                           ,'/abb\Z/m'                              ,'r') <>  []  then pause,end
if strindex('abb'+lf+'b'+lf                           ,'/abb\z/m'                              ,'r') <>  []  then pause,end
if strindex('b'+lf+'abb'+lf                           ,'/abb\z/m'                              ,'r') <>  []  then pause,end
if strindex('ac'+lf+'b'+lf                            ,'/abb\Z/'                               ,'r') <>  []  then pause,end
if strindex('ac'+lf+'b'+lf                            ,'/abb\z/'                               ,'r') <>  []  then pause,end
if strindex('ac'+lf+'b'+lf                            ,'/abb$/'                                ,'r') <>  []  then pause,end
if strindex('b'+lf+'ac'+lf                            ,'/abb\Z/'                               ,'r') <>  []  then pause,end
if strindex('b'+lf+'ac'+lf                            ,'/abb\z/'                               ,'r') <>  []  then pause,end
if strindex('b'+lf+'ac'+lf                            ,'/abb$/'                                ,'r') <>  []  then pause,end
if strindex('b'+lf+'ac'                               ,'/abb\Z/'                               ,'r') <>  []  then pause,end
if strindex('b'+lf+'ac'                               ,'/abb\z/'                               ,'r') <>  []  then pause,end
if strindex('b'+lf+'ac'                               ,'/abb$/'                                ,'r') <>  []  then pause,end
if strindex('ac'+lf+'b'+lf                            ,'/abb\Z/m'                              ,'r') <>  []  then pause,end
if strindex('ac'+lf+'b'+lf                            ,'/abb\z/m'                              ,'r') <>  []  then pause,end
if strindex('ac'+lf+'b'+lf                            ,'/abb$/m'                               ,'r') <>  []  then pause,end
if strindex('b'+lf+'ac'+lf                            ,'/abb\Z/m'                              ,'r') <>  []  then pause,end
if strindex('b'+lf+'ac'+lf                            ,'/abb\z/m'                              ,'r') <>  []  then pause,end
if strindex('b'+lf+'ac'+lf                            ,'/abb$/m'                               ,'r') <>  []  then pause,end
if strindex('b'+lf+'ac'                               ,'/abb\Z/m'                              ,'r') <>  []  then pause,end
if strindex('b'+lf+'ac'                               ,'/abb\z/m'                              ,'r') <>  []  then pause,end
if strindex('b'+lf+'ac'                               ,'/abb$/m'                               ,'r') <>  []  then pause,end
if strindex('ca'+lf+'b'+lf                            ,'/abb\Z/'                               ,'r') <>  []  then pause,end
if strindex('ca'+lf+'b'+lf                            ,'/abb\z/'                               ,'r') <>  []  then pause,end
if strindex('ca'+lf+'b'+lf                            ,'/abb$/'                                ,'r') <>  []  then pause,end
if strindex('b'+lf+'ca'+lf                            ,'/abb\Z/'                               ,'r') <>  []  then pause,end
if strindex('b'+lf+'ca'+lf                            ,'/abb\z/'                               ,'r') <>  []  then pause,end
if strindex('b'+lf+'ca'+lf                            ,'/abb$/'                                ,'r') <>  []  then pause,end
if strindex('b'+lf+'ca'                               ,'/abb\Z/'                               ,'r') <>  []  then pause,end
if strindex('b'+lf+'ca'                               ,'/abb\z/'                               ,'r') <>  []  then pause,end
if strindex('b'+lf+'ca'                               ,'/abb$/'                                ,'r') <>  []  then pause,end
if strindex('ca'+lf+'b'+lf                            ,'/abb\Z/m'                              ,'r') <>  []  then pause,end
if strindex('ca'+lf+'b'+lf                            ,'/abb\z/m'                              ,'r') <>  []  then pause,end
if strindex('ca'+lf+'b'+lf                            ,'/abb$/m'                               ,'r') <>  []  then pause,end
if strindex('b'+lf+'ca'+lf                            ,'/abb\Z/m'                              ,'r') <>  []  then pause,end
if strindex('b'+lf+'ca'+lf                            ,'/abb\z/m'                              ,'r') <>  []  then pause,end
if strindex('b'+lf+'ca'+lf                            ,'/abb$/m'                               ,'r') <>  []  then pause,end
if strindex('b'+lf+'ca'                               ,'/abb\Z/m'                              ,'r') <>  []  then pause,end
if strindex('b'+lf+'ca'                               ,'/abb\z/m'                              ,'r') <>  []  then pause,end
if strindex('b'+lf+'ca'                               ,'/abb$/m'                               ,'r') <>  []  then pause,end
if strindex('x'                                       ,'/a*abc?xyz+pqr{3}ab{2,}xy{4,5}pq{0,6}AB{0,}zz/','r') <>  []  then pause,end
if strindex('foo.bart'                                ,'/foo.bart/'                            ,'r') <>  1   then pause,end
if strindex('abcd'+lf+'dxxx'                          ,'/^d[x][x][x]/m'                        ,'r') <>  6   then pause,end
if strindex('xxxtt'                                   ,'/tt+$/'                                ,'r') <>  4   then pause,end
if strindex('aaaXbX'                                  ,'/\GX.*X/'                              ,'r') <>  []  then pause,end
if strindex('Changes'                                 ,'/\.c(pp|xx|c)?$/i'                     ,'r') <>  []  then pause,end
if strindex('IO.c'                                    ,'/\.c(pp|xx|c)?$/i'                     ,'r') <>  3   then pause,end
if strindex('C:/'                                     ,'/^([a-z]:)/'                           ,'r') <>  []  then pause,end
if strindex(lf+'x aa'                                 ,'/^\S\s+aa$/m'                          ,'r') <>  2   then pause,end
[k,w] = strindex(lf+'x aa'                                 ,'/^\S\s+aa$/m'                          ,'r');
if k <> 2 then pause,end
if w <> 1 then pause,end
if strindex('ab'                                      ,'/(^|a)b/'                              ,'r') <>  1   then pause,end
if strindex('abcab'                                   ,'/(\w)?(abc)\1b/'                       ,'r') <>  []  then pause,end
if strindex('a,b,c'                                   ,'/^(?:.,){2}c/'                         ,'r') <>  1   then pause,end
if strindex('a,b,c'                                   ,'/^(?:[^,]*,){2}c/'                     ,'r') <>  1   then pause,end
if strindex(''                                        ,'/(?i)/'                                ,'r') <>  []  then pause,end
if strindex('a'+lf+'xb'+lf                            ,'/(?!\A)x/m'                            ,'r') <>  3   then pause,end
if strindex('123'+lf+'abcabcabcabc'+lf                ,'/^.{9}abc.*\n/m'                       ,'r') <>  5   then pause,end
if strindex('a'                                       ,'/^(a)?(?(1)a|b)+$/'                    ,'r') <>  []  then pause,end
if strindex('x1'                                      ,'/^(0+)?(?:x(1))?/'                     ,'r') <>  1   then pause,end
if strindex('012cxx0190'                              ,'/^([0-9a-fA-F]+)(?:x([0-9a-fA-F]+)?)(?:x([0-9a-fA-F]+))?/','r') <>  1   then pause,end
if strindex('aaaacccc'                                ,'/((?:aaaa|bbbb)cccc)?/'                ,'r') <>  1   then pause,end
if strindex('bbbbcccc'                                ,'/((?:aaaa|bbbb)cccc)?/'                ,'r') <>  1   then pause,end
if strindex('a'+lf+'b'+lf                             ,'/b\s^/m'                               ,'r') <>  []  then pause,end
if strindex('a'                                       ,'/\ba/'                                 ,'r') <>  1   then pause,end
if strindex('AbCd'                                    ,'/ab(?i)cd/'                            ,'r') <>  []  then pause,end
if strindex('abCd'                                    ,'/ab(?i)cd/'                            ,'r') <>  1   then pause,end
if strindex('Oo'                                      ,'/^(o)(?!.*\1)/i'                       ,'r') <>  []  then pause,end
if strindex('2'                                       ,'/2(]*)?$\1/'                           ,'r') <>  1   then pause,end
if strindex('......abef'                              ,'/.*a(?!(b|cd)*e).*f/'                  ,'r') <>  []  then pause,end
if strindex('fools'                                   ,'/(foo|fool|x.|money|parted)$/'         ,'r') <>  []  then pause,end
if strindex('fools'                                   ,'/(x.|foo|fool|x.|money|parted|y.)$/'   ,'r') <>  []  then pause,end
if strindex('fools'                                   ,'/(foo|fool|money|parted)$/'            ,'r') <>  []  then pause,end
//======================================================================================== 
// Chinese
str = '世界您好';
[r,w] = strindex(str,'/^世界/','r');
if r <> 1 then pause,end
if w <> 1 then pause,end

[r,w] = strindex(str,'/世界$/','r');
if r <> [] then pause,end
if w <> [] then pause,end

[r,w] = strindex(str,'/您好$/','r');
if r <> 3 then pause,end
if w <> 1 then pause,end

[r,w] = strindex(str,'/^您好/','r');
if r <> [] then pause,end
if w <> [] then pause,end

[r,w] = strindex(str,'/界您/','r');
if r <> 2 then pause,end
if w <> 1 then pause,end

[r,w] = strindex(str,'界您');
if r <> 2 then pause,end
if w <> 1 then pause,end

[r,w] = strindex(str,'/界_您/','r');
if r <> [] then pause,end
if w <> [] then pause,end
//======================================================================================== 
// Russian
str = 'привет мир';
[r,w] = strindex(str,'/^привет/','r');
if r <> 1 then pause,end
if w <> 1 then pause,end

[r,w] = strindex(str,'/привет$/','r');
if r <> [] then pause,end
if w <> [] then pause,end

[r,w] = strindex(str,'/мир$/','r');
if r <> 8 then pause,end
if w <> 1 then pause,end

[r,w] = strindex(str,'/^мир/','r');
if r <> [] then pause,end
if w <> [] then pause,end

[r,w] = strindex(str,'/вет\sм/','r');
if r <> 4 then pause,end
if w <> 1 then pause,end

[r,w] = strindex(str,'/вет_м/','r');
if r <> [] then pause,end
if w <> [] then pause,end
//======================================================================================== 
// Cyrilic
str = 'АБВГДЄЖЅЗИІКЛМНОПҀРСТѸФХѠЦЧШЩЪЪІЬѢЮѦѨѪѬѮѰѲѴѤ';

[r,w] = strindex(str,'/^АБВГДЄЖЅЗИІКЛМНОПҀР/','r');
if r <> 1 then pause,end
if w <> 1 then pause,end

[r,w] = strindex(str,'/АБВГДЄЖЅЗИІКЛМНОПҀР$/','r');
if r <> [] then pause,end
if w <> [] then pause,end

[r,w] = strindex(str,'/ЧШЩЪЪІЬѢЮѦѨѪѬѮѰѲѴѤ$/','r');
if r <> 27 then pause,end
if w <> 1 then pause,end

[r,w] = strindex(str,'/^ЧШЩЪЪІЬѢЮѦѨѪѬѮѰѲѴѤ/','r');
if r <> [] then pause,end
if w <> [] then pause,end

[r,w] = strindex(str,'/ИІКЛМНОПҀРСТѸФХѠЦЧШЩЪ/','r');
if r <> 10 then pause,end
if w <> 1 then pause,end

[r,w] = strindex(str,'/ИІКЛМНОПҀ_РСТѸФХѠЦЧШЩЪ/','r');
if r <> [] then pause,end
if w <> [] then pause,end
//======================================================================================== 
// Japanese
str = '丑丞串乃之乎也云亘亙些亦亥亨亮仔伊伎伍伽佃佑伶侃侑俄侠俣俐侶倭俺倶倦倖偲僅傭儲允兎兜其冥冴冶凄凌凜凛凧凪凰凱函刹劉劫勁勃';

[r,w] = strindex(str,'/^丑丞串乃之乎也云亘亙些亦/','r');
if r <> 1 then pause,end
if w <> 1 then pause,end

[r,w] = strindex(str,'/丑丞串乃之乎也云亘亙些亦$/','r');
if r <> [] then pause,end
if w <> [] then pause,end

[r,w] = strindex(str,'/凰凱函刹劉劫勁勃$/','r');
if r <> 53 then pause,end
if w <> 1 then pause,end

[r,w] = strindex(str,'/^凰凱函刹劉劫勁勃/','r');
if r <> [] then pause,end
if w <> [] then pause,end

[r,w] = strindex(str,'/亨亮仔伊伎伍伽佃佑伶侃/','r');
if r <> 14 then pause,end
if w <> 1 then pause,end

[r,w] = strindex(str,'/亨亮仔伊_伎伍伽佃佑伶侃/','r');
if r <> [] then pause,end
if w <> [] then pause,end
//======================================================================================== 
// Thaï
str = 'มกระดุกกระดิก';
[r,w] = strindex(str,'/^มกระดุกกร/','r');
if r <> 1 then pause,end
if w <> 1 then pause,end

[r,w] = strindex(str,'/มกระดุกกร$/','r');
if r <> [] then pause,end
if w <> [] then pause,end

[r,w] = strindex(str,'/กกระดิก$/','r');
if r <> 7 then pause,end
if w <> 1 then pause,end

[r,w] = strindex(str,'/^กกระดิก/','r');
if r <> [] then pause,end
if w <> [] then pause,end

[r,w] = strindex(str,'/ดุกก/','r');
if r <> 5 then pause,end
if w <> 1 then pause,end

[r,w] = strindex(str,'/ดุก_ก/','r');
if r <> [] then pause,end
if w <> [] then pause,end
//======================================================================================== 
