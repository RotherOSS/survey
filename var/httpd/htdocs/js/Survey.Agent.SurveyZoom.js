// --
// OTOBO is a web-based ticketing system for service organisations.
// --
// Copyright (C) 2001-2020 OTRS AG, https://otrs.com/
// Copyright (C) 2019-2024 Rother OSS GmbH, https://otobo.io/
// --
// This program is free software: you can redistribute it and/or modify it under
// the terms of the GNU General Public License as published by the Free Software
// Foundation, either version 3 of the License, or (at your option) any later version.
// This program is distributed in the hope that it will be useful, but WITHOUT
// ANY WARRANTY; without even the implied warranty of MERCHANTABILITY or FITNESS
// FOR A PARTICULAR PURPOSE. See the GNU General Public License for more details.
// You should have received a copy of the GNU General Public License
// along with this program. If not, see <https://www.gnu.org/licenses/>.
// --

"use strict";

var Survey = Survey || {};
Survey.Agent = Survey.Agent || {};

/**
 * @namespace
 * @exports TargetNS as Survey.Agent.SurveyZoom
 * @description
 *      This namespace contains the special module functions for SurveyZoom.
 */
Survey.Agent.SurveyZoom = (function (TargetNS) {

    TargetNS.Init = function () {
        $('ul.Actions a.AsPopup').on('click', function () {
            Core.UI.Popup.OpenPopup ($(this).attr('href'), 'Action');
            return false;
        });

        $('#NewStatus').on('change', function () {
            $(this).closest('form').submit();
        });
    }

    /**
     * @name IframeAutoHeight
     * @memberof Survey.Agent.SurveyZoom
     * @function
     * @param {jQueryObject} $Iframe - The iframe which should be auto-heighted
     * @description
     *      Set iframe height automatically based on real content height and default config setting.
     */
    TargetNS.IframeAutoHeight = function ($Iframe) {
        var NewHeight;

        if (isJQueryObject($Iframe)) {
            NewHeight = $Iframe.contents().height();
            if (!NewHeight || isNaN(NewHeight)) {
                NewHeight = Core.Config.Get('Survey.HTMLRichTextHeightDefault');
            }
            else {
                if (NewHeight > Core.Config.Get('Survey.HTMLRichTextHeightMax')) {
                    NewHeight = Core.Config.Get('Survey.HTMLRichTextHeightMax');
                }
            }
            $Iframe.height(NewHeight + 'px');
        }
    };

    Core.Init.RegisterNamespace(TargetNS, 'APP_MODULE');

    return TargetNS;
}(Survey.Agent.SurveyZoom || {}));
