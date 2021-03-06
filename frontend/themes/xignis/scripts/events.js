// Javascripts fuer cms Frontend (themenabhaengig)
// Author: Roland Hempen
// Creation Date: 29.12.2009
//

/*-------------------------------------------------------------------------------
 Header anzeigen oder verbergen 
 Der Zustand wird in einem Cookie gespeichert, sodass er auch bei einem Server
 Roundtrip erhalten bleibt
 -------------------------------------------------------------------------------*/
function showHideHeader() {
    var lClassName = $("header").className;
    if (lClassName == 'show') {
        hideHeader();
    } else {
        showHeader();
    }
}

// Header anzeigen
function showHeader() {
    $("header").className = "show";
    $("header_balken_unten").removeClassName("hide");
    $("navibereich").style.top = '-15px';
    if ($("subnavibereich_horizontal")) {
        $("subnavibereich_horizontal").style.top = "-41px";
    }
    $("aufzu").className = 'collapse';
    $("aufzu").title = 'collapse Header';
}

// Header verbergen  
function hideHeader() {
    $("header_balken_unten").addClassName("hide");
    $("header").className = "hide";
    $("navibereich").style.top = '0px';
    if ($("subnavibereich_horizontal")) {
        $("subnavibereich_horizontal").style.top = "-25px";
    }
    $("aufzu").className = 'expand';
    $("aufzu").title = 'expand Header';
}

// Bei onLoad muss der Header gemäss dem Cookie eingestellt werden!
// Ausser der Wert von $("startseite") sie "j"
function showHideHeaderOnLoad() {
    var lStartseite = $("startseite").value;
    var lClassName = $("classHeader").value;
    if (lClassName == 'hide' || lStartseite == 'j') {
        hideHeader();
    } else {
        showHeader();
    }
    if (lStartseite == 'j') {
        adjust_startseite();
    }
}

function adjust_startseite() {
//    $("main").setStyle( {'width':'100%','textAligne':'center'} );
    $("servicebereich").hide();
    $("klappe").hide();
    $$("h1.h1mod").each(function (theH1) {
        theH1.hide();
    });
    $("main").setStyle({'width': '1280px'});
    $$("div.spalte_900").each(function (theDiv) {
        theDiv.setStyle({'width': '1280px', 'margin': '0 auto'})
    });
    $$("img.intro").each(function (theImg) {
        theImg.setStyle({'width': '100%', 'height': '100%'})
    });
}

// CSS-Klasse per Ajax in der PHP-Session speichern  
function saveClassHeader(iClassHeader) {
    var lWebroot = $("webroot").value;
    lWebroot = (lWebroot == '/') ? '' : lWebroot;
    var lUrl = lWebroot + "/frontend/_models/frontend_setdata.php?action=saveHeaderClass&class=" + iClassHeader
    var myAjax = new Ajax.Request(lUrl,
            {
                method: 'get',
                //onSuccess:zeige_resultat,
                onFailure: zeige_fehler
            }
    );
}

var zeige_resultat = function (r)
{
    $("meldung").innerHTML = r.responseText;
}

var zeige_fehler = function (r)
{
    $("meldung").innerHTML = "Fehler: " + r.status + " / " + r.statusText;
}

/*-------------------------------------------------------------------------------
 Kompatibilitaet fuer IE6 bei Dropdown-Menus 
 -------------------------------------------------------------------------------*/
sfHover = function () {
    var sfEls = document.getElementById("navi").getElementsByTagName("LI");
    for (var i = 0; i < sfEls.length; i++) {
        sfEls[i].onmouseover = function () {
            this.className += " sfhover";
        }
        sfEls[i].onmouseout = function () {
            this.className = this.className.replace(new RegExp(" sfhover\\b"), "");
        }
    }
}

/*-------------------------------------------------------------------------------
 Events bei onLoad registrieren
 -------------------------------------------------------------------------------*/
Event.observe(window, 'load', sfHover, false);
// Zustand des Header wieder herstellen
Event.observe(window, 'load', showHideHeaderOnLoad, false);
// Zustand beim Klick auf $("klappe") per Ajax in der PHP-Session speichern
Event.observe(window, "load", function () {
    Event.observe($("klappe"), 'click', function () {
        saveClassHeader($("header").className);
    });
});

