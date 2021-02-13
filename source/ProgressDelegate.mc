using Toybox.WatchUi;
using Toybox.System;
using Toybox.Lang;

class ProgressDelegate extends WatchUi.BehaviorDelegate {
    function initialize() {
        BehaviorDelegate.initialize();
    }

    function onBack() {
        return true;
    }
}