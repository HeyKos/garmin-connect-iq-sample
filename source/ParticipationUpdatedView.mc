using Toybox.WatchUi;
using Toybox.System;
using Toybox.Lang;

class ParticipationUpdatedView extends WatchUi.View {
	var _message;

    function initialize(message) {
        View.initialize();
        _message = message;
    }

    function onLayout(dc) {
        setLayout(Rez.Layouts.ParticipationUpdatedLayout(dc));
        var view = View.findDrawableById("message");
		view.setText(_message);
    }

    function onShow() {
    }

    function onUpdate(dc) {
        View.onUpdate(dc);
    }

    function onHide() {
    }
}