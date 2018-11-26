import QtQuick 2.9

import ArcGIS.AppFramework 1.0

Item {
    id: appManager

    property real maximumScreenWidth: app.width > 1000 * scaleFactor ? 800 * scaleFactor : 568 * scaleFactor

    property bool isIphoneX: false
    property bool isUsingDefaultFont: false

    function initialize() {
        // check device
        isIphoneX = AppFramework.systemInformation.model.indexOf("iPhone X") > -1;

        // load font
        if (!isUsingDefaultFont)
            fonts.loadFonts();
    }
}
