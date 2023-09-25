// =============================================================================
// Scilab ( https://www.scilab.org/ ) - This file is part of Scilab
// Copyright (C) 2010 - DIGITEO - Allan CORNET
//
//  This file is distributed under the same license as the Scilab package.
// =============================================================================
// <-- LONG TIME EXECUTION -->
// <-- Non-regression test for bug 6511 -->
//
// <-- GitLab URL -->
// https://gitlab.com/scilab/scilab/-/issues/6511
//
// <-- Short Description -->
// mseek and mtell do not manage files > 2 Gbytes on 64 bits
// creates a very big file > 2 Go and try to read
// resquires 10 minutes or more to execute

SIZE_FILE = 4e8;
file3 = TMPDIR + "/test3.bin";
fd1= mopen(file3,"wb");
for i=1:SIZE_FILE, mput(i,"d"); end
mseek(0);
mput(678,"d");
mseek(0,fd1,"end");
lastpos = mtell(fd1);
mput(932,"d");
mtell(fd1);
mclose(fd1);

fd2= mopen(file3,"rb");

mseek(0,fd2,"set");
res = mget(1,"d",fd2);
if res <> 678 then pause,end;

mseek(0,fd2);
mseek(lastpos,fd2);
res = mget(1,"d",fd2);
if res <> 932 then pause,end;

mclose(fd2);

// delete file after (to save space on disk)
mdelete(file3);
