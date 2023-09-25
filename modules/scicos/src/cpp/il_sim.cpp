/*
 *  Scilab ( https://www.scilab.org/ ) - This file is part of Scilab
 *  Copyright (C) 2014 - Scilab Enterprises - Paul Bignier
 *
 * Copyright (C) 2012 - 2016 - Scilab Enterprises
 *
 * This file is hereby licensed under the terms of the GNU GPL v2.0,
 * pursuant to article 5.3.4 of the CeCILL v.2.1.
 * This file was originally licensed under the terms of the CeCILL v2.1,
 * and continues to be available under such terms.
 * For more information, see the COPYING file which you should have received
 * along with this program.
 *
 */

/*--------------------------------------------------------------------------*/
#include "il_sim.hxx"

#include "types.hxx"
#include "internal.hxx"

/*--------------------------------------------------------------------------*/
static types::InternalType* il_sim_save = nullptr;
/*--------------------------------------------------------------------------*/
types::InternalType* get_il_sim(void)
{
    return il_sim_save;
}
/*--------------------------------------------------------------------------*/
types::InternalType* set_il_sim(types::InternalType* _sim)
{
    il_sim_save = _sim;
    return il_sim_save;
}
/*--------------------------------------------------------------------------*/
