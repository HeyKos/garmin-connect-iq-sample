using Toybox.WatchUi;
using Toybox.System;
using Toybox.Lang;

class ParticipationView extends WatchUi.View {

    function initialize() {
        View.initialize();
    }

    function onLayout(dc) {
        setLayout(Rez.Layouts.ParticipationButtonLayout(dc));
    }

    //! Restore the state of the app and prepare the view to be shown
    function onHide() {
    }

    //! Restore the state of the app and prepare the view to be shown
    function onShow() {
    }

    function onUpdate(dc) {
        View.onUpdate(dc);
    }
}

