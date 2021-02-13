using Toybox.WatchUi;

class ParticipatonUpdatedDelegate extends WatchUi.InputDelegate {
	// -------------------------------------
	// Initialize
	// -------------------------------------
	function initialize() {
        InputDelegate.initialize();
    }

	// -------------------------------------
	// Event Handlers
	// -------------------------------------
	function onTap(clickEvent) {
		WatchUi.popView(WatchUi.SLIDE_IMMEDIATE);
	}
}