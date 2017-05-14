#----------------------------------------------
# Backup der Datenbank cms_xignis_ml
# Erstellt am 02.04.2017 21:00
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
INSERT INTO cms_fragmente VALUES ("6","Neues Fragment","5","");



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
INSERT INTO cms_galerien VALUES ("41","1","1","N","../../media_xignis/navi_1/_images/bgheader.png","",NULL,NULL,NULL);
INSERT INTO cms_galerien VALUES ("45","1","1","","../../media_xignis/navi_40001/_images/julian winzeler.jpg","",NULL,NULL,NULL);
INSERT INTO cms_galerien VALUES ("61","3","1","N","../../media_xignis/navi_3/_images/news2012sotposter.png","Diese Datei können Sie nebenstehend als Pdf öffnen","","","");
INSERT INTO cms_galerien VALUES ("69","1","1","P","../../media_xignis/navi_220001/_images/thpackshots.png","","","","");
INSERT INTO cms_galerien VALUES ("70","2","1","P","../../media_xignis/navi_220002/_images/thpackshots.png","","","","");
INSERT INTO cms_galerien VALUES ("71","3","1","P","../../media_xignis/navi_220003/_images/thpackshots.png","","","","");
INSERT INTO cms_galerien VALUES ("73","1","2","P","../../media_xignis/navi_220001/_images/waserwartetdich2017.png","","","","");
INSERT INTO cms_galerien VALUES ("74","7","1","N","../../media_xignis/navi_7/_images/waserwartetdich2017.png","","","","");
INSERT INTO cms_galerien VALUES ("75","1","2","N","../../media_xignis/navi_1/_images/logo-enjoy-transp.png","","","","");
INSERT INTO cms_galerien VALUES ("76","19","1","N","../../media_xignis/navi_1_30/_images/packshots.png","","","","");
INSERT INTO cms_galerien VALUES ("77","19","2","N","../../media_xignis/navi_1_30/_images/theoriginal1weiss.png","","","","");
INSERT INTO cms_galerien VALUES ("78","11","1","N","../../media_xignis/navi_1_20/_images/packshots.png","","","","");
INSERT INTO cms_galerien VALUES ("79","11","2","N","../../media_xignis/navi_1_20/_images/theoriginal1weiss.png","","","","");
INSERT INTO cms_galerien VALUES ("80","12","1","N","../../media_xignis/navi_1_30/_images/packshots.png","","","","");
INSERT INTO cms_galerien VALUES ("81","12","2","N","../../media_xignis/navi_1_30/_images/theoriginal1weiss.png","","","","");
INSERT INTO cms_galerien VALUES ("82","3","2","N","../../media_xignis/navi_3/_images/mcith","","","","");
INSERT INTO cms_galerien VALUES ("83","7","2","N","../../media_xignis/navi_7/_images/classictobaccoweiss.png","","","","");



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
INSERT INTO cms_members VALUES ("7","hempen@bluewin.ch","e9911456f39b5e6d738669ac8d438b20","2012-06-11 20:21:37","2017-03-31 19:17:12");
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
INSERT INTO cms_navigation VALUES ("1","navi_1","2","0","Produkte","products","les produits","i prodotti","Produkte","products","lesproduits","iprodotti","navi_1","j","n","H");
INSERT INTO cms_navigation VALUES ("3","navi_3","4","0","Publikationen","publications","publications","pubblicazioni","Publikationen","publications","publications","pubblicazioni","navi_3","j","n","H");
INSERT INTO cms_navigation VALUES ("5","navi_5","5","0","Members","members","membres","membri","Members","members","membres","membri","navi_5","j","n","H");
INSERT INTO cms_navigation VALUES ("7","navi_6","6","0","Kontakt","contact","contact","contattare","Kontakt","contact","contact","contattare","navi_7","j","n","H");
INSERT INTO cms_navigation VALUES ("11","navi_1","2","20","wie funktioniert TWENTYONE?","how works TWENTYONE?","comment fonctionne TWENTYONE?","come funziona TWENTYONE?","wiefunktioniertTWENT","howworksTWENTYONE?","commentfonctionneTWE","comefunzionaTWENTYON","navi_1_20","j","n","H");
INSERT INTO cms_navigation VALUES ("12","navi_1","2","30","das ist der Unterschied!","what\'s the difference?","quelle est la différence?","qual é la differenza?","dasistderUnterschied","what\'sthedifference?","quelleestladifféren","qualéladifferenza?","navi_1_30","j","n","H");
INSERT INTO cms_navigation VALUES ("19","navi_1","2","10","weshalb TWENTYONE wählen?","why choose TWENTYONE?","pourquoi choisir TWENTYONE?","perché scegliere TWENTYONE?","weshalbTWENTYONEwäh","whychooseTWENTYONE?","pourquoichoisirTWENT","perchéscegliereTWEN","navi_1_30","j","n","H");
INSERT INTO cms_navigation VALUES ("20","navi_20","3","0","Partner","partners","partenaires","partner","Partner","partners","partenaires","partner","navi_20","j","n","H");
INSERT INTO cms_navigation VALUES ("21","navi_21","1","0","Nach Hause","home","home","home","NachHause","home","home","home","navi_21","j","j","H");
INSERT INTO cms_navigation VALUES ("22","navi_22","7","0","Produkte 2","Products 2","Produits 2","Prodotti 2","Produkte2","Products2","Produits2","Prodotti2","navi_22","j","n","H");
INSERT INTO cms_navigation VALUES ("23","navi_23","8","0","Produkte 3","Copy: Products 2","Copy: Produits 2","Copy: Prodotti 2","Produkte3","Copy: Products 2","Copy: Produits 2","Copy: Prodotti 2","navi_23","n","n","H");
INSERT INTO cms_navigation VALUES ("24","navi_24","9","0","Produkte 4","Copy: Copy: Products 2","Copy: Copy: Produits 2","Copy: Copy: Prodotti 2","Produkte4","Copy: Copy: Products","Copy: Copy: Produits","Copy: Copy: Prodotti","navi_24","n","n","H");
INSERT INTO cms_navigation VALUES ("25","navi_24","9","10","Produkte_4_10","Produkte_4_10","Produkte_4_10","Produkte_4_10","produkte_4_10","produkte_4_10","produkte_4_10","produkte_4_10","navi_24_10","n","n","H");
INSERT INTO cms_navigation VALUES ("26","navi_26","10","0","navi_26","navi_26","navi_26","navi_26","navi_26","navi_26","navi_26","navi_26","navi_26","n","n","H");



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
    kurztext_de varchar(300),
    kurztext_en varchar(300),
    kurztext_fr varchar(300),
    kurztext_it varchar(300),
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
INSERT INTO cms_pages VALUES ("1","22","navi_22","navi_220001","0000-00-00 00:00:00","0000-00-00 00:00:00","weshalb TWENTYONE wählen?","why choose TWENTYONE?","pourquoi choisir TWENTYONE?","perché scegliere TWENTYONE?","Produkte_2","Products_2","Produits_2","Prodotti_2","weshalb TWENTYONE wählen? weshalb TWENTYONE wählen? weshalb TWENTYONE wählen? weshalb TWENTYONE wählen?TWENTYONE wählen? weshalb TWENTYONE wählen? weshalb TWENTYONE wählen? weshalb TWENTYONE wählen? weshalb TWENTYONE wählen?","why choose TWENTYONE?","pourquoi choisir TWENTYONE?","perché scegliere TWENTYONE?","<p><strong>TWENTYONE</strong> E-Zigaretten sind patentgesch&uuml;tzt und werden vom Unternehmen welches die Patente besitzt hergestellt. &nbsp;</p>
<p>&nbsp;</p>
<p><strong>TWENTYONE</strong> liquids basieren auf Propylenglykol und Glycerol welche Pharma-Standards entsprechen. <strong> <br /></strong></p>
<p><strong>&nbsp;</strong></p>
<p><strong>TWENTYONE</strong> erf&uuml;llt die vom Bundesamt f&uuml;r Gesundheit (BAG) gestellten Anforderungen und wird kontinuierlich von unabh&auml;ngigen, ISO-zertifizierten Labors gepr&uuml;ft.</p>","<p><strong>xignis</strong> does not generate harmful smoke, but only an aromatic water vapor.</p>
<p>&nbsp;</p>
<p><strong>xignis </strong>is a high quality product that is fully compliant with the requirements of the Swiss Federal Office of Public Health. Its quality is continuously monitored by an ISO-certified independent laboratory.</p>
<p>&nbsp;</p>
<p><strong>xignis </strong>is more economical that conventional cigarettes.</p>
<p>&nbsp;</p>
<p><strong>xignis</strong> affords you the sensation and pleasure of smoking conventional cigarettes, even in places where smoking is not allowed.</p>","<p><strong>xignis</strong> n\'engendre pas de fum&eacute;e nocive mais seulement de la vapeur d\'eau.</p>
<p>&nbsp;</p>
<p><strong>xignis</strong> r&eacute;pond aux exigences de OFSP et est soumise &agrave; des contr&ocirc;les de qualit&eacute; permantents et est analys&eacute; par les laboratoires ind&eacute;pendants, certifi&eacute;s selons les normes ISO.</p>
<p>&nbsp;</p>
<p><strong>xignis</strong> est nun produit de haute qualit&eacute; dont lutilisation est nettement plus &eacute;conomique par rapport aux cigarettes conventionelles.</p>
<p>&nbsp;</p>
<p><strong>xignis</strong> permet de garder la gestuelle habituelle, le go&ucirc;t et la sensation connue en fumant des cigarettes conventionelles m&ecirc;me &agrave; des endroits, o&ugrave; il est normalement interdit de fumer.</p>","<p><strong>xignis</strong> non genera fumo tossico, di consequenza, neppure fumo passivo, bensì solamente vapore acqueo.</p>
<p>&nbsp;</p>
<p><strong>xignis</strong> risponde alle esigenze del UFSP ed è sottoposta a controlli di qualità permanenti. Viene analizzata da laboratori indipendenti certificati ISO.</p>
<p>&nbsp;</p>
<p><strong>xignis</strong> è un prodotto di eccelente qualità. Il suo utilizzo risulta essere anche più economico rispetto alle sigarette tradizionali.</p>
<p>&nbsp;</p>
<p>Scegliendo<strong> xignis</strong> si può mantenere la gestualità abituale, il gusto e la sensazione conosciuta, come se fumasse delle sigarette tradizionali, anche nei luoghi dove di solito è proibito fumare.</p>","<p><img src=\"/cmsml/media_xignis/header/background/bgheader_blue.png\" alt=\"\" width=\"665\" height=\"300\" /></p>","","","","1","../../media_xignis/navi_220001/_thumbs/th_thpackshots.png","","n","0","0","j","2");
INSERT INTO cms_pages VALUES ("2","22","navi_22","navi_220002","0000-00-00 00:00:00","0000-00-00 00:00:00","wie funktioniert TWENTYONE?","how works xignis?","comment fonctionne xignis?","come funziona xignis?","Produkte_2","Products_2","Produits_2","Prodotti_2","wie funktioniert TWENTYONE?","how works xignis?","comment fonctionne xignis?","come funziona xignis?","<p>Eine Hochleistungs-Lithiumbatterie versorgt den Leuchtindikator sowie die elektronische Steuerung der Zigarette mit elektrischer Energie, welche ihrerseits verschiedene Befehle aussendet. In einem Zerst&auml;uber werden mikroskopisch kleine Aerosolpartikel erzeugt, aus denen schliesslich eine Qualmwolke entsteht.</p>
<p>&nbsp;</p>
<p>Die gebrauchsfertige TWENTYONE E-Zigarette entspricht in etwa bis zu 40 Zigaretten. Die genaue Dampfdauer ist abh&auml;ngig vom Volumen der einzelnen Z&uuml;ge.</p>","<p>The electronic cigarette <strong>xignis</strong> consists of a metal housing containing a rechargeable lithium-ion battery, an atomizer and a cartridge with flavourings.The battery supplies the energy to vaporize the liquid and to light up the LED light. When the user takes a drag on the xignis device the atomizer is activated generating tiny aerosol particles coalescing into vapor puffs.</p>
<p><br />One cartridge will last the equivalent of approximately 8 - 10 conventional cigarettes before needing replacement.</p>","<p>Le fonctionnement d\'<strong>xignis</strong> est assur&eacute; par une batterie au lithium rechargeable &agrave; haute performance, qui alimente la commande &eacute;lectronique ainsi que l\'indicateur lumineux avec de l\'&eacute;nergie. Des particules d\'a&eacute;rosol minuscules, qui forment un nuage, sont produites dans un vaporisateur en nickel &agrave; l\'int&eacute;rieur de l\'appareil.</p>
<p>&nbsp;</p>
<p>Lorsque la quantit&eacute; de vapeur produite&nbsp; commence &agrave; diminuer, il faut remplacer le filtre. Un filtre &eacute;quivaut &agrave; environ 8 &agrave; 10 cigarettes conventionelles.</p>","<p>La sigaretta <strong>xignis</strong> &egrave; alimentata da una batteria al litio ricaricabile ad alta performance, che alimenta il commando elettronico come pure l\'indicatore luminoso.&nbsp;Un atomizzatore composto da nikel produce delle minuscole particelle di aerosol, che a loro volta formano la tipica nuvoletta di vapore.<br /><br />Quando la quantit&agrave; di vapore prodotto inizia a diminuire bisogna sostituire il filtro. Un filtro equivale a circa 8-10 sigarette tradizionali.</p>","<p>%teaser1%</p>","<p>%teaser1%</p>","<p>%teaser1%</p>","<p>%teaser1%</p>","1","../../media_xignis/navi_220002/_thumbs/th_thpackshots.png","","n","0","0","j","1");
INSERT INTO cms_pages VALUES ("3","22","navi_22","navi_220003","0000-00-00 00:00:00","0000-00-00 00:00:00","what\'s the difference?","what\'s the difference?","quelle est la différence?","qual é la differenza?","Produkte_2","Products_2","Produits_2","Prodotti_2","what\'s the difference?","what\'s the difference?","quelle est la différence?","qual é la differenza?","<p><span id=\"result_box\" lang=\"en\"><strong><span class=\"hps atn\">e-</span>njoy</strong> <span class=\"hps\">is an electronic</span> <span class=\"hps\">cigarette,</span> <span class=\"hps\">consisting of a</span> <span class=\"hps\">battery</span>, an <span class=\"hps\">atomizer and</span> <span class=\"hps\">a filter without</span> <span class=\"hps\">nicotine,</span> <span class=\"hps\">with which the</span> <span class=\"hps\">smoking simulated by</span> <span class=\"hps\">conventional cigarette</span>, <span class=\"hps\">without producing</span> <span class=\"hps\">combustion.</span> <span class=\"hps\">The<strong> e</strong></span><strong><span class=\"atn\">-</span>njoy</strong> <span class=\"hps\">replacement</span> <span class=\"hps\">filters contain</span> <span class=\"hps\">a liquid that is</span> <span class=\"hps\">composed of</span> <span class=\"hps\">propylene</span> <span class=\"hps\">glycol and</span> <span class=\"hps atn\">glycerol (</span>both often <span class=\"hps\">used</span> <span class=\"hps\">as food additives</span>) <span class=\"hps\">and</span> <span class=\"hps\">flavor</span>. <span class=\"hps\">They come in</span> <span class=\"hps\">different flavors.</span></span></p>
<p>&nbsp;</p>
<p><span id=\"result_box\" lang=\"en\"><span class=\"hps\"><span id=\"result_box\" lang=\"en\"><span class=\"hps\">With <strong>e</strong></span><strong><span class=\"atn\">-</span>njoy </strong><span class=\"hps\">no tobacco</span> <span class=\"hps\">is smoked,</span> <span class=\"hps\">which could</span> <span class=\"hps\">harm</span> <span class=\"hps\">their own health or</span> <span class=\"hps\">the health of others</span>. <span class=\"hps\">The body</span> <span class=\"hps\">remains</span> <span class=\"hps\">spared of nicotine and</span> <span class=\"hps\">tar</span>, and <span class=\"hps\">some 4,000</span> <span class=\"hps\">other</span> <span class=\"hps\">chemical compounds</span> <span class=\"hps\">of a</span> <span class=\"hps\">conventional</span> <span class=\"hps\">cigarette</span>. <span class=\"hps\">This is</span> <span class=\"hps\">undoubtedly the</span> <span class=\"hps\">most important</span> <span class=\"hps\">aspect</span>, <span class=\"hps\">because of</span> <span class=\"hps\">its</span> <span class=\"hps\">offering</span> <span class=\"hps\">to</span> <strong><span class=\"hps\">e</span><span class=\"atn\">-</span>njoy</strong> <span class=\"hps\">as a useful</span> <span class=\"hps\">alternative for</span> <span class=\"hps\">smokers who do not</span> <span class=\"hps\">want to give up</span> <span class=\"hps\">the cigarette</span><span class=\"hps\">.</span></span></span></span></p>","<p><span id=\"result_box\" lang=\"en\"><strong><span class=\"hps atn\">xignis</span></strong> <span class=\"hps\">is an electronic</span> <span class=\"hps\">cigarette,</span> <span class=\"hps\">consisting of a</span> <span class=\"hps\">battery</span><span>, an</span> <span class=\"hps\">atomizer and</span> <span class=\"hps\">a filter without</span> <span class=\"hps\">nicotine,</span> <span class=\"hps\">with which the</span> <span class=\"hps\">smoking simulated by</span> <span class=\"hps\">conventional cigarette</span><span>,</span> <span class=\"hps\">without producing</span> <span class=\"hps\">combustion.</span> <span class=\"hps\">The<strong> xignis</strong></span> <span class=\"hps\">replacement</span> <span class=\"hps\">filters contain</span> <span class=\"hps\">a liquid that is</span> <span class=\"hps\">composed of</span> <span class=\"hps\">propylene</span> <span class=\"hps\">glycol and</span> <span class=\"hps atn\">glycerol (</span><span>both</span> often <span class=\"hps\">used</span> <span class=\"hps\">as food additives</span><span>)</span> <span class=\"hps\">and</span> <span class=\"hps\">flavor</span><span>.</span> <span class=\"hps\">They come in</span> <span class=\"hps\">different flavors.</span></span></p>
<p>&nbsp;</p>
<p><span id=\"result_box\" lang=\"en\"><span class=\"hps\"><span id=\"result_box\" lang=\"en\"><span class=\"hps\">With <strong>xignis</strong></span><strong> </strong><span class=\"hps\">no tobacco</span> <span class=\"hps\">is smoked,</span> <span class=\"hps\">which could</span> <span class=\"hps\">harm</span> <span class=\"hps\">their own health or</span> <span class=\"hps\">the health of others</span><span>.</span> <span class=\"hps\">The body</span> <span class=\"hps\">remains</span> <span class=\"hps\">spared of nicotine and</span> <span class=\"hps\">tar</span><span>, and</span> <span class=\"hps\">some 4,000</span> <span class=\"hps\">other</span> <span class=\"hps\">chemical compounds</span> <span class=\"hps\">of a</span> <span class=\"hps\">conventional</span> <span class=\"hps\">cigarette</span><span>.</span> <span class=\"hps\">This is</span> <span class=\"hps\">undoubtedly the</span> <span class=\"hps\">most important</span> <span class=\"hps\">aspect</span><span>,</span> <span class=\"hps\">because of</span> <span class=\"hps\">its</span> <span class=\"hps\">offering</span> <span class=\"hps\">to</span> <strong><span class=\"hps\">xignis</span></strong> <span class=\"hps\">as a useful</span> <span class=\"hps\">alternative for</span> <span class=\"hps\">smokers who do not</span> <span class=\"hps\">want to give up</span> <span class=\"hps\">the cigarette</span><span class=\"hps\">.</span></span></span></span></p>","<p><strong>xignis</strong> est une cigarette électronique, qui se compose d\'un accu d\'un vaporisateur et d\'un filtre sans nicotine permettant la simulation de fumer sans pourtant engendrer la combustion. Les filtres de recharge <strong>xignis</strong> contiennt un liquide qui se composent de glycérine et de propylène glycol (additifs alimentaires courants) et d\'arôme. Ils sont disponibles en différents parfums.&nbsp;<br /><br />Avec <strong>xignis</strong> on ne fume pas de tabac nuisible pour sa propre santé aussi bien que pour la santé d\'autrui. Le corps n\'est donc épargné pas seulement par la nicotine et le goudron mais également par d\'environ 4\'000 autre composés chimiques d\'une cigarette conventionelle. C\'est sans doute l\'aspect le plus important ce qui fait d\'xignis une alternative judicieuse pour le fumeur n\'étant pas prêt à renoncer à la jouissance de la cigarette.</p>","<p><strong>xignis</strong> è una sigaretta elettronica contenente una batteria, un atomizzatore ed un filtro<strong> senza nicotina</strong>, con la quale si può simulare di fumare una sigaretta senza produrre della combustione. &nbsp;<br />I filtri <strong>xignis</strong> contengono un liquido che è composto da glicerina e propilenica (sostanze usate nell\'ambito alimentare), e aromi. Esistono degli aromi diversi. <br /><br />Con<strong> xignis</strong> non si fuma del tabacco, che potrebbe nuocere alla propria salute ed a quella degli altri. Al corpo viene risparmiata l\'assunzione di catrame, nicotina e altre 4\'000 &nbsp;sostanze chimiche di una sigaretta tradizionale. Questo fatto è senz\'altro l\'aspetto più importante per il quale <strong>xignis</strong> viene offerta come alternativa per fumatori che non vogliono rinunciare al piacere della sigaretta.</p>","","","","","1","../../media_xignis/navi_220003/_thumbs/th_thpackshots.png","","n","0","0","j","3");
INSERT INTO cms_pages VALUES ("7","23","navi_23","navi_230001","0000-00-00 00:00:00","0000-00-00 00:00:00","test","","","","produkte_3","","","","test",NULL,NULL,NULL,"",NULL,NULL,NULL,"",NULL,NULL,NULL,"1","","","n","0","0","n","1");
INSERT INTO cms_pages VALUES ("8","25","navi_24","navi_240001","0000-00-00 00:00:00","0000-00-00 00:00:00","test","","","","Produkte_4_10","","","","test",NULL,NULL,NULL,"",NULL,NULL,NULL,"",NULL,NULL,NULL,"1","","","n","0","0","n","1");



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
INSERT INTO cms_redirect VALUES ("24","23","0","0","produkte_3","copy_products_2","copy_produits_2","copy_prodotti_2");
INSERT INTO cms_redirect VALUES ("25","23","0","7","test","test","test","test");
INSERT INTO cms_redirect VALUES ("27","24","0","0","produkte_4","copy_copy_products_2","copy_copy_produits_2","copy_copy_prodotti_2");
INSERT INTO cms_redirect VALUES ("28","24","25","0","produkte_4_10","produkte_4_10","produkte_4_10","produkte_4_10");
INSERT INTO cms_redirect VALUES ("29","24","25","8","test","test","test","test");
INSERT INTO cms_redirect VALUES ("30","26","0","0","navi_26","navi_26","navi_26","navi_26");



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
<p>und noch einen Text in Deutsch<br /> &nbsp;</p>","<p>what happens, if I write a text here</p>","<p>xignis est une cigarette &eacute;lectronique qui se compose d\'un accu, d\'un vaporisateur et d\'un filtre <strong>sans nicotine</strong>, permettant la simulation de fumer sans pourtant engendrer de la combustion. Les filtres de recharge xignis contiennent un liquide qui se compose de glyc&eacute;rine et de propyl&egrave;ne glycol (additifs alimentaires courants) et d\'ar&ocirc;me. Ils sont disponibles en diff&eacute;rents parfums.</p>
<p>Avec xignis on ne pas de tabac nuisible pour sa propre sant&eacute; aussi bien que pour la sant&eacute; d\'autrui. Le corps ne donc &eacute;parng&eacute; pas seulement par la nicotine et le goudron mais &eacute;galement par d\'environ 4\'000 autre compos&eacute; chimiques d\'une cigarette conventionelle. C\'est sans doute l\'aspect le plus important ce qui fait d\'xignis une alternative judicieuse por le fumeur n\'&eacute;tant pas pr&ecirc;t &agrave; renocer &agrave; la juissance de la cigarette.</p>","<p>qui il testo italiano</p>","<p>Und was ist, wenn ich hier auch noch Text eingebe?<br />Erscheint der oberhalb des Bildes?</p>
<p>und noch einen Text in Deutsch</p>
<p>schauen sie doch mal auf der Website von <a href=\"/cmsml/hempenweb.ch\" target=\"_blank\" rel=\"noopener noreferrer\">hempenweb </a>nach</p>","<p>and what happens, if I write a text here!</p>
<p>&nbsp;</p>","<p>ici le texte fran&ccedil;ais</p>
<p>dans le deuxi&egrave;me spalte</p>","<p>anche qui il testo italiano</p>","../gifs/blank.gif","a");
INSERT INTO cms_seiten VALUES ("3","3","1","1","0","","Publikationen","publications","publications","pubblicazioni","Interessante Links zum Thema","links to relevant publications","","","<p><strong>Informationen zu den Komponenten (Propylenglykol / Glycerol) der Filterfl&uuml;ssigkeit von TWENTYONE:</strong></p>
<p><a title=\"Pharmawiki Propylenglykol\" href=\"http://www.pharmawiki.ch/wiki/index.php?wiki=Propylenglycol\" target=\"_blank\" rel=\"noopener noreferrer\">&rarr; Pharmawiki Propylenglycol</a></p>
<p><a title=\"Pharmawiki Glycerol\" href=\"http://www.pharmawiki.ch/wiki/index.php?wiki=glycerol\" target=\"_blank\" rel=\"noopener noreferrer\">&rarr; P<span class=\"intro\">harmawiki Glycero</span><span class=\"intro\">l</span></a></p>
<p>&nbsp;</p>
<p>&nbsp;<strong>Meinungen</strong></p>
<p><a title=\"Verbot der E-Zigarette? \" href=\"http://www.welt.de/debatte/kommentare/article13838641/Verbot-der-E-Zigarette-Ein-unsinniges-Placebo.html\" target=\"_blank\" rel=\"noopener noreferrer\">&rarr; Verbot der E-Zigarette?</a></p>
<p>&nbsp;</p>
<p><a title=\"Electronic cigarettes as a harm reduction strategy for tobacco control: A step forward or a repeat of past mistakes? \" href=\"http://www.palgrave-journals.com/jphp/journal/v32/n1/abs/jphp201041a.html\" target=\"_self\">&rarr; Electronic cigarettes as a harm reduction strategy for tobacco control: A step forward or a repeat of past mistakes? </a></p>
<p>&nbsp;</p>
<p><strong>Wissenschaftliche Studien</strong></p>
<p><strong><a title=\"The Lancet 2013, Sept 9; Electronic cigarettes\" href=\"/media_xignis/navi_3/lancetecigarettessept2013.pdf\" target=\"_blank\" rel=\"noopener noreferrer\">&rarr;The Lancet 2013, Sept 9; Electronic cigarettes</a><br /></strong>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<a href=\"/media_xignis/navi_3/eciglancetstudiedversjuni42014w.pdf\" target=\"_blank\" rel=\"noopener noreferrer\"> &rarr;Graphische Darstellung der Studie </a></p>
<p>&nbsp;</p>
<p>&rarr;<a href=\"/media_xignis/navi_3/lancetecigarettessept2013.pdf\" target=\"_blank\" rel=\"noopener noreferrer\"> EffiCiency and Safety of an eLectronic cigAreTte (ECLAT)</a></p>
<p><strong>&nbsp;</strong></p>
<p><a title=\"Ruyan Cartridge Report\" href=\"http://www.healthnz.co.nz/RuyanCartridgeReport30-Oct-08.pdf\" target=\"_blank\" rel=\"noopener noreferrer\">&rarr;Safety Report&nbsp; on the Ruyan e-cigarette Cartridge and Inhaled Aerosol.&nbsp;&nbsp;</a></p>
<p>&nbsp;</p>
<p>&nbsp;</p>
<p><a title=\"Bullen C et al.\" href=\"http://www.ncbi.nlm.nih.gov/pubmed/20378585\" target=\"_blank\" rel=\"noopener noreferrer\">&rarr; Effect of an ENDD (e-cigarette) on desire to smoke and withdrawal - randomized cross-over trial</a></p>
<p>&nbsp;</p>
<p><a title=\"Pattern of electronic cigarette use\" href=\"http://www.ncbi.nlm.nih.gov/pubmed/?term=Beliefs+about+Their+Safety+and+Benefits+Goniewicz\" target=\"_blank\" rel=\"noopener noreferrer\">&rarr; Pattern of electronic cigarette use and user beliefs about their safety and benefits</a><br />&nbsp;</p>","<p><strong>Components of the liquid of the xignis e-cigarette<br /></strong></p>
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
<p><strong><a title=\"Propylene glycole FDA\" href=\"http://www.accessdata.fda.gov/scripts/fcn/fcnDetailNavigation.cfm?rpt=scogsListing&amp;id=262\" target=\"_blank\" rel=\"noopener noreferrer\">&rarr; FDA - safety - propyl&egrave;neglycol<br /></a></strong></p>
<p>&nbsp;</p>
<p><strong><a title=\"FDA -safety - glycerine\" href=\"http://www.accessdata.fda.gov/scripts/fcn/fcnDetailNavigation.cfm?rpt=scogsListing&amp;id=142\" target=\"_blank\" rel=\"noopener noreferrer\">&rarr; FDA - safety - glyc&eacute;rine</a><a title=\"Propylene glycole FDA\" href=\"http://www.accessdata.fda.gov/scripts/fcn/fcnDetailNavigation.cfm?rpt=scogsListing&amp;id=262\" target=\"_blank\" rel=\"noopener noreferrer\"><br /></a></strong></p>
<p><strong>&nbsp;</strong></p>
<p><a title=\"propyl&egrave;ne glycol dans des m&eacute;dicaments\" href=\"http://www.vidal.fr/Substance/propyleneglycol-2945.htm\" target=\"_blank\" rel=\"noopener noreferrer\"><strong>&rarr; vidal.fr/Substance/propyleneglycol</strong></a><strong><br /></strong></p>
<p>&nbsp;</p>
<p><a title=\"Vidal Glyc&eacute;rol\" href=\"http://www.vidal.fr/Substance/glycerol-1668.htm\" target=\"_blank\" rel=\"noopener noreferrer\">&rarr; vidal.fr/Substance/glyc&eacute;rol</a></p>
<p><strong>&nbsp;</strong></p>
<p><a title=\"Safety Report on the Ruyan&reg; e-cigarette Cartridge and\" href=\"http://www.healthnz.co.nz/RuyanCartridgeReport30-Oct-08.pdf\" target=\"_blank\" rel=\"noopener noreferrer\">&rarr; Safety Report on the Ruyan e-cigarette Cartridge and Inhaled Aerosol</a></p>
<p>&nbsp;</p>
<p><strong>Opinions</strong></p>
<p><a title=\"Electronic cigarettes as a harm reduction strategy\" href=\"http://www.palgrave-journals.com/jphp/journal/v32/n1/abs/jphp201041a.html\" target=\"_blank\" rel=\"noopener noreferrer\">&rarr; Electronic cigarettes as a harm reduction strategy for tobacco control: A step forward or a repeat of past mistakes?&nbsp;<br /> <br /></a></p>
<p><strong>Etudes scientifiques</strong>&nbsp;<br /> <strong><a title=\"The Lancet 2013, Sept 9; Electronic cigarettes\" href=\"/media_xignis/navi_3/lancetecigarettessept2013.pdf\" target=\"_blank\" rel=\"noopener noreferrer\">&rarr;The Lancet 2013, Sept 9; Electronic cigarettes<br />&nbsp;</a>&nbsp;</strong><br /> <a href=\"http://sph.bu.edu/index.php?option=com_insidernews&amp;categoryid=94&amp;sectionid=15&amp;task=view&amp;Itemid=617365&amp;articleid=3497\" target=\"_blank\" rel=\"noopener noreferrer\">&rarr;Electronic Cigarettes Hold Promise As Aid to Quitting</a></p>
<p>&nbsp;</p>
<p><a title=\"Effect of an ENDD\" href=\"http://www.ncbi.nlm.nih.gov/pubmed/20378585\" target=\"_blank\" rel=\"noopener noreferrer\">&rarr; Effect of an ENDD (e-cigarette) on desire of smoke and Withdrawal- randomized cross-over trial. </a></p>
<p>&nbsp;</p>
<p><a title=\"Pattern of electronic cigarette use\" href=\"http://www.ncbi.nlm.nih.gov/pubmed/?term=Beliefs+about+Their+Safety+and+Benefits+Goniewicz\" target=\"_blank\" rel=\"noopener noreferrer\">&rarr; Pattern of electronic cigarette use and user beliefs about their safety and benefits</a><br />&nbsp;</p>
<p>&nbsp;</p>","<p><strong><span dir=\"auto\"><span id=\"result_box\" class=\"short_text\" lang=\"it\"><span class=\"hps\">Informazioni sull <span id=\"result_box\" class=\"short_text\" lang=\"it\"><span class=\"hps\">componenti</span></span></span></span></span></strong></p>
<p><strong><a title=\"sicurezza di glicole propilenico\" href=\"http://www.accessdata.fda.gov/scripts/fcn/fcnDetailNavigation.cfm?rpt=scogsListing&amp;id=262\"><span dir=\"auto\">&rarr; Glicole propilenico</span></a></strong></p>
<p><strong><a title=\"Sicurezza della glicerina\" href=\"http://www.accessdata.fda.gov/scripts/fcn/fcnDetailNavigation.cfm?rpt=scogsListing&amp;id=142\" target=\"_blank\" rel=\"noopener noreferrer\">&rarr; Glicerina</a></strong></p>
<p>&nbsp;</p>
<p><a title=\"http://www.healthnz.co.nz/RuyanCartridgeReport30-Oct-08.pdf\" href=\"http://www.healthnz.co.nz/RuyanCartridgeReport30-Oct-08.pdf\" target=\"_blank\" rel=\"noopener noreferrer\">&rarr; Safety Report on the Ruyan e-cigarette Cartridge and Inhaled Aerosol</a></p>
<p>&nbsp;</p>
<p><strong>Opinioni</strong>&nbsp;</p>
<p><strong><a title=\"Electronic cigarettes as a harm reduction strategy \" href=\"http://www.hsph.harvard.edu/centers-institutes/population-development/files/article.jphp.pdf\" target=\"_blank\" rel=\"noopener noreferrer\">&rarr; Electronic cigarettes as a harm reduction strategy for tobacco control: A step forward or a repeat of past mistakes? --&gt; PDF</a><a title=\"Sicurezza della glicerina\" href=\"http://www.accessdata.fda.gov/scripts/fcn/fcnDetailNavigation.cfm?rpt=scogsListing&amp;id=142\" target=\"_blank\" rel=\"noopener noreferrer\"> <br /></a></strong></p>
<p>&nbsp;<br /> <a href=\"http://sph.bu.edu/index.php?option=com_insidernews&amp;categoryid=94&amp;sectionid=15&amp;task=view&amp;Itemid=617365&amp;articleid=3497\" target=\"_blank\" rel=\"noopener noreferrer\">&rarr; Electronic Cigarettes Hold Promise As Aid to Quitting</a></p>
<p><br /><a title=\"Effect of an ENDD\" href=\"http://www.ncbi.nlm.nih.gov/pubmed/20378585\" target=\"_blank\" rel=\"noopener noreferrer\">&rarr; Effect of an ENDD (e-cigarette) on desire to smoke and Withdrawal - randomized cross-over trial</a></p>
<p>&nbsp;</p>
<p><a title=\"Patti Chiari\" href=\"http://www.rsi.ch/pattichiari/node/4513\" target=\"_blank\" rel=\"noopener noreferrer\">&rarr; Patti Chiari</a><br /><br /><strong>Studi scientifici</strong><br /><strong><a title=\"The Lancet 2013, Sept 9; Electronic cigarettes\" href=\"/media_xignis/navi_3/lancetecigarettessept2013.pdf\" target=\"_blank\" rel=\"noopener noreferrer\">&rarr;The Lancet 2013, Sept 9; Electronic cigarettes</a> </strong><br /> &nbsp;</p>","<p style=\"text-align: center;\"><a href=\"/media_xignis/navi_3/news2012sotposter1861.pdf\" target=\"_blank\" rel=\"noopener noreferrer\"><img class=\"intro\" style=\"border: 0px currentColor;\" src=\"/cmsml/media_xignis/navi_3/_thumbs/th_news2012sotposter.png\" alt=\"\" width=\"400\" height=\"300\" /></a><a href=\"/media_xignis/navi_3/news2012sotposter1861.pdf\" target=\"_blank\" rel=\"noopener noreferrer\"><br /></a></p>
<p style=\"text-align: center;\"><a href=\"/beta56/cmsml/media_xignis/navi_3/news2012sotposter1861.pdf\" target=\"_blank\" rel=\"noopener noreferrer\">PDF Datei &ouml;ffnen</a></p>
<p>&nbsp;</p>","<p><a href=\"/media_xignis/navi_3/news2012sotposter1861.pdf\" target=\"_blank\"><img class=\"intro\" style=\"border: 0px currentColor;\" src=\"/cmsml/media_xignis/navi_3/_thumbs/th_news2012sotposter.png\" alt=\"\" width=\"400\" height=\"300\" /></a></p>
<p style=\"text-align: center;\"><a href=\"/beta56/cmsml/media_xignis/navi_3/news2012sotposter1861.pdf\" target=\"_blank\">Open PDF File</a></p>
<p>&nbsp;</p>","<p><a href=\"/media_xignis/navi_3/news2012sotposter1861.pdf\" target=\"_blank\" rel=\"noopener noreferrer\"><img class=\"intro\" style=\"border: 0px currentColor;\" src=\"/cmsml/media_xignis/navi_3/_thumbs/th_news2012sotposter.png\" alt=\"\" width=\"400\" height=\"300\" /></a></p>
<p style=\"text-align: center;\"><a href=\"/beta56/cmsml/media_xignis/navi_3/news2012sotposter1861.pdf\" target=\"_blank\" rel=\"noopener noreferrer\">Ouvrir le fichier PDF</a></p>
<p>&nbsp;</p>","<p><a href=\"/media_xignis/navi_3/news2012sotposter1861.pdf\" target=\"_blank\" rel=\"noopener noreferrer\"><img class=\"intro\" style=\"border: 0px currentColor;\" src=\"/cmsml/media_xignis/navi_3/_thumbs/th_news2012sotposter.png\" alt=\"\" width=\"400\" height=\"300\" /></a></p>
<p style=\"text-align: center;\"><a href=\"/beta56/cmsml/media_xignis/navi_3/news2012sotposter1861.pdf\" target=\"_blank\" rel=\"noopener noreferrer\">Aprire il file PDF</a></p>
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
<p>&nbsp;</p>
<p>Last edited on&nbsp;2017-03-23&nbsp;22:46:27</p>
<p><img src=\"/cmsml/media_xignis/header/background/bgheader_blue.png\" alt=\"\" width=\"400\" height=\"180\" /></p>","<p style=\"vertical-align: top;\"><span style=\"color: windowtext; font-family: \'Arial\',\'sans-serif\'; font-size: 10pt; mso-ansi-language: EN-US;\" lang=\"EN-US\"><strong>TWENTYONE</strong> e-cigarettes are a product developed by pharmacist-inventor <a title=\"Hon Lik\" href=\"http://patentscope.wipo.int/search/en/result.jsf?query=ALLNAMES%3A%28Hon+Lik%29&amp;maxRec=6&amp;filter=HON%2C+Lik&amp;filterField=INF_M&amp;prevFilter\" target=\"_blank\">Hon Lik</a>, for which a number of key patents have been applied for and / or granted. </span></p>
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
<p>Una e-cigaretta<strong>TWENTYONE </strong>corrisponde a circa 40 sigarette (c.a. 400 tiri).La durata pero’ dipende principalmente dal volume di tiri del singolo individuo.</p>","<p><img src=\"/cmsml/media_xignis/header/background/bgheader_yellow.png\" alt=\"\" width=\"400\" height=\"180\" /></p>
<p><img src=\"/cmsml/media_xignis/header/background/bgheader_tobacco.png\" alt=\"\" width=\"400\" height=\"180\" /></p>","","","","../gifs/blank.gif","n");
INSERT INTO cms_seiten VALUES ("12","12","1","1","0","","das ist der Unterschied!","what\'s the difference?","quelle est la différence?","qual é la differenza?","","","","","<p><img src=\"/cmsml/media_xignis/header/background/bgheader_blue.png\" width=\"400\" height=\"180\" /></p>
<p>Die<strong> TWENTYONE, </strong>die in unvergleichlicher Weise Sicherheit und Genuss vereint, basiert auf der patentierten Technologie des Erfinders&nbsp;<strong><a title=\"Hon Lik\" href=\"http://patentscope.wipo.int/search/en/result.jsf?query=ALLNAMES%3A%28Hon+Lik%29&amp;maxRec=6&amp;filter=HON%2C+Lik&amp;filterField=INF_M&amp;prevFilter\" target=\"_blank\" rel=\"noopener noreferrer\">Hon Lik</a>,</strong> welche zu unz&auml;hligen Imitationen inspirierte, aber in Ihrer Qualit&auml;t letztlich unerreicht bleibt.&nbsp;&nbsp;</p>
<p>&nbsp;</p>
<p><strong> TWENTYONE</strong> E-Zigaretten sehen aus wie herk&ouml;mmliche Zigaretten und vermitteln das Gef&uuml;hl zu rauchen, jedoch ohne Rauch und Teer zu erzeugen, weil keine Verbrennung stattfindet. Sie stellen somit eine genussvolle Alternative f&uuml;r Raucher dar, die einen ges&uuml;nderen Lebensstil anstreben.</p>
<p>Die gebrauchsfertige, d.h. bereits mit Strom geladene, <strong>TWENTYONE</strong> besteht aus einem einzigen St&uuml;ck und erweist sich daher als sehr benutzerfreundlich. <br /><br /></p>
<p><img src=\"/media_xignis/header/background/bgheader_green.png\" alt=\"\" width=\"400\" height=\"180\" /></p>
<p>&nbsp;</p>","<p style=\"vertical-align: top;\"><span style=\"color: windowtext; font-family: \'Arial\',\'sans-serif\'; font-size: 10pt; mso-ansi-language: EN-US;\" lang=\"EN-US\"><strong>TWENTYONE</strong> e-cigarettes resemble conventional cigarettes and emulate the sensation of smoking without however producing smoke or tar since no combustion takes place. They, therefore, represent an enjoyable alternative for smokers striving for a healthier life style.</span></p>
<p><br /> The ready-to-use (pre-charged) <strong>TWENTYONE</strong> e-cigarette consists of a single piece thus proving to be very user-friendly.</p>","<p>Les cigarettes électroniques TWENTYONE sont basées sur une technologie brevetée,&nbsp;qui connaît d\'innombrables imitations, mais qui reste toutefois inégalée.</p>
<p><br /> Les cigarettes électroniques <strong>TWENTYONE </strong>ressemblent à des cigarettes conventionnelles et permettant de simuler&nbsp;l’action de fumer sans pourtant engendrer ni&nbsp;de la fumée nocive ni&nbsp;du goudron car il n\'y a pas de&nbsp;combustion. C\'est sans doute l\'aspect le plus important qui fait de<strong> TWENTYONE </strong>une alternative judicieuse pour un fumeur qui n’est pas prêt à renoncer à la jouissance de la cigarette.</p>
<p>&nbsp;<br />La cigarette électronique&nbsp;<strong>TWENTYONE</strong> prête à l\'emploi, c\'est à dire chargée d\'électricité, consiste en une seule pièce ce qui la rend donc très facile à utiliser.</p>","<p>La <strong>TWENTYONE</strong> trasmette senza uguali gusto e sicurezza, si basa su una tecnologia patentata dall\'inventore Hon Lik, copiata da innumerevoli altri prodotti simili, ma irraggiungibile nella sua qualità.&nbsp;<br /> <br /> La e-cigaretta <strong>TWENTYONE</strong> assomigliano a sigarette convenzionali e trasmettono la sensazione di fumare realmente, senza pero\' emanare fumo e produrre catrame perché non vi è il processo della combustione.&nbsp;<br /><br />La<strong> TWENTYONE</strong> e-sigaretta&nbsp;si presenta come reale alternativa ai fumatori che vogliono vivere sani ma sentono il bisogno di<strong> fumare.&nbsp;</strong><br />&nbsp;<strong><span style=\"color: black; font-family: \'Times\',\'serif\'; font-size: 11pt; mso-fareast-font-family: Times; mso-fareast-language: DE-CH; mso-ansi-language: DE; mso-bidi-language: AR-SA; mso-bidi-font-family: \'Times New Roman\';\" lang=\"DE\">&nbsp;</span></strong><br /> L<span style=\"color: black; line-height: 115%; font-family: \'Microsoft Sans Serif\',\'sans-serif\'; font-size: 10pt; mso-bidi-font-weight: bold; mso-fareast-font-family: Calibri; mso-fareast-theme-font: minor-latin; mso-fareast-language: EN-US; mso-ansi-language: DE-CH; mso-bidi-language: AR-SA;\">a <strong>TWENTYONE</strong>&nbsp;é pronta all\'uso essendo la batteria&nbsp;gia\' caricata, é composta da un unico pezzo ed é quindi estremamente facile da usare.</span></p>
<p>&nbsp;<br />&nbsp;</p>
<p>&nbsp;</p>
<p>&nbsp;</p>
<p>&nbsp;</p>
<p>&nbsp;</p>","<p><img src=\"data:image/jpeg;base64,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\" alt=\"\" width=\"400\" height=\"300\" /></p>
<p>&nbsp;</p>","","","","../../media_xignis/navi_1_30/_thumbs/th_packshots.png","n");
INSERT INTO cms_seiten VALUES ("19","19","1","1","0","","weshalb TWENTYONE wählen?","why choose TWENTYONE?","pourquoi choisir TWENTYONE?","perché scegliere TWENTYONE?","","","","","<p><strong>TWENTYONE</strong> erf&uuml;llt die vom Bundesamt f&uuml;r Gesundheit (BAG) gestellten Anforderungen und wird kontinuierlich von unabh&auml;ngigen, ISO-zertifizierten Labors in der Schweiz gepr&uuml;ft.&nbsp;</p>
<p>&nbsp;</p>
<p>Die Inhalationsfl&uuml;ssigkeit von <strong>TWENTYONE</strong>, welche aus einer mit Lebensmittel-aromen,&nbsp;versetzten Mischung&nbsp; aus Propylenglykol und &nbsp;Glycerin - beides in Pharmaqualit&auml;t - besteht,&nbsp;wurde umfangreichen Sicherheitspr&uuml;fungen unterzogen:<a href=\"http://www.healthnz.co.nz/RuyanCartridgeReport30-Oct-08.pdf\" target=\"_blank\" rel=\"noopener noreferrer\"> &rarr; Health NEW ZEALAND Ltd (Research and policy advice to reduce heart disease, cancer and smoking)</a></p>
<p><br /> <strong>TWENTYONE</strong> e-Zigaretten entsprechen den <strong><span style=\"text-decoration: underline;\">CE</span>- </strong>und <span style=\"text-decoration: underline;\"><strong>RoHS</strong></span>-Richtlinien mit den entsprechenden Bescheinigungen durch die internationale Warenpr&uuml;fer.&nbsp; <br /><br /></p>
<p><strong>TWENTYONE</strong> E-Zigaretten sind schweizweit in Apotheken und Drogerien erh&auml;ltlich.</p>
<p>&nbsp;</p>
<p>&nbsp;</p>","<p><strong>TWENTYONE </strong>e-cigarettes&nbsp;are fully compliant with the requirements of the Swiss Federal Office of Public Health. Its quality is continuously monitored by an ISO-certified independent laboratory.</p>
<p style=\"vertical-align: top;\"><br /><span lang=\"EN-US\" style=\"line-height: 115%; font-family: \'Microsoft Sans Serif\',\'sans-serif\'; font-size: 10pt; mso-fareast-font-family: Calibri; mso-fareast-theme-font: minor-latin; mso-ansi-language: EN-US; mso-fareast-language: EN-US; mso-bidi-language: AR-SA;\">The liquid of <strong>TWENTYONE</strong> e-cigarettes, a blend consisting of flavors, pharmaceutical grade propylene glycol and glycerol, has been subjected to extensive safety evaluations.&nbsp;</span><strong>&rarr; <a href=\"http://www.healthnz.co.nz/RuyanCartridgeReport30-Oct-08.pdf\" target=\"_blank\" rel=\"noopener noreferrer\">Health NEW ZEALAND Ltd (Research and policy advice to reduce heart disease, cancer and smoking)</a><br /></strong>&nbsp;&nbsp;</p>
<p><strong>TWENTYONE</strong> e-cigarettes are compliant with <a title=\"CE Mark\" href=\"http://www.sgs.ch/en/Agriculture-Food/Project-Life-Cycle-Services/Services-During-Construction-and-Commissioning/Services-Related-to-Machinery-and-Equipment/CE-Marking.aspx\" target=\"_blank\" rel=\"noopener noreferrer\">CE</a> and <a title=\"RoHS\" href=\"http://www.sgs.ch/en/Agriculture-Food/Quality-Health-Safety-and-Environment/Product-Safety/Hazardous-Substances/RoHS-Certificate-of-Conformity-CoC.aspx\" target=\"_blank\" rel=\"noopener noreferrer\">RoHS</a>&nbsp;directives, which has been verified by <a title=\"SGS\" href=\"http://www.sgs.ch/en\" target=\"_blank\" rel=\"noopener noreferrer\">SGS</a>&nbsp;&nbsp;&nbsp;</p>
<p>&nbsp;</p>
<p><strong>TWENTYONE</strong> e-cigarettes are available in pharmacies.</p>","<p><strong>TWENTYONE</strong> r&eacute;pond aux exigences de l\'Office f&eacute;d&eacute;rale de la Sant&eacute; publique (OFSP) et est soumis &agrave; des contr&ocirc;les de qualit&eacute; permanents et analys&eacute; en Suisse par les laboratoires ind&eacute;pendants, certifi&eacute;s selon les normes ISO.</p>
<p>&nbsp;</p>
<p>Le liquide d\'inhalation de <strong>TWENTYONE</strong>&nbsp;qui se&nbsp;compose de glyc&eacute;rine et de propyl&egrave;ne glycol en qualit&eacute; pharmaceutique et d\'ar&ocirc;me, a &eacute;t&eacute; soumis &agrave; de vastes examens de s&ucirc;ret&eacute;:&nbsp;&nbsp;&rarr; <a href=\"http://www.healthnz.co.nz/RuyanCartridgeReport30-Oct-08.pdf\" target=\"_blank\" rel=\"noopener noreferrer\">Health NEW ZEALAND Ltd&nbsp;(Research and policy advice to reduce&nbsp;heart disease, cancer and smoking)</a></p>
<p>&nbsp;</p>
<p>Les e-cigarettes<strong> TWENTYONE</strong> correspondent aux directives CE&nbsp;et RoHS et sont sous surveillance de&nbsp;<span style=\"text-decoration: underline;\"><a title=\"sgs\" href=\"http://www.sgs.ch/fr-FR/\" target=\"_blank\" rel=\"noopener noreferrer\">SGS</a></span>.</p>
<p>&nbsp;</p>
<p>Les cigarettes &eacute;lectroniques <strong>TWENTYONE</strong> sont en vente dans les pharmacies en Suisse.</p>
<p>&nbsp;</p>
<p>&nbsp;</p>","<p><strong>TWENTYONE</strong> risponde alle esigenze del Ufficio federale della sanit&agrave; pubblica (UFSP) ed &egrave; sottoposta a controlli di qualit&agrave; costanti. Viene analizzata da laboratori svizzeri indipendenti certificati ISO. &nbsp;</p>
<p>Il liquido che viene inalato dalla <strong>TWENTYONE</strong>, composto da aromi provenienti dalla produzione di alimentari, per esempio il mentolo che viene mischiato con Propylenglicole e glicerina- entrambi con qualita&lsquo; farmaceutiche - vengono controllate&nbsp; e verificate da ricerche molto rigorose. <a href=\"http://www.healthnz.co.nz/RuyanCartridgeReport30-Oct-08.pdf\" target=\"_blank\" rel=\"noopener noreferrer\">&nbsp;&rarr; Health NEW ZEALAND Ltd (Research and policy advice to reduce heart disease, cancer and smoking)</a><br /><br /> La e &ndash;cigaretta&nbsp; <strong>TWENTYONE</strong> corrisponde alle normative <strong><a title=\"CE-Kennzeichnung\" href=\"http://www.sgs.ch/it-IT/Agriculture-Food/Project-Life-Cycle-Services/Services-During-Construction-and-Commissioning/Services-Related-to-Machinery-and-Equipment/CE-Marking.aspx\" target=\"_blank\" rel=\"noopener noreferrer\">CE</a></strong>&nbsp;e <strong><a title=\"RoHs kennzeichnung\" href=\"http://www.sgs.ch/it-IT/Agriculture-Food/Quality-Health-Safety-and-Environment/Product-Safety/Hazardous-Substances/RoHS-Certificate-of-Conformity-CoC.aspx\" target=\"_blank\" rel=\"noopener noreferrer\">RoHS</a> </strong>con corrispondente certificazione <a title=\"sgs\" href=\"http://www.sgs.ch/it-IT/Agriculture-Food/Project-Life-Cycle-Services/Services-During-Construction-and-Commissioning/Services-Related-to-Machinery-and-Equipment/CE-Marking.aspx\"><strong>SGS</strong></a><a title=\"SGS\" href=\"http://www.sgs.ch/it-IT/\"><strong>.</strong></a><br />&nbsp;</p>
<p>La e &ndash;cigaretta <strong>TWENTYONE</strong> viene prodotta presso gli stabilimenti farmaceutici dall&rsquo;inventore proprietario die brevetti, industria certificata ISO.</p>
<p>&nbsp;</p>
<p>La e-cigaretta <strong>TWENTYONE</strong> si acquista nelle farmacie e nelle drogherie</p>
<p><strong>&nbsp;</strong><strong><br /></strong>&nbsp;</p>
<p>&nbsp;</p>","<p>Und was ist, wenn ich hier auch noch Text eingebe?<br />Erscheint der oberhalb des Bildes?</p>
<p>und noch einen Text in Deutsch</p>
<p>schauen sie doch mal auf der Website von <a href=\"http://www.hempenweb.ch\" target=\"_blank\" rel=\"noopener noreferrer\">hempenweb </a>nach</p>
<p><img src=\"/cmsml/media_xignis/header/background/bgheader_red.png\" alt=\"\" width=\"666\" height=\"300\" /></p>","<p><img src=\"/cmsml/media_xignis/header/background/bgheader_blue.png\" alt=\"\" width=\"665\" height=\"300\" /></p>","<p><img src=\"/cmsml/media_xignis/header/background/bgheader_yellow.png\" alt=\"\" width=\"666\" height=\"300\" /></p>","<p><img src=\"/cmsml/media_xignis/header/background/bgheader_green.png\" alt=\"\" width=\"666\" height=\"300\" /></p>","../../media_xignis/navi_1_30/_thumbs/th_packshots.png","n");
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
INSERT INTO cms_seiten VALUES ("21","21","1","4","0","","Nach Hause","home","home","home","","","","","<p><img style=\"margin: 0px; vertical-align: middle;\" src=\"/cmsml/media_xignis/intro/de_intro.jpg\" alt=\"\" width=\"100%\" height=\"100%\" /></p>","<p><img class=\"intro\" style=\"margin: 0px;\" src=\"/cmsml/media_xignis/intro/en_intro.jpg\" alt=\"\" width=\"1149\" height=\"862\" /></p>","<p><img class=\"intro\" style=\"vertical-align: top; margin: 0px;\" src=\"/cmsml/media_xignis/intro/fr_intro.jpg\" alt=\"\" width=\"1149\" height=\"862\" /></p>","<p><img class=\"intro\" style=\"vertical-align: top; margin: 0px;\" src=\"/cmsml/media_xignis/intro/it_intro.jpg\" alt=\"\" width=\"1149\" height=\"862\" /></p>","","","","","","n");
INSERT INTO cms_seiten VALUES ("22","22","1","3","1","","Produkte 2","Products 2","Produits 2","Prodotti 2","","","","","","","","","","","","","","n");
INSERT INTO cms_seiten VALUES ("23","23","1","3","1",NULL,"Produkte 3","Copy: Products 2","Copy: Produits 2","Copy: Prodotti 2","","","","","","","","","","","","","","n");
INSERT INTO cms_seiten VALUES ("24","24","1","3","1",NULL,"Produkte 4","Copy: Copy: Products 2","Copy: Copy: Produits 2","Copy: Copy: Prodotti 2","","","","","","","","","","","","","","n");
INSERT INTO cms_seiten VALUES ("25","25","1","1","0",NULL,"Produkte_4_10","Produkte_4_10","Produkte_4_10","Produkte_4_10",NULL,NULL,NULL,NULL,"","","","",NULL,NULL,NULL,NULL,NULL,"n");
INSERT INTO cms_seiten VALUES ("26","26","1","1","0",NULL,"navi_26","navi_26","navi_26","navi_26",NULL,NULL,NULL,NULL,"","","","",NULL,NULL,NULL,NULL,NULL,"n");



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
INSERT INTO cms_spezial VALUES ("xignis","LANG3","IT","it","italiano","n");
INSERT INTO cms_spezial VALUES ("xignis","LANG4","EN","en","english","n");
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


