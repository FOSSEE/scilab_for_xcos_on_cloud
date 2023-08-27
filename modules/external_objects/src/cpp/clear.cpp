/*
 * Scilab ( http://www.scilab.org/ ) - This file is part of Scilab
 * Copyright (C) 2018 - ESI Group - Clement DAVID
 *
 * This file is hereby licensed under the terms of the GNU GPL v2.0,
 * pursuant to article 5.3.4 of the CeCILL v.2.1.
 * This file was originally licensed under the terms of the CeCILL v2.1,
 * and continues to be available under such terms.
 * For more information, see the COPYING file which you should have received
 * along with this program.
 *
 */

#include "ScilabGateway.hxx"

namespace org_modules_external_objects
{

int ScilabGateway::clear(char * fname, const int envId, void * pvApiCtx)
{
    SciErr err;
    int * addr = 0;
    int row = 0, col = 0;
    int * id = 0;
    int eId;

    CheckInputArgument(pvApiCtx, 1, 1);

    ScilabAbstractEnvironment & env = ScilabEnvironments::getEnvironment(envId);
    ScilabGatewayOptions & options = env.getGatewayOptions();
    OptionsHelper::setCopyOccurred(false);
    ScilabObjects::initialization(env, pvApiCtx);
    options.setIsNew(false);

    err = getVarAddressFromPosition(pvApiCtx, 1, &addr);
    if (err.iErr)
    {
        throw ScilabAbstractEnvironmentException(__LINE__, __FILE__, gettext("Invalid variable: cannot retrieve the data"));
    }

    if (!ScilabObjects::isExternalObj(addr, pvApiCtx) && !ScilabObjects::isExternalClass(addr, pvApiCtx))
    {
        throw ScilabAbstractEnvironmentException(__LINE__, __FILE__, gettext("Wrong type for input argument #%d: External Object expected."), 1);
    }

    eId = ScilabObjects::getEnvironmentId(addr, pvApiCtx);
    if (eId != envId)
    {
        throw ScilabAbstractEnvironmentException(__LINE__, __FILE__, gettext("Incompatible External Object"));
    }

    err = getMatrixOfInteger32InList(pvApiCtx, addr, EXTERNAL_OBJ_ID_POSITION, &row, &col, &id);
    if (err.iErr)
    {
        throw ScilabAbstractEnvironmentException(__LINE__, __FILE__, gettext("Invalid variable: cannot retrieve the data"));
    }

    env.removeobject(*id);

    PutLhsVar();

    return 0;
}
}
