// This file is released under the 3-clause BSD license. See COPYING-BSD.
// Generated by builder.sce: Please, do not edit this file

function startModule(TOOLBOX_NAME, TOOLBOX_TITLE, VERBOSELevel)
    // VERBOSELevel: to be implemented

    mprintf("Start " + TOOLBOX_TITLE + "\n")

    if isdef(TOOLBOX_NAME + "lib") then
        warning(TOOLBOX_NAME + " library is already loaded")
        return
    end

    root_tlbx = get_absolute_file_path("loader.sce")
    libNames = []

    //Load  functions library
    // ================================================================
    if isdir(root_tlbx + "/macros")
        mprintf("\tLoad macros\n")
        pathmacros = pathconvert( root_tlbx ) + "macros" + filesep()
        execstr(TOOLBOX_NAME + "lib = lib(pathmacros)")
        libNames = TOOLBOX_NAME + "lib" // to be returned to the calling level
    end

    // load gateways and Java libraries
    // ================================================================
    if isdir(root_tlbx + "/sci_gateway")
        oldVerbose = ilib_verbose()
        ilib_verbose(0);
        mprintf("\tLoad gateways\n")
        exec(pathconvert(root_tlbx+"/sci_gateway/loader_gateway.sce", %f), -1)
    end
    if isfile(root_tlbx + "/src/java/loader.sce")
        mprintf("\tLoad Java libraries\n")
        exec(pathconvert(root_tlbx+"/src/java/loader.sce", %f), -1)
        ilib_verbose(oldVerbose)
    end

    // load localization
    if isdir(root_tlbx + "/locales")
        addlocalizationdomain(TOOLBOX_NAME, root_tlbx + "/locales")
    end

    // Load and add help chapter
    // ================================================================
    if isdir(root_tlbx + "/jar") && or(getscilabmode() == ["NW";"STD"])
        mprintf("\tLoad help\n");
        path_addchapter = pathconvert(root_tlbx+"/jar")
        if isdir(path_addchapter) then
            add_help_chapter(TOOLBOX_NAME, path_addchapter, %F)
        end
    end

    // Load demos
    // ================================================================
    // Currently, strictly loads demos if there is a .dem.gateway.sce file
    // TODO: In case of no gateway, this could be done in a default way by
    // listing the .sce files and adding the demos under TOOLBOX_TILE > name
    // of the file without .sce
    // SG: add_demo() should be upgraded to do this (build a temporary
    //     demo gateway with a proper title) when its argin#2 is a path pointing
    //     to an existing directory instead of a .sce.
    if isfile(root_tlbx + "/demos/" + TOOLBOX_NAME + ".dem.gateway.sce")
        if or(getscilabmode() == ["NW";"STD"]) then
            mprintf("\tLoad demos\n");
            pathdemos = pathconvert(root_tlbx+"/demos/" + TOOLBOX_NAME + ".dem.gateway.sce", %F, %T)
            add_demo(TOOLBOX_TITLE, pathdemos);
        end
    end

    // Load Preferences GUI
    // ================================================================
    // TODO: same as for the demos
    if isfile(root_tlbx + "/etc/" + TOOLBOX_NAME + "_preferences.xml")
        if getscilabmode() == "STD" then
            addModulePreferences(TOOLBOX_TITLE, root_tlbx, root_tlbx + "/etc/" + TOOLBOX_NAME + "_preferences.xml");
        end
    end

    //TODO: manage Xcos toolboxes
    // ================================================================

    // We return the name(s) of loaded libraries of macros (if any)
    // ------------------------------------------------------------
    if libNames~=[] then
        tmp = strcat(libNames,",")
        execstr("["+tmp+"] = return("+tmp+")")
    end
endfunction
// VERBOSELevel: environment variable
// library(e)s handle(s) are returned by startModule with return()
if ~isdef("VERBOSELevel") then
    VERBOSELevel = [];
end
startModule("#TBX_NAME#", "#TBX_TITLE#", VERBOSELevel);
clear startModule
