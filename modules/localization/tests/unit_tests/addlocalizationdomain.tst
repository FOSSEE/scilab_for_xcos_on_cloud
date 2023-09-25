//<-- CLI SHELL MODE -->
// =============================================================================
// Scilab ( https://www.scilab.org/ ) - This file is part of Scilab
// Copyright (C) 2013 - Scilab Enterprises - Antoine ELIAS
//
//  This file is distributed under the same license as the Scilab package.
// =============================================================================

//===============================
// unit tests addlocalizationdomain
//===============================


//error messages
if execstr('addlocalizationdomain()','errcatch')==0 then pause,end
if execstr('addlocalizationdomain(""foo"")','errcatch')==0 then pause,end

addlocalizationdomain("tbx", "SCI/modules/localization/tests/unit_tests/locale");
setlanguage("fr_FR");
assert_checkequal(gettext("%s: No more memory.\n"), "%s : Plus de mémoire disponible.\n");
assert_checkequal(gettext("tbx", "%s: No more memory.\n"), "%s : Overwrite Scilab translation.\n");
assert_checkequal(gettext("%s: something not in Scilab.\n"), "%s: something not in Scilab.\n");
assert_checkequal(gettext("tbx", "%s: something not in Scilab.\n"), "%s : it is true, that is not in Scilab.\n");
