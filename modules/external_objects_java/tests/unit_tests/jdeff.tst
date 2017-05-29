//
//  Copyright (C) 2013 - S/E - Sylvestre Ledru
//
//  This file must be used under the terms of the CeCILL.
//  This source file is licensed as described in the file COPYING, which
//  you should have received as part of this distribution.  The terms
//  are also available at
//  http://www.cecill.info/licences/Licence_CeCILL_V2.1-en.txt
//
//
// <-- JVM MANDATORY -->
//

jdeff("java.lang.Double", "parseDouble", "str2number");
PI = str2number("3.141592653589");
assert_checkalmostequal(PI,%pi);
