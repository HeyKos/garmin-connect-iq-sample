using Toybox.WatchUi;

class ParticipationUpdatedView extends WatchUi.View {
    // -------------------------------------
    // Member Variables
    // -------------------------------------
	var _message;

    // -------------------------------------
    // Initialize
    // -------------------------------------
    function initialize(message) {
        View.initialize();
        _message = message;
    }

    // -------------------------------------
    // Event Handlers
    // -------------------------------------
    function onLayout(dc) {
        setLayout(Rez.Layouts.ParticipationUpdatedLayout(dc));
        var view = View.findDrawableById("message");
		view.setText(_message);
    }
}