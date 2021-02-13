using Toybox.Application;
using Toybox.WatchUi;

class ParticipationApp extends Application.AppBase {
    // -------------------------------------
    // Initialize
    // -------------------------------------
    function initialize() {
        AppBase.initialize();
    }

    // -------------------------------------
    // AppBase Implementation
    // -------------------------------------
    function getInitialView() {
        var userId = Application.Properties.getValue("trainBeersUserId");
        return [ new ParticipationView(), new ParticipationButtonDelegate(userId) ];
    }

    // -------------------------------------
    // Event Handlers
    // -------------------------------------
    function onSettingsChanged() {
        WatchUi.requestUpdate();
    }
}