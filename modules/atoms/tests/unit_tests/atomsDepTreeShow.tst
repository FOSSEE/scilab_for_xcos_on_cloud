// =============================================================================
// Scilab ( https://www.scilab.org/ ) - This file is part of Scilab
// Copyright (C) 2009 - DIGITEO - Pierre MARECHAL <pierre.marechal@scilab.org>
//
//  This file is distributed under the same license as the Scilab package.
// =============================================================================

// <-- ENGLISH IMPOSED -->
// <-- CLI SHELL MODE -->

load("SCI/modules/atoms/macros/atoms_internals/lib");
exec("SCI/modules/atoms/tests/unit_tests/atomsTestUtils.sce");

// If previous test did not end properly, restore, else backup config file
atomsRestoreConfig(%T);
atomsSaveConfig();

// Do not use the autoload system
atomsSetConfig("autoloadAddAfterInstall","False");
atomsSetConfig("Verbose" ,"False");

// Load the 1st scenario : See scene10.test.atoms.scilab.org.txt
atomsLoadTestScene("scene10");

// Install toolbox 5
atomsInstall("toolbox_5V6");

// Show the dependency tree
atomsDepTreeShow("toolbox_5V6");

// Load the 2nd scenario : See scene11.test.atoms.scilab.org.txt
atomsLoadTestScene("scene11");

// Update modules
atomsUpdate();

// Show the dependency tree
atomsDepTreeShow("toolbox_5V6");

// Remove toolbox 5
atomsRemove("toolbox_5V6");

// Restore original values
// =============================================================================
atomsRestoreConfig(%T);

atomsRepositorySetOfl(mgetl(SCI+"/modules/atoms/tests/unit_tests/repositories.orig"));
