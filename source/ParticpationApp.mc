using Toybox.Application;
using Toybox.WatchUi;

class ParticipationApp extends Application.AppBase {
    function initialize() {
        AppBase.initialize();
    }

    function onStart(state) {
    }

    function onStop(state) {
    }

    function getInitialView() {
        var userId = Application.Properties.getValue("trainBeersUserId");
        return [ new ParticipationView(), new ParticipationButtonDelegate(userId) ];
    }

    function onSettingsChanged() {
        WatchUi.requestUpdate();
    }
}