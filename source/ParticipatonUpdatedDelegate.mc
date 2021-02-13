using Toybox.WatchUi;
using Toybox.System;
using Toybox.Lang;

class ParticipatonUpdatedDelegate extends WatchUi.InputDelegate {
	function initialize() {
        InputDelegate.initialize();
    }

	function onTap(clickEvent) {
		System.println("We're in the ParticipatonUpdatedDelegate.onTap function");
		WatchUi.popView(WatchUi.SLIDE_IMMEDIATE);
	}
}