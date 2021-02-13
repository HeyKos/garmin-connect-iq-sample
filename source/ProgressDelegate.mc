using Toybox.WatchUi;

class ProgressDelegate extends WatchUi.BehaviorDelegate {
    // -------------------------------------
    // Initiaize
    // -------------------------------------
    function initialize() {
        BehaviorDelegate.initialize();
    }

    // -------------------------------------
    // Event Handlers
    // -------------------------------------
    function onBack() {
        return true;
    }
}