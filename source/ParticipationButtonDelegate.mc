using Toybox.Application as App;
using Toybox.System;
using Toybox.WatchUi;
using Toybox.Communications;

class ParticipationButtonDelegate extends WatchUi.InputDelegate {
    // TODO: This is eventually changed to pull from a setting.
	const URL = "https://api.openbrewerydb.org/breweries/5494";

	function initialize() {
        InputDelegate.initialize();
    }

    function onReceive(responseCode, data) {
        System.println("We're in the ParticipationButtonDelegate.onReceive function");
        var message = "request sent";
        if (responseCode != 200) {
            message = message + "\ncode: " +  responseCode;
        }

        System.println("message: " + message);
        System.println("data: " + data);

        WatchUi.popView(WatchUi.SLIDE_IMMEDIATE);
        WatchUi.pushView(new ParticipationUpdatedView(message), new ParticipatonUpdatedDelegate(), WatchUi.SLIDE_IMMEDIATE);
	}

    function onTap(clickEvent) {
        System.println("We're in the ParticipationButtonDelegate.onTap function");
        var options = {
           :method => Communications.HTTP_REQUEST_METHOD_GET,
           :headers => {
                "Content-Type" => Communications.REQUEST_CONTENT_TYPE_URL_ENCODED
            },
           :responseType =>  Communications.HTTP_RESPONSE_CONTENT_TYPE_JSON
        };

        Communications.makeWebRequest(URL, null, options, method(:onReceive));

        var progressBar = new WatchUi.ProgressBar(
            "sending...",
            null
        );

        WatchUi.pushView(
            progressBar,
            new ProgressDelegate(),
            WatchUi.SLIDE_DOWN
        );
    }

    function onSwipe(swipeEvent) {
    }
}
