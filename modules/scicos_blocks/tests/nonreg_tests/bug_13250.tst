// =============================================================================
// Scilab ( https://www.scilab.org/ ) - This file is part of Scilab
// Copyright (C) 2014 - Scilab Enterprises - Paul Bignier
//
//  This file is distributed under the same license as the Scilab package.
// =============================================================================
//
// <-- XCOS TEST -->
//
// <-- Non-regression test for bug 13250 -->
//
// <-- GitLab URL -->
// https://gitlab.com/scilab/scilab/-/issues/13250
//
// <-- Short Description -->
// When D was a scalar, it was set to ones(C*B),
// whereas it should be set to D*ones(C*B) to keep its information.

assert_checktrue(importXcosDiagram("SCI/modules/scicos_blocks/tests/nonreg_tests/VEress9-2D4.zcos"));

OUT#E9_values_ref = [
- 249.01325109569035   -5.33419528902523599  -228.605022905775229   2.54665096982765382
- 249.061344167886887  -4.2825315172584588   -228.556516469227461   7.14604660406141523
- 249.098837562545356  -3.21458356306431670  -228.462190865012815   11.7081585065574991
- 249.125563165505554  -2.12877753185083574  -228.322438851962659   16.2308742175234855
- 249.141336276425506  -1.02357645612720227  -228.137669713820657   20.7121863704137716
- 249.145956155334829   0.10251802139515390  -227.908309156465691   25.1501942715319728
- 249.139206637884655   1.25096442143966935  -227.634800219001761   29.5431050134709743
- 249.120852564924178   2.42318840358942689  -227.317587635627405   33.8892175485539084
- 249.090649837864021   3.62055972703327500  -226.957150086727353   38.1869631526829991
- 249.04834042095797    4.84440340813275494  -226.55397906398548    42.434881434494649
- 248.993653118342394   6.09599874957819754  -226.108580266451213   46.6316204144968225 ];

// Run simulation
scicos_simulate(scs_m);

assert_checkalmostequal(OUT#E9.values(990:$, :), OUT#E9_values_ref);
