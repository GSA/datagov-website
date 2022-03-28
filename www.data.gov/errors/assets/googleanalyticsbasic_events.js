// Enable JavaScript's strict mode. Strict mode catches some common
// programming errors and throws exceptions, prevents some unsafe actions from
// being taken, and disables some confusing and bad JavaScript features.
"use strict";

// Add Google Analytics Event Tracking to outbound links.
ckan.module('googleanalyticsbasic_events', function ($, _) {
    return {
        initialize: function () {
            // current page host
            var baseURI = window.location.host;

            var send_outbound_event = function (href) {
                ga_trackers.forEach(function (tracker) {
                    ga(tracker + '.send', {
                        'hitType': 'event',
                        'eventCategory': 'outbound',
                        'eventAction': 'link',
                        'eventLabel': href
                    });
                });
            };
            var send_resource_download_event = function (org) {
                ga_trackers.forEach(function (tracker) {
                    ga(tracker + '.send', {
                        'hitType': 'event',
                        'eventCategory': 'Resource',
                        'eventAction': 'Download',
                        'eventLabel': org
                    });
                });
            };

            // click event on body
            $("body").on("click", function (e) {

                // abandon if link already aborted or analytics is not available
                if (e.isDefaultPrevented() || typeof ga !== "function") return;

                // abandon if no active link or link within domain
                var link = $(e.target).closest("a");
                if (link.length != 1 || baseURI == link[0].host) return;

                // cancel event and record outbound link
                //e.preventDefault();
                var href = link[0].href;

                send_outbound_event(href);

                if ("undefined" !== $(link).attr('data-format')) {
                    var org = $(link).attr('data-organization');
                    if ("undefined" == org) {
                        org = href;
                    }
                    send_resource_download_event(org);
                }

                //$.when(send_outbound_event(href)).done(loadPage);

                // redirect after one second if recording takes too long
                //setTimeout(loadPage, 1000);
                //
                //// redirect to outbound page
                //function loadPage() {
                //    //document.location = href;
                //    //window.open(href);
                //    $(e.currentTarget).trigger('click');
                //
                //}
            });


            //$('a.resource-url-analytics').on('click', function () {
            //    var resource_url = encodeURIComponent($(this).prop('href'));
            //    if (resource_url) {
            //        ga('send', 'event', 'Resource', 'Download', resource_url);
            //    }
            //});
        }
    }
});