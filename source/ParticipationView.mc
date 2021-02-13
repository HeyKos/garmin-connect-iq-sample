using Toybox.WatchUi;

class ParticipationView extends WatchUi.View {
    // -------------------------------------
    // Initialize
    // -------------------------------------
    function initialize() {
        View.initialize();
    }

    // -------------------------------------
    // Event Handlers
    // -------------------------------------
    function onLayout(dc) {
        setLayout(Rez.Layouts.ParticipationButtonLayout(dc));
    }
}

