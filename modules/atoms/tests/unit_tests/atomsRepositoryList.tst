// =============================================================================
// Scilab ( https://www.scilab.org/ ) - This file is part of Scilab
// Copyright (C) 2023 - Dassault Systemes - Bruno JOFRET <bruno.jofret@3ds.com>
//
//  This file is distributed under the same license as the Scilab package.
// =============================================================================

// <-- CLI SHELL MODE -->
// <-- ENGLISH IMPOSED -->

load("SCI/modules/atoms/macros/atoms_internals/lib");
exec("SCI/modules/atoms/tests/unit_tests/atomsTestUtils.sce");

// If previous test did not end properly, restore, else backup config file
atomsRestoreConfig(%T);
atomsSaveConfig();

// Force config
atomsSetConfig("autoloadAddAfterInstall", "False");
atomsSetConfig("Verbose", "False");
atomsSetConfig("offLine", "False");
atomsRepositoryReset();

// Load the 1st scenario : See scene10.test.atoms.scilab.org.txt
// =============================================================================
atomsLoadTestScene("scene10");

atomsRepositoryList();
assert_checktrue(isempty(atomsRepositoryList("user")));
assert_checktrue(isempty(atomsRepositoryList("allusers")));

// Restore original values
// =============================================================================
atomsRestoreConfig(%T);
