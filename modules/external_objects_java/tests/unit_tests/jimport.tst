// =============================================================================
// Scilab ( http://www.scilab.org/ ) - This file is part of Scilab
// Copyright (C) 2013 - Scilab Enterprises - Sylvestre Ledru
//
//  This file is distributed under the same license as the Scilab package.
// =============================================================================

javaclasspath(SCI + "/modules/external_objects_java/tests/libintl.jar");
jimport("gnu.gettext.GettextResource");
assert_checkequal(jgetclassname(GettextResource),"gnu.gettext.GettextResource");


