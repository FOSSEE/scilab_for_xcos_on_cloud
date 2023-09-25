// =============================================================================
// Scilab ( https://www.scilab.org/ ) - This file is part of Scilab
// Copyright (C) DIGITEO - 2009 - Allan CORNET
//
//  This file is distributed under the same license as the Scilab package.
// =============================================================================

// <-- CLI SHELL MODE -->

// <-- Non-regression test for bug 4655 -->
//
// <-- GitLab URL -->
// https://gitlab.com/scilab/scilab/-/issues/4655
//
// <-- Short Description -->
//  
// =============================================================================
ref_file = SCI+'/modules/fileio/tests/unit_tests/text.txt';
// =============================================================================
  file1rb = mopen(ref_file, 'rb');
  file2wb = mopen(TMPDIR + '/textcopy.bin', 'wb');

  mseek (0, file1rb, 'end');
  sizefile1rb = mtell(file1rb);
  
  mseek (0, file1rb, 'set');
  for i = 0:sizefile1rb,
    mputstr(mgetstr(1,  file1rb),file2wb);
  end

  mclose(file1rb);
  mclose(file2wb);
// =============================================================================
  file2rb = mopen(TMPDIR + '/textcopy.bin', 'rb');
  mseek (0, file2rb, 'end');
  sizefile2rb = mtell(file2rb);
  mclose(file2rb);

  if sizefile1rb <= 0 then pause,end
  if sizefile1rb <> sizefile2rb then pause,end
// =============================================================================  
  file3rt = mopen(SCI+'/modules/fileio/tests/unit_tests/text.txt', 'rt');
  file3wt = mopen(TMPDIR + '/textcopy.txt', 'wt');

  mseek (0, file3rt, 'end');
  sizefile3rt = mtell(file3rt);
  
  mseek (0, file3rt, 'set');
  for i = 0:sizefile3rt,
    mputstr(mgetstr(1,  file3rt),file3wt);
  end
  
  mclose(file3rt);
  mclose(file3wt);
// =============================================================================
  file4rt = mopen(TMPDIR + '/textcopy.txt', 'rt');
  mseek (0, file4rt, 'end');
  sizefile4rt = mtell(file4rt);
  mclose(file4rt);

  if sizefile4rt <= 0 then pause,end
  if sizefile4rt <> sizefile3rt then pause,end
// =============================================================================
