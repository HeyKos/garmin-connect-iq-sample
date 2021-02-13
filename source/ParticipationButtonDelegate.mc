using Toybox.Application as App;
using Toybox.System;
using Toybox.WatchUi;
using Toybox.Communications;

class ParticipationButtonDelegate extends WatchUi.InputDelegate {
    // -------------------------------------
    // Member Variables
    //--------------------------------------
    var _url;

    // -------------------------------------
    // Initialize
    //--------------------------------------
	function initialize(userId) {
        InputDelegate.initialize();
        _url = getUrl(userId);
    }

    // -------------------------------------
    // Event Handlers
    //--------------------------------------
    function onReceive(responseCode, data) {
        var message = "request sent";
        if (responseCode != 200) {
            message = message + "\ncode: " +  responseCode;
        }

        WatchUi.popView(WatchUi.SLIDE_IMMEDIATE);
        WatchUi.pushView(new ParticipationUpdatedView(message), new ParticipatonUpdatedDelegate(), WatchUi.SLIDE_IMMEDIATE);
	}

    function onTap(clickEvent) {
        var options = {
           :method => Communications.HTTP_REQUEST_METHOD_GET,
           :headers => {
                "Content-Type" => Communications.REQUEST_CONTENT_TYPE_URL_ENCODED
            },
           :responseType => Communications.HTTP_RESPONSE_CONTENT_TYPE_JSON
        };

        System.println("url:" + _url);
        Communications.makeWebRequest(_url, null, options, method(:onReceive));

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

    // -------------------------------------
    // Private Functions
    //--------------------------------------
    function getUrl(userId) {
        var baseUrl = App.loadResource(Rez.Strings.APIUrl);
        var lastIndex = baseUrl.length() - 1;
        var lastCharacter = baseUrl.substring(lastIndex, lastIndex);
        if (lastCharacter != "/") {
            baseUrl = baseUrl + "/";
        }

        return baseUrl + userId;
    }
}
