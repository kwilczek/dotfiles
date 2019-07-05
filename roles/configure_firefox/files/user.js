// https://github.com/ghacksuserjs/ghacks-user.js/blob/master/user.js
//// Override User Agent
user_pref("general.useragent.override", "...");
user_pref("general.appname.override", "...");
user_pref("general.platform.override", "...");
user_pref("general.oscpu.override", "...");
user_pref("general.appversion.override", "...");

// Do not reveal the local IP address.
user_pref("media.peerconnection.enabled", false);
user_pref("media.peerconnection.ice.no_host", true);

//
user_pref("media.getusermedia.screensharing.enabled", false);
user_pref("media.getusermedia.audiocapture.enabled", false);
user_pref("media.navigator.video.enabled", false);

//
user_pref("browser.shell.checkDefaultBrowser", false);
user_pref("browser.startup.homepage", "about:blank");
user_pref("browser.newtab.preload", false);
user_pref("browser.newtabpage.activity-stream.feeds.telemetry", false);
user_pref("browser.newtabpage.activity-stream.telemetry", false);
user_pref("browser.newtabpage.activity-stream.telemetry.ping.endpoint", "");
user_pref("browser.aboutHomeSnippets.updateUrl", "");
user_pref("browser.newtabpage.activity-stream.asrouter.providers.snippets", "");
user_pref("browser.newtabpage.activity-stream.disableSnippets", true);
user_pref("browser.newtabpage.activity-stream.feeds.snippets", false);
user_pref("intl.locale.requested", "en-US");
user_pref("browser.search.geoSpecificDefaults", false);
user_pref("browser.search.geoSpecificDefaults.url", "");
user_pref("geo.wifi.uri", "https://location.services.mozilla.com/v1/geolocate?key=%MOZILLA_API_KEY%");
user_pref("datareporting.healthreport.uploadEnabled", false);
user_pref("datareporting.policy.dataSubmissionEnabled", false);
user_pref("toolkit.telemetry.coverage.opt-out", true); // [HIDDEN PREF]
user_pref("toolkit.coverage.opt-out", true); // [FF64+] [HIDDEN PREF]
user_pref("toolkit.coverage.endpoint.base", "");
user_pref("network.allow-experiments", false);
user_pref("app.normandy.enabled", false);
user_pref("app.normandy.api_url", "");
user_pref("app.shield.optoutstudies.enabled", false);


// Set empty page on startup and disable syncing.
user_pref("browser.startup.page", 0);
user_pref("services.sync.prefs.sync.browser.startup.homepage", false);
user_pref("services.sync.prefs.sync.browser.startup.page", false);

// Ask where to download the file.
user_pref("browser.download.useDownloadDir", false);

// Disable warn on closing multiple tabs.
user_pref("browser.tabs.warnOnClose", false);

// Disable disk cache.
user_pref("browser.cache.disk.enable", false);
user_pref("browser.cache.disk.capacity", 0);

// Enable memory cache.
// 1000KiB = 1024KB
user_pref("browser.cache.memory.enable", true);
user_pref("browser.cache.memory.capacity", 512000);

// Turn off geolocation.
user_pref("geo.enabled", false);

// Try to turn off tracking.
user_pref("privacy.donottrackheader.enabled", true);

// Disable prefetching (downloading next most-probable clicks)
user_pref("network.prefetch-next", false);

// Do not close the Firefox with the last tab.
user_pref("browser.tabs.closeWindowWithLastTab", false);

// Do not trim the protocol/url.
user_pref("browser.urlbar.trimURLs", false);

// Disable password save.
user_pref("signon.rememberSignons", false);

// Disable automatic extensions update.
user_pref("extensions.update.enabled", false);

// Private browsing.
user_pref("browser.privatebrowsing.autostart", true);

// Disable Pocket
user_pref("extensions.pocket.enabled", false);

// Caution.
// Experimental OMTC
// user_pref("layers.acceleration.force-enabled", true);

// Crate page from the start.
// user_pref("nglayout.initialpaint.delay", 0);

// Set new tabs to be empty instead of the list of commonly visited sites.
user_pref("browser.newtabpage.enabled", false);

// Disable Web notifications
user_pref("dom.webnotifications.enabled", false);

// Hidden?
user_pref("dom.mozTCPSocket.enabled", false);

// Disable browser information
user_pref("dom.netinfo.enabled", false);
user_pref("dom.network.enabled", false);
user_pref("beacon.enabled", false);

// Others
user_pref("device.sensors.enabled", false);
user_pref("browser.send_pings", false);
user_pref("dom.enable_resource_timing", false);
user_pref("dom.maxHardwareConcurrency", 2);

// Disable WebAssembly
user_pref("javascript.options.wasm", false);

// Geo stuff
user_pref("browser.search.countryCode", "IM");

user_pref("intl.locale.matchOS", false);
user_pref("network.manage-offline-status", false);
user_pref("javascript.options.asmjs", false);
user_pref("media.video_stats.enabled", false);

user_pref("general.buildID.override", "20100101");
user_pref("browser.startup.homepage_override.buildID", "20100101");

// user_pref("browser.display.use_document_fonts", 0);
user_pref("plugin.state.flash", 0);

user_pref("dom.ipc.plugins.reportCrashURL", false);

user_pref("browser.newtabpage.activity-stream.feeds.section.topstories", false);
user_pref("browser.search.region", "IM");
user_pref("browser.search.geoip.url", "");

