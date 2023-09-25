/*
* Scilab ( https://www.scilab.org/ ) - This file is part of Scilab
* Copyright (C) 2015 - Scilab Enterprises
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

package org.scilab.modules.ui_data.newsfeed;

/**
 * News feed error event
 */
public class NewsFeedErrorEvent extends NewsFeedEvent {
    private String errorMessage;

    public NewsFeedErrorEvent(Object source, String errorMessage) {
        super(source, NewsFeedEvent.NEWSFEED_ERROR);
        this.errorMessage = errorMessage;
    }

    public String getErrorMessage() {
        return errorMessage;
    }
}
