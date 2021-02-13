using Toybox.WatchUi;
using Toybox.System;
using Toybox.Lang;

class ParticipatonUpdatedDelegate extends WatchUi.InputDelegate {
	function initialize() {
        InputDelegate.initialize();
    }

	function onTap(clickEvent) {
		WatchUi.popView(WatchUi.SLIDE_IMMEDIATE);
	}
}