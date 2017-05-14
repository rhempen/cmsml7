#----------------------------------------------
# Backup der Datenbank cms_xignis_ml
# Erstellt am 26.03.2017 22:51
#----------------------------------------------



# ----------------------------------------------------------
#
# Struktur von Tabelle 'cms_config'
#
DROP TABLE IF EXISTS cms_config;
CREATE TABLE cms_config (
    id tinyint(3) unsigned NOT NULL auto_increment,
    category char(20) NOT NULL,
    param char(40) NOT NULL,
    value char(125) NOT NULL,
    alternative char(125),
    longvalue longtext,
   PRIMARY KEY (id),
   KEY custcategory (category)
);

#
# Daten von Tabelle 'cms_config'
#
INSERT INTO cms_config VALUES ("1","general","THEME","xignis",NULL,NULL);
INSERT INTO cms_config VALUES ("2","general","COPYRIGHT","Xignis Sagl 2017",NULL,NULL);
INSERT INTO cms_config VALUES ("3","general","MAX_THUMBS","4",NULL,NULL);
INSERT INTO cms_config VALUES ("4","general","MAX_LIST_ITEMS","4",NULL,NULL);
INSERT INTO cms_config VALUES ("5","general","LANGUAGE","DE",NULL,NULL);
INSERT INTO cms_config VALUES ("7","general","EMAIL_RECEIVER","info@xignis.ch",NULL,NULL);
INSERT INTO cms_config VALUES ("8","general","GOOGLE_ANALYTICS","UA-38189179-1",NULL,NULL);
INSERT INTO cms_config VALUES ("9","general","TEMPLATE_DIR","frontend/themes/xignis/tpl",NULL,NULL);
INSERT INTO cms_config VALUES ("10","menu","HMENU_RICHTUNG","left","right",NULL);
INSERT INTO cms_config VALUES ("11","menu","HMENU_SUBMENU","submenu","dropdown",NULL);
INSERT INTO cms_config VALUES ("12","menu","SUBMENU_DIR","horizontal","vertikal",NULL);
INSERT INTO cms_config VALUES ("13","menu","SUBNAV_SOFORT","ja","nein",NULL);
INSERT INTO cms_config VALUES ("14","menu","SMURL","ja","nein",NULL);
INSERT INTO cms_config VALUES ("15","menu","SMURL_REFRESH","ausf&uuml;hren","",NULL);
INSERT INTO cms_config VALUES ("20","pictures","THUMB_PAGE_MAX_WIDTH","100",NULL,NULL);
INSERT INTO cms_config VALUES ("21","pictures","THUMB_PAGE_MAX_HEIGHT","100",NULL,NULL);
INSERT INTO cms_config VALUES ("22","pictures","THUMB_NAVI_MAX_WIDTH","400",NULL,NULL);
INSERT INTO cms_config VALUES ("23","pictures","THUMB_NAVI_MAX_HEIGHT","300",NULL,NULL);
INSERT INTO cms_config VALUES ("24","pictures","IMAGE_MAX_WIDTH","640",NULL,NULL);
INSERT INTO cms_config VALUES ("25","pictures","IMAGE_MAX_HEIGHT","640",NULL,NULL);
INSERT INTO cms_config VALUES ("26","pictures","DISK_DB_ADJUSTMENT","ausf&uuml;hren",NULL,NULL);
INSERT INTO cms_config VALUES ("27","pictures","MEDIA_ROOT_ADJUSTMENT","ausf&uuml;hren",NULL,NULL);
INSERT INTO cms_config VALUES ("31","meta-tags","AUTHOR","Roland Hempen",NULL,"");
INSERT INTO cms_config VALUES ("32","meta-tags","KEYWORDS","",NULL,"Twentyone, Xignis, e-njoy, elektronische 
Zigarette, e-Zigarette, e-smoking, Dampf, dampfen,
nikotinfrei, tabakfrei, Liquid, Propylenglykol, Glycerol, Placebo, 
Atomizer,
cartomizer, cigarette électronique, e-cigarette, vapeur, vapoter, sans nicotine, sans
tabac, 
glycérol, propylène glycol, placebo, atomiseur, cartomiseur");
INSERT INTO cms_config VALUES ("33","meta-tags","DESCRIPTION","",NULL,"Twentyone, Xignis, elektronische Zigarette für moderne Raucher, ohne die Gesundheit zu gefährden");
INSERT INTO cms_config VALUES ("34","meta-tags","PAGE_TOPIC","",NULL,"Twentyone, Xignis, elektronische Zigarette für moderne Raucher, ohne die Gesundheit zu gefährden");
INSERT INTO cms_config VALUES ("35","meta-tags","PUBLISHER","",NULL,"Xignis SA");
INSERT INTO cms_config VALUES ("36","meta-tags","GOOGLE_VERIFY","","","wwlywW-ozp4FvPc0xLpx6BMoDUueZm97FtyzHUQoUoo");



# ----------------------------------------------------------
#
# Struktur von Tabelle 'cms_fragmente'
#
DROP TABLE IF EXISTS cms_fragmente;
CREATE TABLE cms_fragmente (
    frag_id tinyint(3) unsigned NOT NULL,
    name char(25),
    sort_id tinyint(3) unsigned NOT NULL,
    content longtext,
   PRIMARY KEY (frag_id),
   UNIQUE name (name, frag_id)
);

#
# Daten von Tabelle 'cms_fragmente'
#
INSERT INTO cms_fragmente VALUES ("1","teaser1","1","<p><iframe src=\"http://www.youtube.com/embed/lb_7l-gK6vE\" frameborder=\"0\" width=\"400\" height=\"300\"></iframe></p>");
INSERT INTO cms_fragmente VALUES ("3","teaser3","2","<h2>Teaser 3</h2>
<p>Das ist der Teaser Nummer 3</p>");
INSERT INTO cms_fragmente VALUES ("4","teaser4","3","<h2>Angebot</h2>
<table style=\"border: 1px solid #dedede; width: 100%;\" border=\"0\" cellspacing=\"5\" cellpadding=\"5\">
<tbody>
<tr style=\"background-color: #d0d0d0;\">
<td width=\"30%\">Domain</td>
<td width=\"60%\">1 Domain plus 3 Subdomains</td>
</tr>
<tr style=\"background-color: #dedede;\">
<td>Speicherplatz</td>
<td>max. 512 MB</td>
</tr>
<tr style=\"background-color: #d0d0d0;\">
<td>Email</td>
<td>5 Email-Adressen</td>
</tr>
<tr style=\"background-color: #dedede;\">
<td>Preis</td>
<td>6 CHF / Monat</td>
</tr>
</tbody>
</table>
<p>&nbsp;</p>");
INSERT INTO cms_fragmente VALUES ("5","footer","4","<div id=\"impressum\">
<ul>
<li class=\"title\">Impressum</li>
<li>Roland Hempen</li>
<li>hempenweb.ch</li>
<li>8055 Zürich</li>
</ul>
</div>
<div id=\"servlinks\">
<ul>
<li class=\"title\">Servicelinks</li>
<li><a href=\"/media_hempenweb/home\">Home</a></li>
<li><a href=\"/media_hempenweb/kontakt\">Kontakt</a></li>
<li><a href=\"/media_hempenweb/sitemap\">Sitemap</a></li>
</ul>
</div>
<div id=\"reflinks\">
<ul>
<li class=\"title\">Portfolio</li>
<li><a onmouseover=\"showRefPic(1);\" onmouseout=\"$(\'refpics\').hide();\" href=\"http://www.feednsmile.ch\" target=\"_blank\">feednsmile.ch</a></li>
<li><a onmouseover=\"showRefPic(2);\" onmouseout=\"$(\'refpics\').hide();\" href=\"http://www.physio-allschwil.ch\" target=\"_blank\">phyio-allschwil.ch</a></li>
<li><a onmouseover=\"showRefPic(3);\" onmouseout=\"$(\'refpics\').hide();\" href=\"http://www.birchler-architektur.ch\" target=\"_blank\">birchler-architektur.ch</a></li>
<li><a onmouseover=\"showRefPic(4);\" onmouseout=\"$(\'refpics\').hide();\" href=\"http://www.gigijacquier.ch\" target=\"_blank\">gigijacquier.ch</a></li>
<li><a onmouseover=\"showRefPic(5);\" onmouseout=\"$(\'refpics\').hide();\" href=\"http://www.art4art.ch\" target=\"_blank\">art4art.ch</a></li>
<li><a onmouseover=\"showRefPic(6);\" onmouseout=\"$(\'refpics\').hide();\" href=\"http://www.orasch.ch\" target=\"_blank\">orasch.ch</a></li>
<li><a onmouseover=\"showRefPic(7);\" onmouseout=\"$(\'refpics\').hide();\" href=\"http://www.physio-steiner.ch\" target=\"_blank\">phyio-steiner.ch</a></li>
<li><a onmouseover=\"showRefPic(8);\" onmouseout=\"$(\'refpics\').hide();\" href=\"http://www.raku.ch\" target=\"_blank\">raku.ch</a></li>
</ul>
</div>
<div id=\"refpics\" style=\"display: none;\"><img id=\"refpic\" src=\"/beta/cms/media_hempenweb/footer/th_feednsmile.png\" alt=\"\" width=\"180\" height=\"120\" /> </div>");



# ----------------------------------------------------------
#
# Struktur von Tabelle 'cms_galerien'
#
DROP TABLE IF EXISTS cms_galerien;
CREATE TABLE cms_galerien (
    id smallint(6) unsigned NOT NULL auto_increment,
    ref_id smallint(6) unsigned NOT NULL,
    sortkey tinyint(3) unsigned NOT NULL,
    type char(1),
    bildpfad varchar(125) NOT NULL,
    kommentar_de tinytext,
    kommentar_en tinytext,
    kommentar_fr tinytext,
    kommentar_it tinytext,
   PRIMARY KEY (id),
   KEY refid (ref_id)
);

#
# Daten von Tabelle 'cms_galerien'
#
INSERT INTO cms_galerien VALUES ("4","2","1","P","../../media_xignis/navi_40002/_images/att00038.png","",NULL,NULL,NULL);
INSERT INTO cms_galerien VALUES ("18","2","2","P","../../media_xignis/navi_40002/_images/nullprozent.png","",NULL,NULL,NULL);
INSERT INTO cms_galerien VALUES ("41","1","1","N","../../media_xignis/navi_1/_images/bgheader.png","",NULL,NULL,NULL);
INSERT INTO cms_galerien VALUES ("45","1","1","","../../media_xignis/navi_40001/_images/julian winzeler.jpg","",NULL,NULL,NULL);
INSERT INTO cms_galerien VALUES ("61","3","1","N","../../media_xignis/navi_3/_images/news2012sotposter.png","Diese Datei können Sie nebenstehend als Pdf öffnen","","","");
INSERT INTO cms_galerien VALUES ("69","1","1","P","../../media_xignis/navi_220001/_images/thpackshots.png","","","","");
INSERT INTO cms_galerien VALUES ("70","2","3","P","../../media_xignis/navi_220002/_images/thpackshots.png","","","","");
INSERT INTO cms_galerien VALUES ("71","3","1","P","../../media_xignis/navi_220003/_images/thpackshots.png","","","","");
INSERT INTO cms_galerien VALUES ("73","1","2","P","../../media_xignis/navi_220001/_images/waserwartetdich2017.png","","","","");
INSERT INTO cms_galerien VALUES ("74","7","1","N","../../media_xignis/navi_7/_images/waserwartetdich2017.png","","","","");



# ----------------------------------------------------------
#
# Struktur von Tabelle 'cms_markers2'
#
DROP TABLE IF EXISTS cms_markers2;
CREATE TABLE cms_markers2 (
    mid int(11) NOT NULL auto_increment,
    nam varchar(60) NOT NULL,
    adr varchar(80) NOT NULL,
    ort varchar(80) NOT NULL,
    lat float NOT NULL,
    lng float NOT NULL,
    typ varchar(30) NOT NULL,
    act set('aktiv','inaktiv') DEFAULT "aktiv" NOT NULL,
   PRIMARY KEY (mid)
);

#
# Daten von Tabelle 'cms_markers2'
#
INSERT INTO cms_markers2 VALUES ("5","Christoffelunterführung, RailCity","Bahnhofstr. 5"," 3011 Bern","46.9492","7.44391","lager","aktiv");
INSERT INTO cms_markers2 VALUES ("11","Amavita Apotheke Schwamendingen","Winterthurerstrasse 529"," 8051 Zürich ","47.404","8.5726","lager","aktiv");
INSERT INTO cms_markers2 VALUES ("14","Amavita Apotheke Vispach","Centerpark"," 3930 Visp","46.2945","7.88521","lager","aktiv");
INSERT INTO cms_markers2 VALUES ("19","Amavita Apotheke","Einkaufszentrum Glatt "," 8301 Glatt","47.4112","8.5961","lager","aktiv");
INSERT INTO cms_markers2 VALUES ("21","Amavita Apotheke","Zugerstrasse 2"," 8820 Wädenswil","47.2299","8.67332","lager","aktiv");
INSERT INTO cms_markers2 VALUES ("29","Apotheke Dr. Stoffel","AlbuVille"," 8640 Rapperswil","47.2289","8.82111","lager","aktiv");
INSERT INTO cms_markers2 VALUES ("43","Apotheke Sälipark","Louis Giroud-Str. 26"," 4600 Olten","47.3463","7.90962","lager","aktiv");
INSERT INTO cms_markers2 VALUES ("47","Apotheke Sunne-maert","Sonnengutstrasse 2-4"," 5620 Bremgarten/AG","47.3517","8.34858","lager","aktiv");
INSERT INTO cms_markers2 VALUES ("48","Apotheke Utogrund","Albisriederstrasse 232"," 8047 Zürich ","47.3791","0","lager","aktiv");
INSERT INTO cms_markers2 VALUES ("61","Bifang-Apotheke","Aarauerstrasse 73"," 4600 Olten","47.3489","7.91169","lager","inaktiv");
INSERT INTO cms_markers2 VALUES ("74","COOP Vitality Apotheke","Perry Center"," 4665 Oftringen","47.3112","7.91367","lager","aktiv");
INSERT INTO cms_markers2 VALUES ("75","COOP Vitality Apotheke","Salzhausstrasse 31"," 2508 Biel","47.1302","7.24375","lager","aktiv");
INSERT INTO cms_markers2 VALUES ("76","COOP Vitality Apotheke","Sihlcity 15"," 8045 Zürich","47.3583","8.52212","lager","aktiv");
INSERT INTO cms_markers2 VALUES ("80","COOP Vitality Apotheke","Zentrum 2"," 5443 Niederrohrdorf","47.4239","8.30507","lager","inaktiv");
INSERT INTO cms_markers2 VALUES ("111","Farmacia delle Semine SA","Via Rodari 3"," 6500 Bellinzona","46.1872","9.01511","lager","aktiv");
INSERT INTO cms_markers2 VALUES ("125","Kräuterhaus-Drogerie Zeller AG","Hauptgasse 23"," 4500 Solothurn","47.2072","7.53602","lager","aktiv");
INSERT INTO cms_markers2 VALUES ("151","Pharmacie Amavita Saint-François ","place Saint-François 1"," 1003 Lausanne","46.5199","6.63223","lager","aktiv");
INSERT INTO cms_markers2 VALUES ("182","Pharmacie Capitole Serpent","Grand-Rue 3"," 1630 Bulle","46.6179","7.05704","lager","inaktiv");
INSERT INTO cms_markers2 VALUES ("196","Pharmacie COOP Vitality SA Crissier","Ch. de Saugy 1"," 1023 Crissier","46.5447","6.57043","lager","aktiv");
INSERT INTO cms_markers2 VALUES ("204","Pharmacie de la Gare","Place de la Gare 1"," 2002 Neuchâtel","46.9966","6.93596","lager","aktiv");
INSERT INTO cms_markers2 VALUES ("227","Pharmacie Hadid Sarl","Av. de Chailly 44"," 1012 Lausanne","46.5233","6.65476","lager","aktiv");
INSERT INTO cms_markers2 VALUES ("229","Pharmacie les Crêtes SA","Route d&quot;Ayent 19"," 1971 Grimisuat","37.0188","-88.3335","lager","aktiv");
INSERT INTO cms_markers2 VALUES ("233","Pharmacie Miserez SA","rue de la Gare 4"," 1030 Bussigny-près-Lausanne/VD","46.548","6.55292","lager","aktiv");
INSERT INTO cms_markers2 VALUES ("241","Pilger Apotheke AG","Missionsstrasse 57"," 4055 Basel","47.5609","7.5753","lager","aktiv");
INSERT INTO cms_markers2 VALUES ("246","Reuss-Apotheke ","Zufikerstrasse 2"," 5620 Bremgarten/AG","47.3527","8.34962","lager","aktiv");
INSERT INTO cms_markers2 VALUES ("248","Rosen Apotheke","Niederdorfstrasse 11"," 8001 Zürich","47.3733","8.5436","lager","aktiv");
INSERT INTO cms_markers2 VALUES ("250","Rotbuch Apotheke ","Röschibachstrasse 72"," 8037 Zürich ","47.3931","8.52843","lager","aktiv");
INSERT INTO cms_markers2 VALUES ("275","Wellness Apotheke GmbH","Kantonsstrasse 96"," 6048 Horw/LU","47.0198","8.31083","lager","aktiv");
INSERT INTO cms_markers2 VALUES ("301","Farmacia Malè SA","piazza Indipendenza 4","6500 Bellinzona","46.1898","9.02296","lager","aktiv");
INSERT INTO cms_markers2 VALUES ("303","Farmacia Stazione Farbe SA","viale stazione33","6500 Bellinzona","46.195","9.02799","lager","aktiv");
INSERT INTO cms_markers2 VALUES ("304","Farmacia Rondi","via Codeborgo 20","6500 Bellinzona","46.1928","9.02412","lager","aktiv");
INSERT INTO cms_markers2 VALUES ("305","Amavita Mordasini SA","Centro Migros S. Antonino","6592 S. Antonio ","46.1536","8.97893","lager","aktiv");
INSERT INTO cms_markers2 VALUES ("306","Coop Vitality Tenero","Via Brere 8","6598 Tenero","46.1741","8.85562","lager","aktiv");
INSERT INTO cms_markers2 VALUES ("307","Farmacia Amavita Realini","Via Emmaus 1","6616 Losone","46.1648","8.76874","lager","aktiv");
INSERT INTO cms_markers2 VALUES ("308","Farmacia Martinoli SA","Piazzetta Cavalier Pellanda 1","6710 Biasca","46.3599","8.97128","lager","aktiv");
INSERT INTO cms_markers2 VALUES ("309","Farmacia Amavita Centro Breggia","Via S. Gottardo 58a","6828 Balerna","45.8461","9.01223","lager","aktiv");
INSERT INTO cms_markers2 VALUES ("310","Farmacia San Nicolao","via Besso 7","6900  Lugano","46.0058","8.94381","lager","aktiv");
INSERT INTO cms_markers2 VALUES ("313","Farmacia Sorengo ","via Paradiso 24","6924 Sorengo","45.9977","8.93782","lager","aktiv");
INSERT INTO cms_markers2 VALUES ("314","Farmacia Centrale SA","Via della Posta 8","6900 Lugano","46.005","8.95271","lager","aktiv");
INSERT INTO cms_markers2 VALUES ("316","Farmacia Sant Anna","via besso 37","6900 Lugano","46.009","8.9397","lager","aktiv");
INSERT INTO cms_markers2 VALUES ("317","Farmacia Solari","via Francesco Soave 1","6900 Lugano","46.0043","8.95104","lager","aktiv");
INSERT INTO cms_markers2 VALUES ("318","Farmacia Stadio SA","Farmacia Stadio SA","6900 Lugano","46.0035","8.95119","lager","aktiv");
INSERT INTO cms_markers2 VALUES ("319","Farmacia Trevano ","via Trevano 31","6900 Lugano","46.0158","8.95536","lager","aktiv");
INSERT INTO cms_markers2 VALUES ("320","Farmacia Centro Grancia SA","Centro Lugano Sud","6916 Grancia","45.9677","8.92782","lager","aktiv");
INSERT INTO cms_markers2 VALUES ("322","Farmacia Teatro","piazza Teatro 2","6500 Bellinzona","46.1911","9.02215","lager","aktiv");
INSERT INTO cms_markers2 VALUES ("323","Farmacia Casabella","via Vedeggio 1","6814 Lamone","46.0387","8.93153","lager","aktiv");
INSERT INTO cms_markers2 VALUES ("324","Farmacia Serfontana SA","Centro Commerciale","6834 Morbio Inferiore","45.8502","9.02388","lager","aktiv");
INSERT INTO cms_markers2 VALUES ("325","Farmacia Pestoni","via Giulia 22","6855 Stabio","45.8501","8.93799","lager","aktiv");
INSERT INTO cms_markers2 VALUES ("326","Farmacia PARADISO","via Guisan 10","6900 Paradiso","45.9917","8.94651","lager","aktiv");
INSERT INTO cms_markers2 VALUES ("327","Farmacia Amavita San Lorenzo","piazza Cioccaro 2","6900 Lugano","46.0047","8.95003","lager","aktiv");
INSERT INTO cms_markers2 VALUES ("328","Farmacia Amavita Nuova","via Soave 8","6900 Lugano","46.0046","8.95035","lager","aktiv");
INSERT INTO cms_markers2 VALUES ("330","Tödi-Apotheke","Tödistrasse 46","8002 Zürich ","47.3675","8.53394","lager","aktiv");
INSERT INTO cms_markers2 VALUES ("331","Farmacia Coop Vitality","via Sonvico 5","6952 Canobbio","46.0284","8.96749","lager","aktiv");
INSERT INTO cms_markers2 VALUES ("332","Farmacia Coop Vitality ","via Molinazzo 1","6962 Viganello","46.0097","8.96407","lager","aktiv");
INSERT INTO cms_markers2 VALUES ("333","Farmacia San Provino ","viale Reina 1","6982 Agno","45.9961","8.90077","lager","aktiv");
INSERT INTO cms_markers2 VALUES ("334","FARMACIA SAN LUCA SA","via Golf 46","6987 Caslano","45.9813","8.8791","lager","aktiv");
INSERT INTO cms_markers2 VALUES ("335","Farmacia Malcantonese ","via Lugano 14","6988 Ponte Tresa","45.9682","8.86006","lager","aktiv");
INSERT INTO cms_markers2 VALUES ("336","Farmacia Del Corso S.A.","Piazza Col. C. Bernasconi ","6830 Chiasso","45.8356","9.0271","lager","aktiv");
INSERT INTO cms_markers2 VALUES ("337","Coop Vitality Apotheke ","Baslerstrasse 50","8048 Zürich","47.3864","8.49877","lager","aktiv");
INSERT INTO cms_markers2 VALUES ("338","Albisriederstrasse 232","8047 Zürich ","8047 Zürich ","8.49471","8.49471","lager","");
INSERT INTO cms_markers2 VALUES ("339","Victoria-Apotheke Zürich ","Bahnhofstrasse 71","8021 Zürich ","47.3743","8.5383","lager","aktiv");
INSERT INTO cms_markers2 VALUES ("340","Bahnhof Apotheke im HB ZH","Bahnhofplatz 15","8001 Zürich ","47.3772","8.54067","lager","aktiv");
INSERT INTO cms_markers2 VALUES ("341","Bahnhof-Apotheke ","Bahnhofstrasse 27","8201 Schaffhausen ","47.6965","8.63165","lager","aktiv");
INSERT INTO cms_markers2 VALUES ("342","Amavita Apotheke Schwamendingen ","Winterthurerstrasse 529","8051 Zürich ","47.404","8.57261","lager","inaktiv");
INSERT INTO cms_markers2 VALUES ("343","Apotheke Altstetten 1","Badenerstrasse 681","8048 Zürich ","47.3877","8.48536","lager","aktiv");
INSERT INTO cms_markers2 VALUES ("344","Drogerie Giger","Hauptstrasse 75","6182 Escholzmatt","46.9163","7.93605","onlineshop","aktiv");
INSERT INTO cms_markers2 VALUES ("345","Lilie Zentrum","Uitikonerstrasse 9","8952 Schlieren","47.3968","8.44877","lager","aktiv");
INSERT INTO cms_markers2 VALUES ("346","Farmacia Quisisana SA","Via Marcetto 3","6883 Novazzo ","45.8406","8.98009","lager","aktiv");
INSERT INTO cms_markers2 VALUES ("347","Pharmacie Grand-Chêne","rue Grand-Chêne 1","1003 Lausanne","46.5196","6.6319","lager","aktiv");
INSERT INTO cms_markers2 VALUES ("348","Pharmacie Bel-Air","Place Bel-Air 2","1400 Yverdon","46.7803","6.63719","lager","aktiv");
INSERT INTO cms_markers2 VALUES ("349","Pharmacie Benu Ouchy ","Av. de la Rhodanie 2","1007 Lausanne","46.508","6.62477","lager","aktiv");
INSERT INTO cms_markers2 VALUES ("350","Pharmacie Benu Etraz ","Rue Etraz 12","1003 Lausanne","46.5192","6.63883","lager","aktiv");
INSERT INTO cms_markers2 VALUES ("351","Drogerie Schilliger","Zelgmatte 2","6144 Zell","7.92811","7.92811","lager","");
INSERT INTO cms_markers2 VALUES ("352","Farmacia Elvetica","Via Bossi 1","6901 Lugano","46.0073","8.95319","lager","aktiv");
INSERT INTO cms_markers2 VALUES ("353","Centro Manor La Rotonda","Via Industrie 1","6592 San Antonio","46.1563","8.96644","lager","aktiv");
INSERT INTO cms_markers2 VALUES ("355","Amavita Apotheke Stadelhofen","Stadelhoferstrasse 8","8001 Zürich","47.3666","8.5484","lager","aktiv");
INSERT INTO cms_markers2 VALUES ("356","Apotheke 11","Querstrasse 15/17","8050 Zürich","47.4097","8.54463","lager","aktiv");
INSERT INTO cms_markers2 VALUES ("357","Coop Vitality Apotheke","St. Gallerstrasse 75","9200 Gossau","47.4167","9.25166","lager","");
INSERT INTO cms_markers2 VALUES ("358","Amavita Apotheke Sonnenhof ","Bahnhofstasse 28","8180 Bülach","47.521","8.53991","lager","aktiv");
INSERT INTO cms_markers2 VALUES ("359","Amavita Apotheke Bahnhofplatz","Bahnhofstrasse 108","8021 Zürich ","47.3767","8.53993","lager","aktiv");
INSERT INTO cms_markers2 VALUES ("360","Apotheke Flamatt AG","Bernstrasse 15","3175 Flamatt","46.8903","7.3159","lager","aktiv");
INSERT INTO cms_markers2 VALUES ("361","Coop Vitality Apotheke","Zürcherstrasse 138","8500 Frauenfeld","47.5545","8.89563","lager","aktiv");
INSERT INTO cms_markers2 VALUES ("362","BENU Pharmacie Bornand","rue Saint-Maurice 2","2000 Neuchâtel","46.9911","6.93083","lager","aktiv");
INSERT INTO cms_markers2 VALUES ("363","Adler-Apotheke","Bahnhofplatz 2","8401 Winterthur","47.499","8.72408","onlineshop","aktiv");
INSERT INTO cms_markers2 VALUES ("364","Welldro AG","Grossfeldstrasse 67","8887 Mels","9.43525","9.43525","onlineshop","");
INSERT INTO cms_markers2 VALUES ("365","Welldro AG","Grossfeldstrasse 67","8887 Mels","47.0397","9.43647","onlineshop","aktiv");



# ----------------------------------------------------------
#
# Struktur von Tabelle 'cms_members'
#
DROP TABLE IF EXISTS cms_members;
CREATE TABLE cms_members (
    id tinyint(4) NOT NULL auto_increment,
    username varchar(125) NOT NULL,
    password varchar(32) NOT NULL,
    created datetime NOT NULL,
    lastlogin datetime NOT NULL,
   PRIMARY KEY (id),
   KEY username (username)
);

#
# Daten von Tabelle 'cms_members'
#
INSERT INTO cms_members VALUES ("2","webprog10","a3e6096dbe9169213e7880821129428e","0000-00-00 00:00:00","0000-00-00 00:00:00");
INSERT INTO cms_members VALUES ("6","info@hempenweb.ch","e9911456f39b5e6d738669ac8d438b20","2012-06-11 18:38:23","2014-11-01 11:08:16");
INSERT INTO cms_members VALUES ("7","hempen@bluewin.ch","e9911456f39b5e6d738669ac8d438b20","2012-06-11 20:21:37","2017-03-19 09:20:53");
INSERT INTO cms_members VALUES ("9","scivolino@bluewin.ch","adbef49238d4a8003167f4b7c9d2f2cb","2012-06-11 23:10:02","2012-06-11 23:11:51");
INSERT INTO cms_members VALUES ("10","iloetscher@bluewin.ch","19657a223e70e8addfd1e97cd9081c4e","2012-06-18 09:13:17","2012-06-18 09:13:29");



# ----------------------------------------------------------
#
# Struktur von Tabelle 'cms_modules'
#
DROP TABLE IF EXISTS cms_modules;
CREATE TABLE cms_modules (
    module_id tinyint(3) unsigned NOT NULL auto_increment,
    module_name varchar(40) NOT NULL,
    module_descr varchar(125),
   PRIMARY KEY (module_id)
);

#
# Daten von Tabelle 'cms_modules'
#
INSERT INTO cms_modules VALUES ("1","PAGES_OVERVIEW","Unterseiten zur aktuellen Menuposition auflisten");
INSERT INTO cms_modules VALUES ("2","KONTAKTFORMULAR","Kontaktformular");
INSERT INTO cms_modules VALUES ("3","READ_TOP_EXPO_EVENT","Auflisten aktuellste Event und Expo");
INSERT INTO cms_modules VALUES ("6","SITEMAP","Sitemap");
INSERT INTO cms_modules VALUES ("7","GOOGLEMAPS","Filialsuche mit Googlemaps");
INSERT INTO cms_modules VALUES ("8","MEMBER_LOGIN","Member-Login");



# ----------------------------------------------------------
#
# Struktur von Tabelle 'cms_navigation'
#
DROP TABLE IF EXISTS cms_navigation;
CREATE TABLE cms_navigation (
    nav_id smallint(6) NOT NULL auto_increment,
    domain varchar(10),
    kap tinyint(3) unsigned DEFAULT "0" NOT NULL,
    ukap tinyint(3) unsigned DEFAULT "0" NOT NULL,
    bezeich_de varchar(40) NOT NULL,
    bezeich_en varchar(40) NOT NULL,
    bezeich_fr varchar(40) NOT NULL,
    bezeich_it varchar(40) NOT NULL,
    kuerzel_de varchar(20) NOT NULL,
    kuerzel_en varchar(20) NOT NULL,
    kuerzel_fr varchar(20) NOT NULL,
    kuerzel_it varchar(20) NOT NULL,
    bildpfad varchar(125),
    aktiv enum('j','n') DEFAULT "j" NOT NULL,
    start enum('j','n') DEFAULT "n" NOT NULL,
    nav_type set('','S','H','V') DEFAULT "H",
   PRIMARY KEY (nav_id),
   KEY domain (domain)
);

#
# Daten von Tabelle 'cms_navigation'
#
INSERT INTO cms_navigation VALUES ("1","navi_1","2","0","Produkte","products","les produits","i prodotti","Produkte","products","lesproduits","iprodotti","navi_1","j","j","H");
INSERT INTO cms_navigation VALUES ("3","navi_3","4","0","Publikationen","publications","publications","pubblicazioni","Publikationen","publications","publications","pubblicazioni","navi_3","j","n","H");
INSERT INTO cms_navigation VALUES ("5","navi_5","6","0","Members","members","membres","membri","Members","members","membres","membri","navi_5","j","n","H");
INSERT INTO cms_navigation VALUES ("7","navi_6","5","0","Kontakt","contact","contact","contattare","Kontakt","contact","contact","contattare","navi_7","j","n","H");
INSERT INTO cms_navigation VALUES ("11","navi_1","2","20","wie funktioniert TWENTYONE?","how works TWENTYONE?","comment fonctionne TWENTYONE?","come funziona TWENTYONE?","wiefunktioniertTWENT","howworksTWENTYONE?","commentfonctionneTWE","comefunzionaTWENTYON","navi_1_20","j","n","H");
INSERT INTO cms_navigation VALUES ("12","navi_1","2","30","das ist der Unterschied!","what\'s the difference?","quelle est la différence?","qual é la differenza?","dasistderUnterschied","what\'sthedifference?","quelleestladifféren","qualéladifferenza?","navi_1_30","j","n","H");
INSERT INTO cms_navigation VALUES ("19","navi_1","2","10","weshalb TWENTYONE wählen?","why choose TWENTYONE?","pourquoi choisir TWENTYONE?","perché scegliere TWENTYONE?","weshalbTWENTYONEwäh","whychooseTWENTYONE?","pourquoichoisirTWENT","perchéscegliereTWEN","navi_1_30","j","n","H");
INSERT INTO cms_navigation VALUES ("20","navi_20","3","0","Partner","partners","partenaires","partner","Partner","partners","partenaires","partner","navi_20","j","n","H");
INSERT INTO cms_navigation VALUES ("21","navi_21","1","0","Nach Hause","home","home","home","NachHause","home","home","home","navi_21","j","j","H");
INSERT INTO cms_navigation VALUES ("22","navi_22","7","0","Produkte 2","Products 2","Produits 2","Prodotti 2","Produkte2","Products2","Produits2","Prodotti2","navi_22","j","n","H");



# ----------------------------------------------------------
#
# Struktur von Tabelle 'cms_pages'
#
DROP TABLE IF EXISTS cms_pages;
CREATE TABLE cms_pages (
    page_id smallint(6) unsigned NOT NULL auto_increment,
    nav_id smallint(6) unsigned NOT NULL,
    domain char(10) NOT NULL,
    kennzeichen char(15) NOT NULL,
    datum_von datetime,
    datum_bis datetime,
    name_de varchar(125) NOT NULL,
    name_en varchar(125) NOT NULL,
    name_fr varchar(125) NOT NULL,
    name_it varchar(125) NOT NULL,
    fach_de char(20) NOT NULL,
    fach_en char(20) NOT NULL,
    fach_fr char(20) NOT NULL,
    fach_it char(20) NOT NULL,
    kurztext_de varchar(200),
    kurztext_en varchar(200),
    kurztext_fr varchar(200),
    kurztext_it varchar(200),
    inhalt1_de longtext,
    inhalt1_en longtext,
    inhalt1_fr longtext,
    inhalt1_it longtext,
    inhalt2_de longtext,
    inhalt2_en longtext,
    inhalt2_fr longtext,
    inhalt2_it longtext,
    template tinyint(3) unsigned,
    bild1 varchar(125),
    bild2 varchar(125),
    galerie enum('n','a','b','c') NOT NULL,
    linkid1 smallint(6) unsigned,
    linkid2 smallint(6) unsigned,
    aktiv enum('j','n'),
    sort_id smallint(3) unsigned NOT NULL,
   PRIMARY KEY (page_id),
   KEY navid (nav_id),
   KEY domain (domain)
);

#
# Daten von Tabelle 'cms_pages'
#
INSERT INTO cms_pages VALUES ("1","22","navi_22","navi_220001","0000-00-00 00:00:00","0000-00-00 00:00:00","weshalb TWENTYONE wählen?","why choose TWENTYONE?","pourquoi choisir TWENTYONE?","perché scegliere TWENTYONE?","Produkte_2","Products_2","Produits_2","Prodotti_2","weshalb TWENTYONE wählen?","why choose TWENTYONE?","pourquoi choisir TWENTYONE?","perché scegliere TWENTYONE?","<p><strong>TWENTYONE</strong> E-Zigaretten sind patentgeschützt und werden vom Unternehmen welches die Patente besitzt hergestellt. &nbsp; <br /><strong></strong></p>
<p><br /><strong></strong></p>
<p><strong>TWENTYONE</strong> liquids basieren auf Propylenglykol und Glycerol welche Pharma-Standards entsprechen. <strong> <br /></strong></p>
<p><strong><br /></strong></p>
<p><strong>TWENTYONE</strong> erfüllt die vom Bundesamt für Gesundheit (BAG) gestellten Anforderungen und wird kontinuierlich von unabhängigen, ISO-zertifizierten Labors geprüft.</p>","<p><strong>xignis</strong> does not generate harmful smoke, but only an aromatic water vapor.</p>
<p>&nbsp;</p>
<p><strong>xignis </strong>is a high quality product that is fully compliant with the requirements of the Swiss Federal Office of Public Health. Its quality is continuously monitored by an ISO-certified independent laboratory.</p>
<p>&nbsp;</p>
<p><strong>xignis </strong>is more economical that conventional cigarettes.</p>
<p>&nbsp;</p>
<p><strong>xignis</strong> affords you the sensation and pleasure of smoking conventional cigarettes, even in places where smoking is not allowed.</p>","<p><strong>xignis</strong> n\'engendre pas de fumée nocive mais seulement de la vapeur d\'eau.</p>
<p>&nbsp;</p>
<p><strong>xignis</strong> répond aux exigences de OFSP et est soumise à des contrôles de qualité permantents et est analysé par les laboratoires indépendants, certifiés selons les normes ISO.</p>
<p>&nbsp;</p>
<p><strong>xignis</strong> est nun produit de haute qualité dont lutilisation est nettement plus économique par rapport aux cigarettes conventionelles.</p>
<p>&nbsp;</p>
<p><strong>xignis</strong> permet de garder la gestuelle habituelle, le goût et la sensation connue en fumant des cigarettes conventionelles même à des endroits, où il est normalement interdit de fumer.</p>","<p><strong>xignis</strong> non genera fumo tossico, di consequenza, neppure fumo passivo, bensì solamente vapore acqueo.</p>
<p>&nbsp;</p>
<p><strong>xignis</strong> risponde alle esigenze del UFSP ed è sottoposta a controlli di qualità permanenti. Viene analizzata da laboratori indipendenti certificati ISO.</p>
<p>&nbsp;</p>
<p><strong>xignis</strong> è un prodotto di eccelente qualità. Il suo utilizzo risulta essere anche più economico rispetto alle sigarette tradizionali.</p>
<p>&nbsp;</p>
<p>Scegliendo<strong> xignis</strong> si può mantenere la gestualità abituale, il gusto e la sensazione conosciuta, come se fumasse delle sigarette tradizionali, anche nei luoghi dove di solito è proibito fumare.</p>","","","","","1","../../media_xignis/navi_220001/_thumbs/th_thpackshots.png","","n","0","0","j","1");
INSERT INTO cms_pages VALUES ("2","22","navi_22","navi_220002","0000-00-00 00:00:00","0000-00-00 00:00:00","wie funktioniert TWENTYONE?","how works xignis?","comment fonctionne xignis?","come funziona xignis?","Produkte_2","Products_2","Produits_2","Prodotti_2","wie funktioniert TWENTYONE?","how works xignis?","comment fonctionne xignis?","come funziona xignis?","<p>Eine Hochleistungs-Lithiumbatterie versorgt den Leuchtindikator sowie die elektronische Steuerung der Zigarette mit elektrischer Energie, welche ihrerseits verschiedene Befehle aussendet. In einem Zerstäuber werden mikroskopisch kleine Aerosolpartikel erzeugt, aus denen schliesslich eine Qualmwolke entsteht.</p>
<p>&nbsp;</p>
<p>Die gebrauchsfertige TWENTYONE E-Zigarette entspricht in etwa bis zu 40 Zigaretten. Die genaue Dampfdauer ist abhängig vom Volumen der einzelnen Züge.</p>","<p>The electronic cigarette <strong>xignis</strong> consists of a metal housing containing a rechargeable lithium-ion battery, an atomizer and a cartridge with flavourings.The battery supplies the energy to vaporize the liquid and to light up the LED light. When the user takes a drag on the xignis device the atomizer is activated generating tiny aerosol particles coalescing into vapor puffs.</p>
<p><br />One cartridge will last the equivalent of approximately 8 - 10 conventional cigarettes before needing replacement.</p>","<p>Le fonctionnement d\'<strong>xignis</strong> est assuré par une batterie au lithium rechargeable à haute performance, qui alimente la commande électronique ainsi que l\'indicateur lumineux avec de l\'énergie. Des particules d\'aérosol minuscules, qui forment un nuage, sont produites dans un vaporisateur en nickel à l\'intérieur de l\'appareil.</p>
<p>&nbsp;</p>
<p>Lorsque la quantité de vapeur produite&nbsp; commence à diminuer, il faut remplacer le filtre. Un filtre équivaut à environ 8 à 10 cigarettes conventionelles.</p>","<p>La sigaretta <strong>xignis</strong> è alimentata da una batteria al litio ricaricabile ad alta performance, che alimenta il commando elettronico come pure l\'indicatore luminoso.&nbsp;Un atomizzatore composto da nikel produce delle minuscole particelle di aerosol, che a loro volta formano la tipica nuvoletta di vapore.<br /><br />Quando la quantità di vapore prodotto inizia a diminuire bisogna sostituire il filtro. Un filtro equivale a circa 8-10 sigarette tradizionali.</p>","<p>%teaser1%</p>","<p>%teaser1%</p>","<p>%teaser1%</p>","<p>%teaser1%</p>","1","../../media_xignis/navi_220002/_thumbs/th_thpackshots.png","","n","0","0","j","2");
INSERT INTO cms_pages VALUES ("3","22","navi_22","navi_220003","0000-00-00 00:00:00","0000-00-00 00:00:00","what\'s the difference?","what\'s the difference?","quelle est la différence?","qual é la differenza?","Produkte_2","Products_2","Produits_2","Prodotti_2","what\'s the difference?","what\'s the difference?","quelle est la différence?","qual é la differenza?","<p><span id=\"result_box\" lang=\"en\"><strong><span class=\"hps atn\">e-</span>njoy</strong> <span class=\"hps\">is an electronic</span> <span class=\"hps\">cigarette,</span> <span class=\"hps\">consisting of a</span> <span class=\"hps\">battery</span><span>, an</span> <span class=\"hps\">atomizer and</span> <span class=\"hps\">a filter without</span> <span class=\"hps\">nicotine,</span> <span class=\"hps\">with which the</span> <span class=\"hps\">smoking simulated by</span> <span class=\"hps\">conventional cigarette</span><span>,</span> <span class=\"hps\">without producing</span> <span class=\"hps\">combustion.</span> <span class=\"hps\">The<strong> e</strong></span><strong><span class=\"atn\">-</span>njoy</strong> <span class=\"hps\">replacement</span> <span class=\"hps\">filters contain</span> <span class=\"hps\">a liquid that is</span> <span class=\"hps\">composed of</span> <span class=\"hps\">propylene</span> <span class=\"hps\">glycol and</span> <span class=\"hps atn\">glycerol (</span><span>both</span> often <span class=\"hps\">used</span> <span class=\"hps\">as food additives</span><span>)</span> <span class=\"hps\">and</span> <span class=\"hps\">flavor</span><span>.</span> <span class=\"hps\">They come in</span> <span class=\"hps\">different flavors.</span></span></p>
<p>&nbsp;</p>
<p><span id=\"result_box\" lang=\"en\"><span class=\"hps\"><span id=\"result_box\" lang=\"en\"><span class=\"hps\">With <strong>e</strong></span><strong><span class=\"atn\">-</span>njoy </strong><span class=\"hps\">no tobacco</span> <span class=\"hps\">is smoked,</span> <span class=\"hps\">which could</span> <span class=\"hps\">harm</span> <span class=\"hps\">their own health or</span> <span class=\"hps\">the health of others</span><span>.</span> <span class=\"hps\">The body</span> <span class=\"hps\">remains</span> <span class=\"hps\">spared of nicotine and</span> <span class=\"hps\">tar</span><span>, and</span> <span class=\"hps\">some 4,000</span> <span class=\"hps\">other</span> <span class=\"hps\">chemical compounds</span> <span class=\"hps\">of a</span> <span class=\"hps\">conventional</span> <span class=\"hps\">cigarette</span><span>.</span> <span class=\"hps\">This is</span> <span class=\"hps\">undoubtedly the</span> <span class=\"hps\">most important</span> <span class=\"hps\">aspect</span><span>,</span> <span class=\"hps\">because of</span> <span class=\"hps\">its</span> <span class=\"hps\">offering</span> <span class=\"hps\">to</span> <strong><span class=\"hps\">e</span><span class=\"atn\">-</span>njoy</strong> <span class=\"hps\">as a useful</span> <span class=\"hps\">alternative for</span> <span class=\"hps\">smokers who do not</span> <span class=\"hps\">want to give up</span> <span class=\"hps\">the cigarette</span><span class=\"hps\">.</span></span></span></span></p>","<p><span id=\"result_box\" lang=\"en\"><strong><span class=\"hps atn\">xignis</span></strong> <span class=\"hps\">is an electronic</span> <span class=\"hps\">cigarette,</span> <span class=\"hps\">consisting of a</span> <span class=\"hps\">battery</span><span>, an</span> <span class=\"hps\">atomizer and</span> <span class=\"hps\">a filter without</span> <span class=\"hps\">nicotine,</span> <span class=\"hps\">with which the</span> <span class=\"hps\">smoking simulated by</span> <span class=\"hps\">conventional cigarette</span><span>,</span> <span class=\"hps\">without producing</span> <span class=\"hps\">combustion.</span> <span class=\"hps\">The<strong> xignis</strong></span> <span class=\"hps\">replacement</span> <span class=\"hps\">filters contain</span> <span class=\"hps\">a liquid that is</span> <span class=\"hps\">composed of</span> <span class=\"hps\">propylene</span> <span class=\"hps\">glycol and</span> <span class=\"hps atn\">glycerol (</span><span>both</span> often <span class=\"hps\">used</span> <span class=\"hps\">as food additives</span><span>)</span> <span class=\"hps\">and</span> <span class=\"hps\">flavor</span><span>.</span> <span class=\"hps\">They come in</span> <span class=\"hps\">different flavors.</span></span></p>
<p>&nbsp;</p>
<p><span id=\"result_box\" lang=\"en\"><span class=\"hps\"><span id=\"result_box\" lang=\"en\"><span class=\"hps\">With <strong>xignis</strong></span><strong> </strong><span class=\"hps\">no tobacco</span> <span class=\"hps\">is smoked,</span> <span class=\"hps\">which could</span> <span class=\"hps\">harm</span> <span class=\"hps\">their own health or</span> <span class=\"hps\">the health of others</span><span>.</span> <span class=\"hps\">The body</span> <span class=\"hps\">remains</span> <span class=\"hps\">spared of nicotine and</span> <span class=\"hps\">tar</span><span>, and</span> <span class=\"hps\">some 4,000</span> <span class=\"hps\">other</span> <span class=\"hps\">chemical compounds</span> <span class=\"hps\">of a</span> <span class=\"hps\">conventional</span> <span class=\"hps\">cigarette</span><span>.</span> <span class=\"hps\">This is</span> <span class=\"hps\">undoubtedly the</span> <span class=\"hps\">most important</span> <span class=\"hps\">aspect</span><span>,</span> <span class=\"hps\">because of</span> <span class=\"hps\">its</span> <span class=\"hps\">offering</span> <span class=\"hps\">to</span> <strong><span class=\"hps\">xignis</span></strong> <span class=\"hps\">as a useful</span> <span class=\"hps\">alternative for</span> <span class=\"hps\">smokers who do not</span> <span class=\"hps\">want to give up</span> <span class=\"hps\">the cigarette</span><span class=\"hps\">.</span></span></span></span></p>","<p><strong>xignis</strong> est une cigarette électronique, qui se compose d\'un accu d\'un vaporisateur et d\'un filtre sans nicotine permettant la simulation de fumer sans pourtant engendrer la combustion. Les filtres de recharge <strong>xignis</strong> contiennt un liquide qui se composent de glycérine et de propylène glycol (additifs alimentaires courants) et d\'arôme. Ils sont disponibles en différents parfums.&nbsp;<br /><br />Avec <strong>xignis</strong> on ne fume pas de tabac nuisible pour sa propre santé aussi bien que pour la santé d\'autrui. Le corps n\'est donc épargné pas seulement par la nicotine et le goudron mais également par d\'environ 4\'000 autre composés chimiques d\'une cigarette conventionelle. C\'est sans doute l\'aspect le plus important ce qui fait d\'xignis une alternative judicieuse pour le fumeur n\'étant pas prêt à renoncer à la jouissance de la cigarette.</p>","<p><strong>xignis</strong> è una sigaretta elettronica contenente una batteria, un atomizzatore ed un filtro<strong> senza nicotina</strong>, con la quale si può simulare di fumare una sigaretta senza produrre della combustione. &nbsp;<br />I filtri <strong>xignis</strong> contengono un liquido che è composto da glicerina e propilenica (sostanze usate nell\'ambito alimentare), e aromi. Esistono degli aromi diversi. <br /><br />Con<strong> xignis</strong> non si fuma del tabacco, che potrebbe nuocere alla propria salute ed a quella degli altri. Al corpo viene risparmiata l\'assunzione di catrame, nicotina e altre 4\'000 &nbsp;sostanze chimiche di una sigaretta tradizionale. Questo fatto è senz\'altro l\'aspetto più importante per il quale <strong>xignis</strong> viene offerta come alternativa per fumatori che non vogliono rinunciare al piacere della sigaretta.</p>","","","","","1","../../media_xignis/navi_220003/_thumbs/th_thpackshots.png","","n","0","0","j","3");
INSERT INTO cms_pages VALUES ("5","1","navi_1","navi_10001","0000-00-00 00:00:00","0000-00-00 00:00:00","test","","","","Produkte","","","","test",NULL,NULL,NULL,"",NULL,NULL,NULL,"",NULL,NULL,NULL,"1","","","n","0","0","n","1");



# ----------------------------------------------------------
#
# Struktur von Tabelle 'cms_redirect'
#
DROP TABLE IF EXISTS cms_redirect;
CREATE TABLE cms_redirect (
    id smallint(5) unsigned NOT NULL auto_increment,
    navid tinyint(3) unsigned NOT NULL,
    subid tinyint(3) unsigned NOT NULL,
    pagid tinyint(3) unsigned NOT NULL,
    kuerzel_de char(80) NOT NULL,
    kuerzel_en char(80) NOT NULL,
    kuerzel_fr char(80) NOT NULL,
    kuerzel_it char(80) NOT NULL,
   PRIMARY KEY (id),
   UNIQUE pagid (navid, subid, pagid)
);

#
# Daten von Tabelle 'cms_redirect'
#
INSERT INTO cms_redirect VALUES ("1","21","0","0","nach_hause","home","home","home");
INSERT INTO cms_redirect VALUES ("2","1","0","0","produkte","products","les_produits","i_prodotti");
INSERT INTO cms_redirect VALUES ("3","1","19","0","weshalb_twentyone_whlen","why_choose_twentyone","pourquoi_choisir_twentyone","perche_scegliere_twentyone");
INSERT INTO cms_redirect VALUES ("4","1","11","0","wie_funktioniert_twentyone","how_works_twentyone","comment_fonctionne_twentyone","come_funziona_twentyone");
INSERT INTO cms_redirect VALUES ("5","1","12","0","das_ist_der_unterschied","whats_the_difference","quelle_est_la_difference","qual_e_la_differenza");
INSERT INTO cms_redirect VALUES ("6","20","0","0","partner","partners","partenaires","partner");
INSERT INTO cms_redirect VALUES ("7","3","0","0","publikationen","publications","publications","pubblicazioni");
INSERT INTO cms_redirect VALUES ("8","7","0","0","kontakt","contact","contact","contattare");
INSERT INTO cms_redirect VALUES ("9","5","0","0","members","members","membres","membri");
INSERT INTO cms_redirect VALUES ("10","22","0","0","produkte_2","products_2","produits_2","prodotti_2");
INSERT INTO cms_redirect VALUES ("11","22","0","1","weshalb_twentyone_whlen","weshalb_twentyone_whlen","weshalb_twentyone_whlen","weshalb_twentyone_whlen");
INSERT INTO cms_redirect VALUES ("12","22","0","2","come_funziona_xignis","come_funziona_xignis","come_funziona_xignis","come_funziona_xignis");
INSERT INTO cms_redirect VALUES ("13","22","0","3","whats_the_difference","whats_the_difference","whats_the_difference","whats_the_difference");
INSERT INTO cms_redirect VALUES ("15","1","0","5","test","test","test","test");



# ----------------------------------------------------------
#
# Struktur von Tabelle 'cms_seiten'
#
DROP TABLE IF EXISTS cms_seiten;
CREATE TABLE cms_seiten (
    seiten_id smallint(6) NOT NULL auto_increment,
    nav_id smallint(6) DEFAULT "0" NOT NULL,
    nummer tinyint(4) DEFAULT "0" NOT NULL,
    template tinyint(3) DEFAULT "1" NOT NULL,
    modul tinyint(3) unsigned DEFAULT "0" NOT NULL,
    memberlogin set('X',''),
    kurztitel_de varchar(125) NOT NULL,
    kurztitel_en varchar(125) NOT NULL,
    kurztitel_fr varchar(125) NOT NULL,
    kurztitel_it varchar(125) NOT NULL,
    zusatz_de varchar(125),
    zusatz_en varchar(125),
    zusatz_fr varchar(125),
    zusatz_it varchar(125),
    inhalt1_de text NOT NULL,
    inhalt1_en text NOT NULL,
    inhalt1_fr text NOT NULL,
    inhalt1_it text NOT NULL,
    inhalt2_de text,
    inhalt2_en text,
    inhalt2_fr text,
    inhalt2_it text,
    bild1 varchar(125),
    galerie enum('n','a','b','c') DEFAULT "n" NOT NULL,
   PRIMARY KEY (seiten_id)
);

#
# Daten von Tabelle 'cms_seiten'
#
INSERT INTO cms_seiten VALUES ("1","1","1","1","0","","Produkte","products","les produits","i prodotti","Produkte und was es sonst noch so braucht!","","Produits et ce qu\'il est encore nécessaire","","<p>Und was ist, wenn ich hier auch noch Text eingebe?<br />Erscheint der oberhalb des Bildes?</p>
<p>und noch einen Text in Deutsch<br /> &nbsp;</p>","<p>what happens, if I write a text here</p>","<p>xignis est une cigarette électronique qui se compose d\'un accu, d\'un vaporisateur et d\'un filtre <strong>sans nicotine</strong>, permettant la simulation de fumer sans pourtant engendrer de la combustion. Les filtres de recharge xignis contiennent un liquide qui se compose de glycérine et de propylène glycol (additifs alimentaires courants) et d\'arôme. Ils sont disponibles en différents parfums.</p>
<p>Avec xignis on ne pas de tabac nuisible pour sa propre santé aussi bien que pour la santé d\'autrui. Le corps ne donc éparngé pas seulement par la nicotine et le goudron mais également par d\'environ 4\'000 autre composé chimiques d\'une cigarette conventionelle. C\'est sans doute l\'aspect le plus important ce qui fait d\'xignis une alternative judicieuse por le fumeur n\'étant pas prêt à renocer à la juissance de la cigarette.</p>","<p>qui il testo italiano</p>","<p>Und was ist, wenn ich hier auch noch Text eingebe?<br />Erscheint der oberhalb des Bildes?</p>
<p>und noch einen Text in Deutsch</p>
<p>schauen sie doch mal auf der Website von <a href=\"hempenweb.ch\" target=\"_blank\" rel=\"noopener noreferrer\">hempenweb </a>nach</p>","<p>and what happens, if I write a text here!</p>
<p>&nbsp;</p>","<p>ici le texte français</p>
<p>dans le deuxième spalte</p>","<p>anche qui il testo italiano</p>","../gifs/blank.gif","a");
INSERT INTO cms_seiten VALUES ("3","3","1","1","0","","Publikationen","publications","publications","pubblicazioni","Interessante Links zum Thema","links to relevant publications","","","<p><strong>Informationen zu den Komponenten (Propylenglykol / Glycerol) der Filterflüssigkeit von TWENTYONE:</strong></p>
<p><a title=\"Pharmawiki Propylenglykol\" href=\"http://www.pharmawiki.ch/wiki/index.php?wiki=Propylenglycol\" target=\"_blank\">→ Pharmawiki Propylenglycol</a></p>
<p><a title=\"Pharmawiki Glycerol\" href=\"http://www.pharmawiki.ch/wiki/index.php?wiki=glycerol\" target=\"_blank\">→ P<span class=\"intro\">harmawiki Glycero</span><span class=\"intro\">l</span></a></p>
<p>&nbsp;</p>
<p>&nbsp;<strong>Meinungen</strong></p>
<p><a title=\"Verbot der E-Zigarette? \" href=\"http://www.welt.de/debatte/kommentare/article13838641/Verbot-der-E-Zigarette-Ein-unsinniges-Placebo.html\" target=\"_blank\">→ Verbot der E-Zigarette?</a></p>
<p>&nbsp;</p>
<p><a title=\"Electronic cigarettes as a harm reduction strategy for tobacco control: A step forward or a repeat of past mistakes? \" href=\"http://www.palgrave-journals.com/jphp/journal/v32/n1/abs/jphp201041a.html\" target=\"_self\">→ Electronic cigarettes as a harm reduction strategy for tobacco control: A step forward or a repeat of past mistakes? </a></p>
<p>&nbsp;</p>
<p><strong>Wissenschaftliche Studien</strong></p>
<p><strong><a title=\"The Lancet 2013, Sept 9; Electronic cigarettes\" href=\"/media_xignis/navi_3/lancetecigarettessept2013.pdf\" target=\"_blank\">→The Lancet 2013, Sept 9; Electronic cigarettes</a><br /></strong>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<a href=\"/media_xignis/navi_3/eciglancetstudiedversjuni42014w.pdf\" target=\"_blank\"> →Graphische Darstellung der Studie<strong> </strong></a></p>
<p>&nbsp;</p>
<p>→<a href=\"/media_xignis/navi_3/lancetecigarettessept2013.pdf\" target=\"_blank\"> EffiCiency and Safety of an eLectronic cigAreTte (ECLAT)</a></p>
<p><strong><br /></strong></p>
<p><a title=\"Ruyan Cartridge Report\" href=\"http://www.healthnz.co.nz/RuyanCartridgeReport30-Oct-08.pdf\" target=\"_blank\">→Safety Report&nbsp; on the Ruyan e-cigarette Cartridge and Inhaled Aerosol.&nbsp;&nbsp;</a></p>
<p>&nbsp;</p>
<p>&nbsp;</p>
<p><a title=\"Bullen C et al.\" href=\"http://www.ncbi.nlm.nih.gov/pubmed/20378585\" target=\"_blank\">→ Effect of an ENDD (e-cigarette) on desire to smoke and withdrawal - randomized cross-over trial</a></p>
<p>&nbsp;</p>
<p><a title=\"Pattern of electronic cigarette use\" href=\"http://www.ncbi.nlm.nih.gov/pubmed/?term=Beliefs+about+Their+Safety+and+Benefits+Goniewicz\" target=\"_blank\">→ Pattern of electronic cigarette use and user beliefs about their safety and benefits</a><br />&nbsp;</p>","<p><strong>Components of the liquid of the xignis e-cigarette<br /></strong></p>
<p><a title=\"FDA - safety - propylene glycol\" href=\"http://www.accessdata.fda.gov/scripts/fcn/fcnDetailNavigation.cfm?rpt=scogsListing&amp;id=262\" target=\"_blank\">→ FDA - safety - propylene-glycol</a></p>
<p>&nbsp;</p>
<p><a title=\"FDA -safety - glycerine\" href=\"http://www.accessdata.fda.gov/scripts/fcn/fcnDetailNavigation.cfm?rpt=scogsListing&amp;id=142\" target=\"_blank\">→ FDA - safety - glycerine</a></p>
<p title=\"FDA Saftey assessment of Propylen glycol\">&nbsp;</p>
<p><strong>Opinions</strong></p>
<p><a href=\"http://www.hsph.harvard.edu/centers-institutes/population-development/files/article.jphp.pdf\" target=\"_blank\">→ Electronic cigarettes as a harm reduction strategy for tobacco control: A step forward or a repeat of past mistakes? --&gt; PDF</a><span>&nbsp;</span>&nbsp;</p>
<p>&nbsp;</p>
<p><strong>Scientific studies<br /><strong><a title=\"The Lancet 2013, Sept 9; Electronic cigarettes\" href=\"/media_xignis/navi_3/lancetecigarettessept2013.pdf\" target=\"_blank\">→The Lancet 2013, Sept 9; Electronic cigarettes</a> </strong><br /> </strong><br /> <a href=\"http://sph.bu.edu/index.php?option=com_insidernews&amp;categoryid=94&amp;sectionid=15&amp;task=view&amp;Itemid=617365&amp;articleid=3497\" target=\"_blank\">→ Electronic Cigarettes Hold Promise As Aid to Quitting</a></p>
<p>&nbsp;</p>
<p><a title=\"ENDD\" href=\"http://www.ncbi.nlm.nih.gov/pubmed/20378585\" target=\"_blank\">→ Effect of an ENDD (e-cigarette) on desire to smoke and withdrawal - Randomized cross-over trial</a></p>
<p>&nbsp;</p>
<p><a title=\"Pattern of electronic cigarette use\" href=\"http://www.ncbi.nlm.nih.gov/pubmed/?term=Beliefs+about+Their+Safety+and+Benefits+Goniewicz\" target=\"_blank\">→ Pattern of electronic cigarette use and user beliefs about theri safety and benefits</a></p>","<p><strong>Composants du liquide<br /></strong></p>
<p><strong><a title=\"Propylene glycole FDA\" href=\"http://www.accessdata.fda.gov/scripts/fcn/fcnDetailNavigation.cfm?rpt=scogsListing&amp;id=262\" target=\"_blank\">→ FDA - safety - propylèneglycol<br /></a></strong></p>
<p><br /><strong></strong></p>
<p><strong><a title=\"FDA -safety - glycerine\" href=\"http://www.accessdata.fda.gov/scripts/fcn/fcnDetailNavigation.cfm?rpt=scogsListing&amp;id=142\" target=\"_blank\">→ FDA - safety - glycérine</a><a title=\"Propylene glycole FDA\" href=\"http://www.accessdata.fda.gov/scripts/fcn/fcnDetailNavigation.cfm?rpt=scogsListing&amp;id=262\" target=\"_blank\"><br /></a></strong></p>
<p><strong><br /></strong></p>
<p><a title=\"propylène glycol dans des médicaments\" href=\"http://www.vidal.fr/Substance/propyleneglycol-2945.htm\" target=\"_blank\"><strong>→ vidal.fr/Substance/propyleneglycol</strong></a><strong><br /></strong></p>
<p><strong></strong><br /><strong></strong></p>
<p><a title=\"Vidal Glycérol\" href=\"http://www.vidal.fr/Substance/glycerol-1668.htm\" target=\"_blank\">→ vidal.fr/Substance/glycérol</a></p>
<p><strong><br /></strong></p>
<p><a title=\"Safety Report on the Ruyan® e-cigarette Cartridge and\" href=\"http://www.healthnz.co.nz/RuyanCartridgeReport30-Oct-08.pdf\" target=\"_blank\">→ Safety Report on the Ruyan e-cigarette Cartridge and Inhaled Aerosol</a></p>
<p>&nbsp;</p>
<p><strong>Opinions</strong></p>
<p><a title=\"Electronic cigarettes as a harm reduction strategy\" href=\"http://www.palgrave-journals.com/jphp/journal/v32/n1/abs/jphp201041a.html\" target=\"_blank\">→ Electronic cigarettes as a harm reduction strategy for tobacco control: A step forward or a repeat of past mistakes?&nbsp;<br /> <br /></a></p>
<p><strong>Etudes scientifiques</strong>&nbsp;<br /> <strong><a title=\"The Lancet 2013, Sept 9; Electronic cigarettes\" href=\"/media_xignis/navi_3/lancetecigarettessept2013.pdf\" target=\"_blank\">→The Lancet 2013, Sept 9; Electronic cigarettes<br />&nbsp;</a>&nbsp;</strong><br /> <a href=\"http://sph.bu.edu/index.php?option=com_insidernews&amp;categoryid=94&amp;sectionid=15&amp;task=view&amp;Itemid=617365&amp;articleid=3497\" target=\"_blank\">→Electronic Cigarettes Hold Promise As Aid to Quitting</a></p>
<p>&nbsp;</p>
<p><a title=\"Effect of an ENDD\" href=\"http://www.ncbi.nlm.nih.gov/pubmed/20378585\" target=\"_blank\">→ Effect of an ENDD (e-cigarette) on desire of smoke and Withdrawal- randomized cross-over trial. </a></p>
<p>&nbsp;</p>
<p><a title=\"Pattern of electronic cigarette use\" href=\"http://www.ncbi.nlm.nih.gov/pubmed/?term=Beliefs+about+Their+Safety+and+Benefits+Goniewicz\" target=\"_blank\">→ Pattern of electronic cigarette use and user beliefs about their safety and benefits</a><br />&nbsp;</p>
<p>&nbsp;</p>","<p><strong><span dir=\"auto\"><span id=\"result_box\" class=\"short_text\" lang=\"it\"><span class=\"hps\">Informazioni sull <span id=\"result_box\" class=\"short_text\" lang=\"it\"><span class=\"hps\">componenti</span></span></span></span></span></strong></p>
<p><strong><a title=\"sicurezza di glicole propilenico\" href=\"http://www.accessdata.fda.gov/scripts/fcn/fcnDetailNavigation.cfm?rpt=scogsListing&amp;id=262\"><span dir=\"auto\">→ Glicole propilenico</span></a></strong></p>
<p><strong><a title=\"Sicurezza della glicerina\" href=\"http://www.accessdata.fda.gov/scripts/fcn/fcnDetailNavigation.cfm?rpt=scogsListing&amp;id=142\" target=\"_blank\">→ Glicerina</a></strong></p>
<p>&nbsp;</p>
<p><a title=\"http://www.healthnz.co.nz/RuyanCartridgeReport30-Oct-08.pdf\" href=\"http://www.healthnz.co.nz/RuyanCartridgeReport30-Oct-08.pdf\" target=\"_blank\">→ Safety Report on the Ruyan e-cigarette Cartridge and Inhaled Aerosol</a></p>
<p><br /><strong></strong></p>
<p><strong>Opinioni</strong>&nbsp;</p>
<p><strong><a title=\"Electronic cigarettes as a harm reduction strategy \" href=\"http://www.hsph.harvard.edu/centers-institutes/population-development/files/article.jphp.pdf\" target=\"_blank\">→ Electronic cigarettes as a harm reduction strategy for tobacco control: A step forward or a repeat of past mistakes? --&gt; PDF</a><a title=\"Sicurezza della glicerina\" href=\"http://www.accessdata.fda.gov/scripts/fcn/fcnDetailNavigation.cfm?rpt=scogsListing&amp;id=142\" target=\"_blank\"> <br /></a></strong></p>
<p>&nbsp;<br /> <a href=\"http://sph.bu.edu/index.php?option=com_insidernews&amp;categoryid=94&amp;sectionid=15&amp;task=view&amp;Itemid=617365&amp;articleid=3497\" target=\"_blank\">→ Electronic Cigarettes Hold Promise As Aid to Quitting</a></p>
<p><br /><a title=\"Effect of an ENDD\" href=\"http://www.ncbi.nlm.nih.gov/pubmed/20378585\" target=\"_blank\">→ Effect of an ENDD (e-cigarette) on desire to smoke and Withdrawal - randomized cross-over trial</a></p>
<p>&nbsp;</p>
<p><a title=\"Patti Chiari\" href=\"http://www.rsi.ch/pattichiari/node/4513\" target=\"_blank\">→ Patti Chiari</a><br /><br /><strong>Studi scientifici</strong><br /><strong><a title=\"The Lancet 2013, Sept 9; Electronic cigarettes\" href=\"/media_xignis/navi_3/lancetecigarettessept2013.pdf\" target=\"_blank\">→The Lancet 2013, Sept 9; Electronic cigarettes</a> </strong><br /> &nbsp;</p>","<p style=\"text-align: center;\"><a href=\"/media_xignis/navi_3/news2012sotposter1861.pdf\" target=\"_blank\"><img class=\"intro\" style=\"border: 0px currentColor;\" src=\"/cmsml/media_xignis/navi_3/_thumbs/th_news2012sotposter.png\" alt=\"\" width=\"400\" height=\"300\" /></a><a href=\"/media_xignis/navi_3/news2012sotposter1861.pdf\" target=\"_blank\"><br /></a></p>
<p style=\"text-align: center;\"><a href=\"/beta56/cmsml/media_xignis/navi_3/news2012sotposter1861.pdf\" target=\"_blank\">PDF Datei öffnen</a></p>
<p>&nbsp;</p>","<p><a href=\"/media_xignis/navi_3/news2012sotposter1861.pdf\" target=\"_blank\"><img class=\"intro\" style=\"border: 0px currentColor;\" src=\"/cmsml/media_xignis/navi_3/_thumbs/th_news2012sotposter.png\" alt=\"\" width=\"400\" height=\"300\" /></a></p>
<p style=\"text-align: center;\"><a href=\"/beta56/cmsml/media_xignis/navi_3/news2012sotposter1861.pdf\" target=\"_blank\">Open PDF File</a></p>
<p>&nbsp;</p>","<p><a href=\"/media_xignis/navi_3/news2012sotposter1861.pdf\" target=\"_blank\"><img class=\"intro\" style=\"border: 0px currentColor;\" src=\"/cmsml/media_xignis/navi_3/_thumbs/th_news2012sotposter.png\" alt=\"\" width=\"400\" height=\"300\" /></a></p>
<p style=\"text-align: center;\"><a href=\"/beta56/cmsml/media_xignis/navi_3/news2012sotposter1861.pdf\" target=\"_blank\">Ouvrir le fichier PDF</a></p>
<p>&nbsp;</p>","<p><a href=\"/media_xignis/navi_3/news2012sotposter1861.pdf\" target=\"_blank\"><img class=\"intro\" style=\"border: 0px currentColor;\" src=\"/cmsml/media_xignis/navi_3/_thumbs/th_news2012sotposter.png\" alt=\"\" width=\"400\" height=\"300\" /></a></p>
<p style=\"text-align: center;\"><a href=\"/beta56/cmsml/media_xignis/navi_3/news2012sotposter1861.pdf\" target=\"_blank\">Aprire il file PDF</a></p>
<p>&nbsp;</p>","../gifs/blank.gif","n");
INSERT INTO cms_seiten VALUES ("5","5","1","1","8","X","Members","members","membres","","",NULL,NULL,NULL,"","","","","",NULL,NULL,NULL,"","n");
INSERT INTO cms_seiten VALUES ("7","7","1","2","2","","Kontakt","contact","contact","contattare","","","","","<p>Haben Sie uns etwas mitzuteilen?</p>
<p>Bitte füllen Sie das untenstehende Formular aus.</p>
<p>Wir werden uns umgehend mit Ihnen in Verbindung setzen.</p>
<p>&nbsp;</p>
<p>Besten Dank für Ihre geschätze Meinung!</p>
<p>mit freundlichen Grüssen</p>
<p>Ihr <strong>TWENTYONE</strong>-Team</p>","<p><span id=\"result_box\" lang=\"en\"><span class=\"hps\">Do you have</span> <span class=\"hps\">something to tell</span> <span class=\"hps\">us</span><span>?</span><br /> <span class=\"hps\">Please</span> <span class=\"hps\">fill out</span> <span class=\"hps\">the form below</span><span>.</span><br /> <span class=\"hps\">We</span> <span class=\"hps\">will get back</span> <span class=\"hps\">to</span> <span class=\"hps\">you shortly.</span><br /><br /> <span class=\"hps\">Thank you</span> <span class=\"hps\">for your</span> valued <span class=\"hps\">opinion</span><span>!</span><br /> <span class=\"hps\">Sincerely yours, your <strong>TWENTYONE</strong> <span id=\"result_box\" class=\"short_text\" lang=\"fr\"><span>Team</span></span><br /></span></span></p>","<p><span lang=\"fr\"><span class=\"hps\">Avez-vous</span> <span class=\"hps\">quelque chose à</span> <span class=\"hps\">nous communiquer</span><span>?</span><br />V</span>euillez s.v.p. remplir le formulaire<span lang=\"fr\"><span class=\"hps\"> ci-dessous</span><span>.</span><br /></span>Nous vous répondrons aussitôt que possible.</p>
<p><span id=\"result_box\" lang=\"fr\"><br /> Nous&nbsp;<span class=\"hps\">vous remercions&nbsp;de</span><span class=\"hps\"> nous faire part de votre </span><span class=\"hps\">avis!</span><br /> <span class=\"hps\">Cordialement</span></span><span id=\"result_box\" lang=\"fr\"><span class=\"hps\"> votre <strong>TWENTYONE</strong><span id=\"result_box\" class=\"short_text\" lang=\"fr\"><span>-Team</span></span><br /></span></span></p>","<p><span id=\"result_box\" lang=\"it\"><span class=\"hps\">Avete</span> <span class=\"hps\">qualcosa da dirci</span><span>?</span><br /><span>Si prega di compilare il modulo sottostante.</span><br /> <span class=\"hps\">Vi risponderemo</span> <span class=\"hps\">al più presto.</span><br /><br /> <span class=\"hps\">Grazie per la vostra</span> <span class=\"hps\">stima</span> <span class=\"hps\">opinione!</span><br /> <span class=\"hps\">Cordiali saluti il vostro <strong>TWENTYONE</strong><span id=\"result_box\" class=\"short_text\" lang=\"fr\"><span>-Team</span></span><br /></span></span></p>","","","","","../../media_xignis/navi_7/_thumbs/th_waserwartetdich2017.png","n");
INSERT INTO cms_seiten VALUES ("11","11","1","2","0","","wie funktioniert TWENTYONE?","how works TWENTYONE?","comment fonctionne TWENTYONE?","come funziona TWENTYONE?","","","","","<p><strong>TWENTYONE</strong> E-Zigaretten basieren auf der vom Pharmazeuten<span style=\"text-decoration: underline;\"><strong> <a title=\"Hon LIk\" href=\"http://patentscope.wipo.int/search/en/result.jsf?query=ALLNAMES%3A%28Hon+Lik%29&amp;maxRec=6&amp;filter=HON%2C+Lik&amp;filterField=INF_M&amp;prevFilter\" target=\"_blank\" rel=\"noopener noreferrer\">Hon Lik</a></strong></span>, entwickelten Technologie, f&uuml;r welche weltweit mehrere&nbsp;Patente erteilt wurden, bzw. h&auml;ngig sind.</p>
<p>&nbsp;</p>
<p><strong>TWENTYONE</strong> E-Zigaretten simulieren das Rauchen von Zigaretten, erzeugen aber bloss Wasserdampf statt Rauch und vermitteln so ein ans Rauchen erinnerndes Genusserlebnis.</p>
<p>&nbsp;</p>
<p>Eine gebrauchsfertige <strong>TWENTYONE</strong> E-Zigarette entspricht in etwa bis zu 40 herk&ouml;mmlichen Zigaretten. Die genaue Dampfdauer ist abh&auml;ngig vom Volumen der einzelnen Z&uuml;ge.</p>
<p>&nbsp;<br /> Die nicht mehr verwendete <strong>TWENTYONE</strong> mit den <a title=\"Batterien\" href=\"http://www.inobat.ch/de/index.php\" target=\"_blank\" rel=\"noopener noreferrer\">Batterien</a> entsorgen.</p>
<p><iframe src=\"//www.youtube.com/embed/bWe8PRsW4T0\" width=\"400\" height=\"224\" allowfullscreen=\"allowfullscreen\"></iframe></p>
<p>Last edited on&nbsp;2017-03-23&nbsp;22:46:27</p>","<p style=\"vertical-align: top;\"><span style=\"color: windowtext; font-family: \'Arial\',\'sans-serif\'; font-size: 10pt; mso-ansi-language: EN-US;\" lang=\"EN-US\"><strong>TWENTYONE</strong> e-cigarettes are a product developed by pharmacist-inventor <a title=\"Hon Lik\" href=\"http://patentscope.wipo.int/search/en/result.jsf?query=ALLNAMES%3A%28Hon+Lik%29&amp;maxRec=6&amp;filter=HON%2C+Lik&amp;filterField=INF_M&amp;prevFilter\" target=\"_blank\">Hon Lik</a>, for which a number of key patents have been applied for and / or granted. </span></p>
<p style=\"vertical-align: top;\">&nbsp;</p>
<p style=\"vertical-align: top;\"><span style=\"color: windowtext; font-family: \'Arial\',\'sans-serif\'; font-size: 10pt; mso-ansi-language: EN-US;\" lang=\"EN-US\"><strong>TWENTYONE</strong> e-cigarettes simulate the smoking of conventional cigarettes except that steam, instead of smoke is generated conveying the sensation and pleasure of conventional smoking.</span></p>
<p style=\"vertical-align: top;\"><span style=\"color: windowtext; font-family: \'Arial\',\'sans-serif\'; font-size: 10pt; mso-ansi-language: EN-US;\" lang=\"EN-US\"><strong>&nbsp;</strong></span>&nbsp;</p>
<p>One ready-to-use <strong>TWENTYONE</strong> e-cigarette is the equivalent of up to 40 conventional cigarettes, is determined by the depth of the drags applied by the user.</p>
<p><br /> Dispose of <strong>TWENTYONE</strong> e-cigarettes that have reached end of life, together with the <a title=\"Inobat\" href=\"http://www.inobat.ch/fr/index.php\" target=\"_blank\">batteries.</a></p>
<p><br /><br /> <br /><br /></p>","<p>Les cigarettes électroniques <strong>TWENTYONE</strong> sont basées sur la technologie développée par le pharmacien <a title=\"Hon Lik\" href=\"http://patentscope.wipo.int/search/fr/result.jsf?query=ALLNAMES%3A%28Hon+Lik%29&amp;maxRec=6&amp;filter=HON%2C+Lik&amp;filterField=INF_M&amp;prevFilter\" target=\"_blank\">Hon Lik</a>, pour laquelle de nombreux brevets ont été attribués ou ont été déposés.<br /><br />Les cigarettes électroniques <strong>TWENTYONE</strong> simulent la fumée des cigarettes, mais ne produisent que de la vapeur d\'eau au lieux de la fumée et procurent la sensation de fume une vrai cigarette. <br /><br /> Une TWENTYONE prête à l\'emploi correspond à environ 40 cigarettes conventionnelles. La durée&nbsp;de vapoter&nbsp;exacte dépend du volume des bouffées.</p>
<p>&nbsp;</p>
<p><a title=\"Inobat\" href=\"http://www.inobat.ch/fr/index.php\" target=\"_blank\">Recyclage</a> de la <strong>TWENTYONE </strong>épuisée&nbsp;avec les piles usagées.&nbsp;&nbsp;&nbsp;</p>","<p><strong>TWENTYONE</strong> non genera fumo tossico, di consequenza, neppure fumo passivo, bensì solamente vapore acqueo.</p>
<p><br />Le e-cigarette <strong>TWENTYONE</strong> si basano&nbsp;sulla tecnologia che ha inventata&nbsp;<a title=\"Hon Lik \" href=\"http://patentscope.wipo.int/search/en/result.jsf?query=ALLNAMES%3A%28Hon+Lik%29&amp;maxRec=6&amp;filter=HON%2C+Lik&amp;filterField=INF_M&amp;prevFilter\" target=\"_blank\">Hon Lik</a>, un farmacologo, e della quale ha ottenuto diversi brevetti.</p>
<p>&nbsp;</p>
<p>La e-cigaretta <strong>TWENTYONE </strong>simula una vera sigaretta, al posto di fumo emette pero’ solo vapore acqueo regalando cosi al fumatore la sensazione vera di fumare.&nbsp;&nbsp;</p>
<p>&nbsp;</p>
<p>Una e-cigaretta<strong>TWENTYONE </strong>corrisponde a circa 40 sigarette (c.a. 400 tiri).La durata pero’ dipende principalmente dal volume di tiri del singolo individuo.</p>","<p><iframe src=\"//www.youtube.com/embed/bWe8PRsW4T0\" width=\"400\" height=\"224\" allowfullscreen=\"allowfullscreen\"></iframe></p>
<table style=\"height: 62px;\" border=\"1\" width=\"277\" cellspacing=\"1\">
<tbody>
<tr>
<td style=\"width: 49.8295px;\">1</td>
<td style=\"width: 49.8295px;\">2</td>
<td style=\"width: 49.8295px;\">3</td>
<td style=\"width: 49.8295px;\">4</td>
<td style=\"width: 50.7386px;\">5</td>
</tr>
<tr>
<td style=\"width: 49.8295px;\">6</td>
<td style=\"width: 49.8295px;\">7</td>
<td style=\"width: 49.8295px;\">8</td>
<td style=\"width: 49.8295px;\">9</td>
<td style=\"width: 50.7386px;\">10</td>
</tr>
<tr>
<td style=\"width: 49.8295px;\">11</td>
<td style=\"width: 49.8295px;\">12</td>
<td style=\"width: 49.8295px;\">13</td>
<td style=\"width: 49.8295px;\">14</td>
<td style=\"width: 50.7386px;\">15</td>
</tr>
</tbody>
</table>
<p>&nbsp;</p>","","","","../../media_xignis/navi_1_20/_thumbs/th_packshots.png","n");
INSERT INTO cms_seiten VALUES ("12","12","1","1","0","","das ist der Unterschied!","what\'s the difference?","quelle est la différence?","qual é la differenza?","","","","","<p>Die<strong> TWENTYONE, </strong>die in unvergleichlicher Weise Sicherheit und Genuss vereint, basiert auf der patentierten Technologie des Erfinders&nbsp;<strong><a title=\"Hon Lik\" href=\"http://patentscope.wipo.int/search/en/result.jsf?query=ALLNAMES%3A%28Hon+Lik%29&amp;maxRec=6&amp;filter=HON%2C+Lik&amp;filterField=INF_M&amp;prevFilter\" target=\"_blank\">Hon Lik</a>,</strong> welche zu unzähligen Imitationen inspirierte, aber in Ihrer Qualität letztlich unerreicht bleibt.&nbsp;&nbsp;<strong></strong></p>
<p><strong></strong>&nbsp;</p>
<p><strong> TWENTYONE</strong> E-Zigaretten sehen aus wie herkömmliche Zigaretten und vermitteln das Gefühl zu rauchen, jedoch ohne Rauch und Teer zu erzeugen, weil keine Verbrennung stattfindet. Sie stellen somit eine genussvolle Alternative für Raucher dar, die einen gesünderen Lebensstil anstreben.</p>
<p>&nbsp;</p>
<p>Die gebrauchsfertige, d.h. bereits mit Strom geladene, <strong>TWENTYONE</strong> besteht aus einem einzigen Stück und erweist sich daher als sehr benutzerfreundlich. <br /><br /></p>
<p>&nbsp;</p>
<p>&nbsp;</p>
<p>&nbsp;</p>
<p>&nbsp;</p>","<p style=\"vertical-align: top;\"><span style=\"color: windowtext; font-family: \'Arial\',\'sans-serif\'; font-size: 10pt; mso-ansi-language: EN-US;\" lang=\"EN-US\"><strong>TWENTYONE</strong> e-cigarettes resemble conventional cigarettes and emulate the sensation of smoking without however producing smoke or tar since no combustion takes place. They, therefore, represent an enjoyable alternative for smokers striving for a healthier life style.</span></p>
<p><br /> The ready-to-use (pre-charged) <strong>TWENTYONE</strong> e-cigarette consists of a single piece thus proving to be very user-friendly.</p>","<p>Les cigarettes électroniques TWENTYONE sont basées sur une technologie brevetée,&nbsp;qui connaît d\'innombrables imitations, mais qui reste toutefois inégalée.</p>
<p><br /> Les cigarettes électroniques <strong>TWENTYONE </strong>ressemblent à des cigarettes conventionnelles et permettant de simuler&nbsp;l’action de fumer sans pourtant engendrer ni&nbsp;de la fumée nocive ni&nbsp;du goudron car il n\'y a pas de&nbsp;combustion. C\'est sans doute l\'aspect le plus important qui fait de<strong> TWENTYONE </strong>une alternative judicieuse pour un fumeur qui n’est pas prêt à renoncer à la jouissance de la cigarette.</p>
<p>&nbsp;<br />La cigarette électronique&nbsp;<strong>TWENTYONE</strong> prête à l\'emploi, c\'est à dire chargée d\'électricité, consiste en une seule pièce ce qui la rend donc très facile à utiliser.</p>","<p>La <strong>TWENTYONE</strong> trasmette senza uguali gusto e sicurezza, si basa su una tecnologia patentata dall\'inventore Hon Lik, copiata da innumerevoli altri prodotti simili, ma irraggiungibile nella sua qualità.&nbsp;<br /> <br /> La e-cigaretta <strong>TWENTYONE</strong> assomigliano a sigarette convenzionali e trasmettono la sensazione di fumare realmente, senza pero\' emanare fumo e produrre catrame perché non vi è il processo della combustione.&nbsp;<br /><br />La<strong> TWENTYONE</strong> e-sigaretta&nbsp;si presenta come reale alternativa ai fumatori che vogliono vivere sani ma sentono il bisogno di<strong> fumare.&nbsp;</strong><br />&nbsp;<strong><span style=\"color: black; font-family: \'Times\',\'serif\'; font-size: 11pt; mso-fareast-font-family: Times; mso-fareast-language: DE-CH; mso-ansi-language: DE; mso-bidi-language: AR-SA; mso-bidi-font-family: \'Times New Roman\';\" lang=\"DE\">&nbsp;</span></strong><br /> L<span style=\"color: black; line-height: 115%; font-family: \'Microsoft Sans Serif\',\'sans-serif\'; font-size: 10pt; mso-bidi-font-weight: bold; mso-fareast-font-family: Calibri; mso-fareast-theme-font: minor-latin; mso-fareast-language: EN-US; mso-ansi-language: DE-CH; mso-bidi-language: AR-SA;\">a <strong>TWENTYONE</strong>&nbsp;é pronta all\'uso essendo la batteria&nbsp;gia\' caricata, é composta da un unico pezzo ed é quindi estremamente facile da usare.</span></p>
<p>&nbsp;<br />&nbsp;</p>
<p>&nbsp;</p>
<p>&nbsp;</p>
<p>&nbsp;</p>
<p>&nbsp;</p>","","","","","../../media_xignis/navi_1_30/_thumbs/th_packshots.png","n");
INSERT INTO cms_seiten VALUES ("19","19","1","1","0","","weshalb TWENTYONE wählen?","why choose TWENTYONE?","pourquoi choisir TWENTYONE?","perché scegliere TWENTYONE?","","","","","<p><strong>TWENTYONE</strong> erf&uuml;llt die vom Bundesamt f&uuml;r Gesundheit (BAG) gestellten Anforderungen und wird kontinuierlich von unabh&auml;ngigen, ISO-zertifizierten Labors in der Schweiz gepr&uuml;ft.&nbsp;</p>
<p>&nbsp;</p>
<p>Die Inhalationsfl&uuml;ssigkeit von <strong>TWENTYONE</strong>, welche aus einer mit Lebensmittel-aromen,&nbsp;versetzten Mischung&nbsp; aus Propylenglykol und &nbsp;Glycerin - beides in Pharmaqualit&auml;t - besteht,&nbsp;wurde umfangreichen Sicherheitspr&uuml;fungen unterzogen:<a href=\"http://www.healthnz.co.nz/RuyanCartridgeReport30-Oct-08.pdf\" target=\"_blank\" rel=\"noopener noreferrer\"> &rarr; Health NEW ZEALAND Ltd (Research and policy advice to reduce heart disease, cancer and smoking)</a></p>
<p><br /> <strong>TWENTYONE</strong> e-Zigaretten entsprechen den <strong><span style=\"text-decoration: underline;\">CE</span>- </strong>und <span style=\"text-decoration: underline;\"><strong>RoHS</strong></span>-Richtlinien mit den entsprechenden Bescheinigungen durch die internationale Warenpr&uuml;fer.&nbsp; <br /><br /></p>
<p><strong>TWENTYONE</strong> E-Zigaretten sind schweizweit in Apotheken und Drogerien erh&auml;ltlich.</p>
<p>&nbsp;</p>
<p>&nbsp;</p>","<p><strong>TWENTYONE </strong>e-cigarettes&nbsp;are fully compliant with the requirements of the Swiss Federal Office of Public Health. Its quality is continuously monitored by an ISO-certified independent laboratory.</p>
<p style=\"vertical-align: top;\"><br /><span style=\"line-height: 115%; font-family: \'Microsoft Sans Serif\',\'sans-serif\'; font-size: 10pt; mso-fareast-font-family: Calibri; mso-fareast-theme-font: minor-latin; mso-ansi-language: EN-US; mso-fareast-language: EN-US; mso-bidi-language: AR-SA;\" lang=\"EN-US\">The liquid of <strong>TWENTYONE</strong> e-cigarettes, a blend consisting of flavors, pharmaceutical grade propylene glycol and glycerol, has been subjected to extensive safety evaluations.&nbsp;</span><strong>→ <a href=\"http://www.healthnz.co.nz/RuyanCartridgeReport30-Oct-08.pdf\" target=\"_blank\">Health NEW ZEALAND Ltd (Research and policy advice to reduce heart disease, cancer and smoking)</a><br /></strong>&nbsp;&nbsp;</p>
<p><strong>TWENTYONE</strong> e-cigarettes are compliant with <a title=\"CE Mark\" href=\"http://www.sgs.ch/en/Agriculture-Food/Project-Life-Cycle-Services/Services-During-Construction-and-Commissioning/Services-Related-to-Machinery-and-Equipment/CE-Marking.aspx\" target=\"_blank\">CE</a> and <a title=\"RoHS\" href=\"http://www.sgs.ch/en/Agriculture-Food/Quality-Health-Safety-and-Environment/Product-Safety/Hazardous-Substances/RoHS-Certificate-of-Conformity-CoC.aspx\" target=\"_blank\">RoHS</a>&nbsp;directives, which has been verified by <a title=\"SGS\" href=\"http://www.sgs.ch/en\" target=\"_blank\">SGS</a>&nbsp;&nbsp;&nbsp;</p>
<p>&nbsp;</p>
<p><strong>TWENTYONE</strong> e-cigarettes are available in pharmacies.</p>","<p><strong>TWENTYONE</strong> répond aux exigences de l\'Office fédérale de la Santé publique (OFSP) et est soumis à des contrôles de qualité permanents et analysé en Suisse par les laboratoires indépendants, certifiés selon les normes ISO.</p>
<p>&nbsp;</p>
<p>Le liquide d\'inhalation de <strong>TWENTYONE</strong>&nbsp;qui se&nbsp;compose de glycérine et de propylène glycol en qualité pharmaceutique et d\'arôme, a été soumis à de vastes examens de sûreté:&nbsp;&nbsp;→ <a href=\"http://www.healthnz.co.nz/RuyanCartridgeReport30-Oct-08.pdf\" target=\"_blank\">Health NEW ZEALAND Ltd&nbsp;(Research and policy advice to reduce&nbsp;heart disease, cancer and smoking)</a></p>
<p>&nbsp;</p>
<p>Les e-cigarettes<strong> TWENTYONE</strong> correspondent aux directives CE&nbsp;et RoHS et sont sous surveillance de&nbsp;<span style=\"text-decoration: underline;\"><a title=\"sgs\" href=\"http://www.sgs.ch/fr-FR/\" target=\"_blank\">SGS</a></span>.</p>
<p>&nbsp;</p>
<p>Les cigarettes électroniques <strong>TWENTYONE</strong> sont en vente dans les pharmacies en Suisse.</p>
<p>&nbsp;</p>
<p>&nbsp;</p>","<p><strong>TWENTYONE</strong> risponde alle esigenze del Ufficio federale della sanità pubblica (UFSP) ed è sottoposta a controlli di qualità costanti. Viene analizzata da laboratori svizzeri indipendenti certificati ISO. &nbsp;</p>
<p>Il liquido che viene inalato dalla <strong>TWENTYONE</strong>, composto da aromi provenienti dalla produzione di alimentari, per esempio il mentolo che viene mischiato con Propylenglicole e glicerina- entrambi con qualita‘ farmaceutiche - vengono controllate&nbsp; e verificate da ricerche molto rigorose. <a href=\"http://www.healthnz.co.nz/RuyanCartridgeReport30-Oct-08.pdf\" target=\"_blank\">&nbsp;→ Health NEW ZEALAND Ltd (Research and policy advice to reduce heart disease, cancer and smoking)</a><br /><br /> <strong></strong> La e –cigaretta&nbsp; <strong>TWENTYONE</strong> corrisponde alle normative <strong><a title=\"CE-Kennzeichnung\" href=\"http://www.sgs.ch/it-IT/Agriculture-Food/Project-Life-Cycle-Services/Services-During-Construction-and-Commissioning/Services-Related-to-Machinery-and-Equipment/CE-Marking.aspx\" target=\"_blank\">CE</a></strong>&nbsp;e <strong><a title=\"RoHs kennzeichnung\" href=\"http://www.sgs.ch/it-IT/Agriculture-Food/Quality-Health-Safety-and-Environment/Product-Safety/Hazardous-Substances/RoHS-Certificate-of-Conformity-CoC.aspx\" target=\"_blank\">RoHS</a> </strong>con corrispondente certificazione <a title=\"sgs\" href=\"http://www.sgs.ch/it-IT/Agriculture-Food/Project-Life-Cycle-Services/Services-During-Construction-and-Commissioning/Services-Related-to-Machinery-and-Equipment/CE-Marking.aspx\"><strong>SGS</strong></a><a title=\"SGS\" href=\"http://www.sgs.ch/it-IT/\"><strong>.</strong></a><br />&nbsp;</p>
<p>La e –cigaretta <strong>TWENTYONE</strong> viene prodotta presso gli stabilimenti farmaceutici dall’inventore proprietario die brevetti, industria certificata ISO.</p>
<p>&nbsp;</p>
<p>La e-cigaretta <strong>TWENTYONE</strong> si acquista nelle farmacie e nelle drogherie</p>
<p><strong>&nbsp;</strong><strong><br /></strong>&nbsp;</p>
<p>&nbsp;</p>","<p>Und was ist, wenn ich hier auch noch Text eingebe?<br />Erscheint der oberhalb des Bildes?</p>
<p>und noch einen Text in Deutsch</p>
<p>schauen sie doch mal auf der Website von <a href=\"http://www.hempenweb.ch\" target=\"_blank\" rel=\"noopener noreferrer\">hempenweb </a>nach</p>","","","","../../media_xignis/navi_1_30/_thumbs/th_packshots.png","n");
INSERT INTO cms_seiten VALUES ("20","20","1","4","7","","Partner","partners","partenaires","partner","","","","","<p>Legende: <img src=\"http://labs.google.com/ridefinder/images/mm_20_blue.png\" alt=\"\" /> Partner mit TWENTYONE von Xignis&reg; Direktverkauf&nbsp; <img src=\"http://labs.google.com/ridefinder/images/mm_20_red.png\" alt=\"\" /> Partner mit zus&auml;tzlichem Online-Shop.</p>
<p>- Klicken Sie auf einen roten oder blauen Tropfen, um n&auml;here Informationen zu erhalten.</p>
<p>- Schr&auml;nken Sie das Resultat ein, indem Sie mittels Postleitzahl oder Ortsname suchen.</p>
<p>- Doppelklicken Sie auf die Karte, um den Kartenausschnitt heran zu zoomen.</p>
<p>&nbsp;</p>","<p>Legend: <img src=\"http://labs.google.com/ridefinder/images/mm_20_blue.png\" alt=\"\" /> Partners selling TWENTYONE by Xignis® directly <img src=\"http://labs.google.com/ridefinder/images/mm_20_red.png\" alt=\"\" /> Partners with additional online-shop</p>
<p>ཿ Click on the red or blue droplet to get more informations.</p>
<p>ཿ <span id=\"result_box\" lang=\"en\"><span class=\"hps\">Limit</span> <span class=\"hps\">the result </span><span class=\"hps\">by searching</span> <span class=\"hps\">by</span> <span class=\"hps\">postcode or</span> <span class=\"hps\">name of&nbsp; a location<br /></span></span></p>
<p>ཿ Doubbleclick on the map to zoom in.</p>
<p>&nbsp;</p>","<p>Légende: <img src=\"http://labs.google.com/ridefinder/images/mm_20_blue.png\" alt=\"\" /> <span id=\"result_box\" lang=\"fr\"><span class=\"hps\">Partenaires</span> ayant TWENTYONE de Xignis en<span class=\"hps\"> vente directe</span></span> <img src=\"http://labs.google.com/ridefinder/images/mm_20_red.png\" alt=\"\" /> Parteneraires offrant TWENTYONE aussi en <span id=\"result_box\" lang=\"fr\"><span class=\"hps\">ligne</span></span></p>
<p>ཿ <span id=\"result_box\" lang=\"fr\"><span class=\"hps\">Cliquez sur</span> <span class=\"hps\">les gouttes</span> <span class=\"hps\">rouges</span> <span class=\"hps\">ou bleu</span> <span class=\"hps\">afin d\'obtenir</span> <span class=\"hps\">des informations plus détaillées</span></span>.</p>
<p>ཿ <span id=\"result_box\" lang=\"fr\"><span class=\"hps\">Limiter le résultat</span> <span class=\"hps\">en</span> <span class=\"hps\">effectuant une recherche par</span> <span class=\"hps\">code postal ou</span> <span class=\"hps\">nom de la ville</span></span>.</p>
<p>ཿ <span id=\"result_box\" lang=\"fr\"><span class=\"hps\">Double-cliquez</span> <span class=\"hps\">sur la carte</span> <span class=\"hps\">pour zoomer sur</span> <span class=\"hps\">la carte</span> <span class=\"hps\">de l\'approche</span><span>.</span></span></p>
<p>&nbsp;</p>","<p>Legenda: <img src=\"http://labs.google.com/ridefinder/images/mm_20_blue.png\" alt=\"\" /><span id=\"result_box\" lang=\"it\"> <span class=\"hps\">Partners</span> <span class=\"hps\">con vendita diretta di TWENTYONE&nbsp;</span></span> <img src=\"http://labs.google.com/ridefinder/images/mm_20_red.png\" alt=\"\" /> Partners che fanno anche&nbsp;<span id=\"result_box\" class=\"hps\" lang=\"it\"><span class=\"hps\">vendita online</span></span></p>
<p>ཿ <span id=\"result_box\" lang=\"it\"><span class=\"hps\">Clicca su</span> <span class=\"hps\">alcune gocce</span> <span class=\"hps\">rosse</span> <span class=\"hps\">o blu </span><span class=\"alt-edited\">per</span> <span class=\"hps\">ottenere informazioni più dettagliate</span></span>.</p>
<p>ཿ <span id=\"result_box\" lang=\"it\"><span class=\"hps\">Limitare il risultato</span> e<span class=\"hps\">ffettuando la ricerca</span> <span class=\"hps\">per codice</span> <span class=\"hps\">postale o</span> <span class=\"hps\">il nome della città.</span></span></p>
<p>ཿ <span id=\"result_box\" lang=\"it\"><span class=\"hps\">Doppio click</span> <span class=\"hps\">sulla mappa</span> <span class=\"hps\">per ingrandire</span> <span class=\"hps\">l\'approccio</span> <span class=\"hps\">mappa</span></span>.</p>
<p>&nbsp;</p>","<p><iframe src=\"//www.youtube.com/embed/bWe8PRsW4T0\" width=\"560\" height=\"314\" allowfullscreen=\"allowfullscreen\"></iframe></p>","","","","","n");
INSERT INTO cms_seiten VALUES ("21","21","1","4","0","","Nach Hause","home","home","home","","","","","<p><img style=\"margin: 0px; vertical-align: middle;\" src=\"/cmsml/media_xignis/intro/de_intro.jpg\" alt=\"\" width=\"100%\" height=\"100%\" /></p>","<p><img class=\"intro\" style=\"margin: 0px;\" src=\"/cmsml/media_xignis/intro/en_intro.jpg\" alt=\"\" width=\"1149\" height=\"862\" /></p>","<p><img class=\"intro\" style=\"vertical-align: top; margin: 0px;\" src=\"/cmsml/media_xignis/intro/fr_intro.jpg\" alt=\"\" width=\"1149\" height=\"862\" /></p>","<p><img class=\"intro\" style=\"vertical-align: top; margin: 0px;\" src=\"/cmsml/media_xignis/intro/it_intro.jpg\" alt=\"\" width=\"1149\" height=\"862\" /></p>","","","","","../gifs/blank.gif","n");
INSERT INTO cms_seiten VALUES ("22","22","1","3","1","","Produkte 2","Products 2","Produits 2","Prodotti 2","","","","","","","","","","","","","","n");



# ----------------------------------------------------------
#
# Struktur von Tabelle 'cms_spezial'
#
DROP TABLE IF EXISTS cms_spezial;
CREATE TABLE cms_spezial (
    thema char(40) NOT NULL,
    name char(25) NOT NULL,
    wert1 char(25) NOT NULL,
    wert2 char(25),
    wert3 char(25),
    aktiv set('j','n') DEFAULT "j" NOT NULL,
   PRIMARY KEY (thema, name, wert1)
);

#
# Daten von Tabelle 'cms_spezial'
#
INSERT INTO cms_spezial VALUES ("xignis","LANG1","DE","de","deutsch","j");
INSERT INTO cms_spezial VALUES ("xignis","LANG2","FR","fr","français","j");
INSERT INTO cms_spezial VALUES ("xignis","LANG3","IT","it","italiano","j");
INSERT INTO cms_spezial VALUES ("xignis","LANG4","EN","en","english","j");
INSERT INTO cms_spezial VALUES ("xignis","M1","120","120",NULL,"n");
INSERT INTO cms_spezial VALUES ("xignis","M2","400","300",NULL,"n");



# ----------------------------------------------------------
#
# Struktur von Tabelle 'cms_templates'
#
DROP TABLE IF EXISTS cms_templates;
CREATE TABLE cms_templates (
    id tinyint(3) NOT NULL auto_increment,
    template_id tinyint(3) unsigned NOT NULL,
    template_name varchar(40) DEFAULT "zweispaltig_340_420_tpl.html" NOT NULL,
    template_descr varchar(125),
    thumbsize char(10) NOT NULL,
   PRIMARY KEY (id)
);

#
# Daten von Tabelle 'cms_templates'
#
INSERT INTO cms_templates VALUES ("4","1","zweispaltig_400b_400t_tpl.html","zweispaltig_400_400_tpl.html - 1. Spalte Bild, 2. Spalte Text","400x400");
INSERT INTO cms_templates VALUES ("7","3","einspaltig_760v_tpl.html","einspaltig_760v_tpl.html - 1. Spalte Text, 2. Spalte Thumbnails","100x100");
INSERT INTO cms_templates VALUES ("10","4","einspaltig_900_nur_text_tpl.html","einspaltig_900_nur_text_tpl.html - Einspaltig, nur Text, 900 Pixel breit","");
INSERT INTO cms_templates VALUES ("12","2","zweispaltig_400t_400b_tpl.html","zweispaltig_400_400_tpl.html - 1. Spalte Text, 2. Spalte Bild","400x400");



# ----------------------------------------------------------
#
# Struktur von Tabelle 'cms_users'
#
DROP TABLE IF EXISTS cms_users;
CREATE TABLE cms_users (
    id tinyint(4) NOT NULL auto_increment,
    username varchar(32) NOT NULL,
    password varchar(32) NOT NULL,
    menu char(10) DEFAULT "NUBD" NOT NULL,
   PRIMARY KEY (id),
   KEY username (username)
);

#
# Daten von Tabelle 'cms_users'
#
INSERT INTO cms_users VALUES ("1","hempen","e9911456f39b5e6d738669ac8d438b20","NUFAMKLBD");
INSERT INTO cms_users VALUES ("2","webprog10","a3e6096dbe9169213e7880821129428e","NUBD");
INSERT INTO cms_users VALUES ("3","irma","3fd34f70b2f2899e819861a6e4570e60","NUFABD");


