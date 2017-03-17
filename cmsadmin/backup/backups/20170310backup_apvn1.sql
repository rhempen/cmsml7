#----------------------------------------------
# Backup der Datenbank cms_apvn_ml
# Erstellt am 10.03.2017 19:06
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
INSERT INTO cms_config VALUES ("1","general","THEME","apvn1",NULL,NULL);
INSERT INTO cms_config VALUES ("2","general","COPYRIGHT","Association pour la Préservation du Vallon du Nozon",NULL,NULL);
INSERT INTO cms_config VALUES ("3","general","MAX_THUMBS","60",NULL,NULL);
INSERT INTO cms_config VALUES ("4","general","MAX_LIST_ITEMS","60",NULL,NULL);
INSERT INTO cms_config VALUES ("5","general","LANGUAGE","FR",NULL,NULL);
INSERT INTO cms_config VALUES ("10","menu","HMENU_RICHTUNG","left","right",NULL);
INSERT INTO cms_config VALUES ("11","menu","HMENU_SUBMENU","submenu","dropdown",NULL);
INSERT INTO cms_config VALUES ("20","pictures","THUMB_PAGE_MAX_WIDTH","100",NULL,NULL);
INSERT INTO cms_config VALUES ("21","pictures","THUMB_PAGE_MAX_HEIGHT","100",NULL,NULL);
INSERT INTO cms_config VALUES ("22","pictures","THUMB_NAVI_MAX_WIDTH","300",NULL,NULL);
INSERT INTO cms_config VALUES ("23","pictures","THUMB_NAVI_MAX_HEIGHT","300",NULL,NULL);
INSERT INTO cms_config VALUES ("24","pictures","IMAGE_MAX_WIDTH","640",NULL,NULL);
INSERT INTO cms_config VALUES ("25","pictures","IMAGE_MAX_HEIGHT","640",NULL,NULL);
INSERT INTO cms_config VALUES ("14","menu","SMURL","ja","nein",NULL);
INSERT INTO cms_config VALUES ("13","menu","SUBNAV_SOFORT","ja","nein",NULL);
INSERT INTO cms_config VALUES ("15","menu","SMURL_REFRESH","ausf&uuml;hren","",NULL);
INSERT INTO cms_config VALUES ("12","menu","SUBMENU_DIR","horizontal","vertikal",NULL);
INSERT INTO cms_config VALUES ("7","general","EMAIL_RECEIVER","frontend/themes/apvn/tpl",NULL,NULL);
INSERT INTO cms_config VALUES ("32","meta-tags","KEYWORDS","",NULL,"APVN, Association pour la préservation du vallon du nozon, Croy, Romainmôtier, Vaulion, Juriens, Premier, La Praz, Bretonnières");
INSERT INTO cms_config VALUES ("33","meta-tags","DESCRIPTION","",NULL,"L\'Association pour la préservation du vallon du nozon  s\'engage à en sauvegarder la qualité et l\'intégrité, à protéger sa beauté, sa faune, sa flore et la qualité de ses eaux; à promouvoir le maintien de son patrimoine et sa vocation de lieu protégé, à encourager et soutenir la gestion de l\'endroit pour développer ses valeurs et ses qualités, ainsi qu\'un dialogue constructif avec tous ses intervenants");
INSERT INTO cms_config VALUES ("34","meta-tags","PAGE_TOPIC","",NULL,"APVN, Croy, Romainmôtier, Vaulion, Juriens, Premier, La Praz, Bretonnières");
INSERT INTO cms_config VALUES ("35","meta-tags","PUBLISHER","",NULL,"Roland Hempen, WebPublisher, WebProgrammer Php, Grafik, Design, Zürich");
INSERT INTO cms_config VALUES ("26","pictures","DISK_DB_ADJUSTMENT","ausf&uuml;hren",NULL,NULL);
INSERT INTO cms_config VALUES ("31","meta-tags","AUTHOR","APVN - Association pour la préservation du vallon du nozon",NULL,"");
INSERT INTO cms_config VALUES ("8","general","GOOGLE_ANALYTICS","",NULL,NULL);
INSERT INTO cms_config VALUES ("36","meta-tags","GOOGLE_VERIFY","","","LK9qZNSH8l1-VFNRifvZJQcbNKKNUJHG1OIheVMgWvI");
INSERT INTO cms_config VALUES ("9","general","TEMPLATE_DIR","frontend/themes/apvn1/tpl",NULL,NULL);
INSERT INTO cms_config VALUES ("27","pictures","MEDIA_ROOT_ADJUSTMENT","ausf&uuml;hren",NULL,NULL);



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
INSERT INTO cms_fragmente VALUES ("1","apvn_salamandre","1","<p><iframe src=\"http://www.youtube.com/embed/NV2bUQYFlTw?rel=0\" frameborder=\"0\" width=\"300\" height=\"225\"></iframe></p>");
INSERT INTO cms_fragmente VALUES ("2","teaser2","2","<div class=\"teasertext\">
<h2 class=\"teasertitle\">Member Login</h2>
<p class=\"teasertext\"><iframe src=\"/beta/cmsml/frontend/_controllers/kontakt.inc.php\" frameborder=\"0\" width=\"400\" height=\"300\"></iframe></p>
</div>");
INSERT INTO cms_fragmente VALUES ("3","teaser3","3","<h2>Teaser 3</h2>
<p>Das ist der Teaser Nummer 3</p>");
INSERT INTO cms_fragmente VALUES ("4","teaser4","4","<h2>Angebot</h2>
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
INSERT INTO cms_fragmente VALUES ("5","footer","5","<div id=\"impressum\">
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
INSERT INTO cms_galerien VALUES ("70","15","1","N","../../media_apvn/navi_8_10/_images/vaulion.png",NULL,NULL,"Paysage de Vaulion",NULL);
INSERT INTO cms_galerien VALUES ("71","7","1","N","../../media_apvn/navi_7/_images/jeudelumiereeglise.jpg",NULL,NULL,"",NULL);
INSERT INTO cms_galerien VALUES ("72","7","2","N","../../media_apvn/navi_7/_images/foiredulivre.jpg",NULL,NULL,"",NULL);
INSERT INTO cms_galerien VALUES ("73","21","1","N","../../media_apvn/navi_9_10/_images/chuttedudard.png",NULL,NULL,"",NULL);
INSERT INTO cms_galerien VALUES ("75","15","2","N","../../media_apvn/navi_8_10/_images/college.png",NULL,NULL,"Collège de Bofflens",NULL);
INSERT INTO cms_galerien VALUES ("77","15","3","N","../../media_apvn/navi_8_10/_images/ferme.jpg",NULL,NULL,"",NULL);
INSERT INTO cms_galerien VALUES ("78","15","4","N","../../media_apvn/navi_8_10/_images/vue_sur_le_village.jpg",NULL,NULL,"",NULL);
INSERT INTO cms_galerien VALUES ("118","33","2","P","../../media_apvn/navi_80002/_images/lavoir.jpg",NULL,NULL,"DEUX LAVOIRS AU FIL DE L\'EAU FONT PARTIE DU PATRIMOINE. JADIS LA LESSIVE SE FAISAIT DANS DE GRANDES CUVES EN BOIS, AVEC DE LA CENDRE.",NULL);
INSERT INTO cms_galerien VALUES ("143","34","1","P","../../media_apvn/navi_80003/_images/eglise br.jpg",NULL,NULL,"LORS DE SA RESTAURATION ENTRE 1905 ET 1907, UN ARCHITECTE M. SCHMID DECIDE DE PARFAIRE LA CONSTRUCTION AVEC UN CLOCHER-BULBE BARROQUE.",NULL);
INSERT INTO cms_galerien VALUES ("82","15","5","N","../../media_apvn/navi_8_10/_images/college_300_300.png",NULL,NULL,"",NULL);
INSERT INTO cms_galerien VALUES ("83","15","6","N","../../media_apvn/navi_8_10/_images/vaulion_300_300.png",NULL,NULL,"",NULL);
INSERT INTO cms_galerien VALUES ("85","28","3","N","../../media_apvn/navi_8_60/_images/1egliseenautomne.jpg",NULL,NULL,"ABBATIALE DE ROMAINMOTIER EDIFIEE EN 1028.",NULL);
INSERT INTO cms_galerien VALUES ("86","28","2","N","../../media_apvn/navi_8_60/_images/2007_0828villagecroy0010.jpg",NULL,NULL,"MAGNIFIQUE FONTAINE DE 1828 SUR LA PLACE DU VILLAGE DE CROY",NULL);
INSERT INTO cms_galerien VALUES ("87","28","5","N","../../media_apvn/navi_8_60/_images/img_3547.jpg",NULL,NULL,"LE NOZON ALIMENTE DEUX BASSIN-VERSANTS : LE RHIN ET LE RHONE.",NULL);
INSERT INTO cms_galerien VALUES ("89","28","1","N","../../media_apvn/navi_8_60/_images/paysage.jpg",NULL,NULL,"UN ENDROIT OU IL FAIT BON VIVRE",NULL);
INSERT INTO cms_galerien VALUES ("91","28","4","N","../../media_apvn/navi_8_60/_images/6dessusvaulion.jpg",NULL,NULL,"VUE PANORAMIQUE DEPUIS VAULION SUR LE VERDOYANT VALLON DU NOZON",NULL);
INSERT INTO cms_galerien VALUES ("95","28","9","N","../../media_apvn/navi_8_60/_images/lavoir.jpg",NULL,NULL,"LES ANCIENS LAVOIRS DE LA COMMUNE DE CROY",NULL);
INSERT INTO cms_galerien VALUES ("92","28","6","N","../../media_apvn/navi_8_60/_images/vuedelapraz (2).jpg",NULL,NULL,"LA PRAZ ENDROIT OU IL FAIT BON FLANER",NULL);
INSERT INTO cms_galerien VALUES ("93","28","7","N","../../media_apvn/navi_8_60/_images/premier.jpg",NULL,NULL,"PREMIER ET SES FLANCS ENNEIGES",NULL);
INSERT INTO cms_galerien VALUES ("94","28","8","N","../../media_apvn/navi_8_60/_images/vue sur juriens.jpg",NULL,NULL,"JURIENS C\'EST EPOUSTOUFLANT",NULL);
INSERT INTO cms_galerien VALUES ("97","29","1","N","../../media_apvn/navi_8_60/_images/3sauvegardons notre source-001.jpg",NULL,NULL,"LE 29 AOUT 2006 REMISE DE LA PETITION AU GRAND CONSEIL",NULL);
INSERT INTO cms_galerien VALUES ("98","29","2","N","../../media_apvn/navi_8_60/_images/4.11tourtefindelalutte-001.jpg",NULL,NULL,"2007 FETE AU CHANEY POUR L\'ABANDON DU PROJET",NULL);
INSERT INTO cms_galerien VALUES ("111","46","2","P","../../media_apvn/navi_80015/_images/6rueprincipale.jpg",NULL,NULL,"RUE PRINCIPALE DE CE SITE CLUNISIEN",NULL);
INSERT INTO cms_galerien VALUES ("112","46","5","P","../../media_apvn/navi_80015/_images/2jeudelumi�reeglise.jpg",NULL,NULL,"",NULL);
INSERT INTO cms_galerien VALUES ("102","35","1","P","../../media_apvn/navi_80004/_images/3sauvegardons notre source-001.jpg",NULL,NULL,"REMISE DE LA PETITION AU GRAND CONSEIL",NULL);
INSERT INTO cms_galerien VALUES ("110","46","1","P","../../media_apvn/navi_80015/_images/1egliseenautomne.jpg",NULL,NULL,"EGLISE DE ROMAINMOTIER EDIFIEE EN 1028",NULL);
INSERT INTO cms_galerien VALUES ("189","33","10","P","../../media_apvn/navi_80002/_images/canal horisontal.jpg",NULL,NULL,"FLANERIE PRINTANIERE AU BORD DU CANAL",NULL);
INSERT INTO cms_galerien VALUES ("114","46","4","P","../../media_apvn/navi_80015/_images/3porche.jpg",NULL,NULL,"VUE DE LA COUR INTERIEUR PRISE SOUS LE PORCHE DE L\'EGLISE",NULL);
INSERT INTO cms_galerien VALUES ("115","46","6","P","../../media_apvn/navi_80015/_images/4h�telballival.jpg",NULL,NULL,"",NULL);
INSERT INTO cms_galerien VALUES ("116","46","3","P","../../media_apvn/navi_80015/_images/5tourduclocher.jpg",NULL,NULL,"LA GRANGE DE LA DIME (1707) FAIT PARTIE DE L\'ENCEINTE DE L\'ABBATIALE DE ROMAINMOTIER. ELLE ABRITE REGULIEREMENT DE NOUVELLES EXPOSITIONS.",NULL);
INSERT INTO cms_galerien VALUES ("117","33","1","P","../../media_apvn/navi_80002/_images/2007_0828villagecroy0010.jpg",NULL,NULL,"CE BASSIN DATANT DE 1828 A ETE TIRE DE LA CARRIERE DU GRAND CHANNEY SITUEE PRES DU VILLAGE.",NULL);
INSERT INTO cms_galerien VALUES ("119","33","3","P","../../media_apvn/navi_80002/_images/moulin horizontal.jpg",NULL,NULL,"DEPUIS PLUS DE 100 ANS LES AGRICULTEURS DE LA REGION APPORTENT LEURS CEREALES A CROY POUR LA MOUTURE. AUTREFOIS, ILS LIVRAIENT LEUR PRODUIT DE LEUR RECOLTE AUX MOULINS SITUES AU FIL DU NOZON.",NULL);
INSERT INTO cms_galerien VALUES ("120","33","4","P","../../media_apvn/navi_80002/_images/ferme vaudoise.jpg",NULL,NULL,"MAGNIFIQUE FERME VAUDOISE.",NULL);
INSERT INTO cms_galerien VALUES ("121","33","6","P","../../media_apvn/navi_80002/_images/img_3547.jpg",NULL,NULL,"LA CHUTTE DU DARD VAUT LE DETOUR.",NULL);
INSERT INTO cms_galerien VALUES ("122","33","7","P","../../media_apvn/navi_80002/_images/paysage.jpg",NULL,NULL,"UN ENDROIT OU IL FAIT BON FLANER.",NULL);
INSERT INTO cms_galerien VALUES ("123","33","8","P","../../media_apvn/navi_80002/_images/croy.jpg",NULL,NULL,"",NULL);
INSERT INTO cms_galerien VALUES ("131","43","1","P","../../media_apvn/navi_80012/_images/fontaine de juriens.jpg",NULL,NULL,"FONTAINE EN ROC A LA CROISEE DES ROUTES",NULL);
INSERT INTO cms_galerien VALUES ("132","43","2","P","../../media_apvn/navi_80012/_images/eglise de juriens.jpg",NULL,NULL,"EGLISE ATYPIQUE",NULL);
INSERT INTO cms_galerien VALUES ("133","43","3","P","../../media_apvn/navi_80012/_images/vue sur juriens.jpg",NULL,NULL,"VUE PANORAMIQUE A COUPER LE SOUFFLE SUR LE PLATEAU ET LES ALPES",NULL);
INSERT INTO cms_galerien VALUES ("124","42","1","P","../../media_apvn/navi_80011/_images/sourcenozon.jpg",NULL,NULL,"LA SOURCE DU NOZON JAILLIT DE LA ROCHE JUSTE AU-DESSUS DE VAULION",NULL);
INSERT INTO cms_galerien VALUES ("125","42","2","P","../../media_apvn/navi_80011/_images/1vaulion.jpg",NULL,NULL,"VUE PANORAMIQUE DE VAULION AUTREFOIS APPELE IN VALLE LEONIS (DE VAUX ET DU CELTIQUE GLION, POUR EAU COURANTE)",NULL);
INSERT INTO cms_galerien VALUES ("126","42","3","P","../../media_apvn/navi_80011/_images/2coll�ge.jpg",NULL,NULL,"",NULL);
INSERT INTO cms_galerien VALUES ("127","42","4","P","../../media_apvn/navi_80011/_images/4fontaine.jpg",NULL,NULL,"DEPUIS 1997, LA FONTAINE DU 900e A ETE OFFERTE EN PARTIE PAR LES COMMUNES VOISINES",NULL);
INSERT INTO cms_galerien VALUES ("128","42","5","P","../../media_apvn/navi_80011/_images/3 eglise.jpg",NULL,NULL,"EN1755, L\'EGLISE DE VAULION POSSEDAIT UNE PORTE POUR LES FEMMES ET UNE SECONDE POUR LES HOMMES. CETTE PRATIQUE A ETE ABOLIE EN 1968.",NULL);
INSERT INTO cms_galerien VALUES ("129","42","6","P","../../media_apvn/navi_80011/_images/trempli de saut � ski.jpg",NULL,NULL,"",NULL);
INSERT INTO cms_galerien VALUES ("130","42","7","P","../../media_apvn/navi_80011/_images/6dessusvaulion.jpg",NULL,NULL,"VUE PLONGEANTE SUR LE VALLON DU NOZON ET LE PLATEAU",NULL);
INSERT INTO cms_galerien VALUES ("134","43","4","P","../../media_apvn/navi_80012/_images/loire 433.jpg",NULL,NULL,"POIDS PUBLIC",NULL);
INSERT INTO cms_galerien VALUES ("135","43","5","P","../../media_apvn/navi_80012/_images/loire 430.jpg",NULL,NULL,"MAISON VILLAGE ET SON ECRIN DE VERDURE",NULL);
INSERT INTO cms_galerien VALUES ("136","44","1","P","../../media_apvn/navi_80013/_images/premier2.jpg",NULL,NULL,"PREMIER SE SITUE DANS LE JURA VAUDOIS, ENTRE ROMAINMOTIER, BRETONNIERES ET VAULION A 859 M",NULL);
INSERT INTO cms_galerien VALUES ("137","44","2","P","../../media_apvn/navi_80013/_images/loire 400.jpg",NULL,NULL,"MAGNIFIQUE FERME AYANT CONSERVE SON CACHET D ANTAN",NULL);
INSERT INTO cms_galerien VALUES ("138","44","3","P","../../media_apvn/navi_80013/_images/un balcon.jpg",NULL,NULL,"LE BALCON DU JURA",NULL);
INSERT INTO cms_galerien VALUES ("139","44","4","P","../../media_apvn/navi_80013/_images/loire 399.jpg",NULL,NULL,"MAISON VILLAGEOISE DANS SON ECRIN DE VERDURE",NULL);
INSERT INTO cms_galerien VALUES ("140","44","5","P","../../media_apvn/navi_80013/_images/1premier.jpg",NULL,NULL,"VUE DU VILLAGE A LA SAISON DES MOISSONS",NULL);
INSERT INTO cms_galerien VALUES ("141","44","6","P","../../media_apvn/navi_80013/_images/banc.jpg",NULL,NULL,"UN BANC QUI PRETE A LA CONFIDENCE",NULL);
INSERT INTO cms_galerien VALUES ("476","36","12","P","../../media_apvn/navi_80005/_images/4.jpg_300_300.11tourtefindelalutte",NULL,NULL,"",NULL);
INSERT INTO cms_galerien VALUES ("144","32","1","P","../../media_apvn/navi_80001/_images/college.jpg",NULL,NULL,"PLACE DU VILLAGE VERDOYANTE DEVANT LE COLLEGE.",NULL);
INSERT INTO cms_galerien VALUES ("145","32","2","P","../../media_apvn/navi_80001/_images/ferme.jpg",NULL,NULL,"FERME VAUDOISE",NULL);
INSERT INTO cms_galerien VALUES ("146","32","3","P","../../media_apvn/navi_80001/_images/vue sur le village.jpg",NULL,NULL,"CENTRE VILLAGEOIS",NULL);
INSERT INTO cms_galerien VALUES ("147","45","1","P","../../media_apvn/navi_80014/_images/vuedelapr.jpg",NULL,NULL,"VUE SUR LA CHAINE DU JURA DEPUIS LA PRAZ",NULL);
INSERT INTO cms_galerien VALUES ("148","45","2","P","../../media_apvn/navi_80014/_images/eglise de la praz.jpg",NULL,NULL,"EGLISE DU VILLAGE",NULL);
INSERT INTO cms_galerien VALUES ("149","45","3","P","../../media_apvn/navi_80014/_images/loire 436.jpg",NULL,NULL,"MAGNIFIQUE FERME VAUDOISE",NULL);
INSERT INTO cms_galerien VALUES ("150","45","4","P","../../media_apvn/navi_80014/_images/vuedelapraz.jpg",NULL,NULL,"VUE PANORAMIQUE SUR LE PLATEAU VAUDOIS",NULL);
INSERT INTO cms_galerien VALUES ("152","47","2","P","../../media_apvn/navi_90001/_images/xx.jpg",NULL,NULL,"VUE SUR LA CHAINE DU JURA DEPUIS LA PRAZ",NULL);
INSERT INTO cms_galerien VALUES ("202","23","1","N","../../media_apvn/navi_9_30/_images/arbreautomne.jpg",NULL,NULL,"",NULL);
INSERT INTO cms_galerien VALUES ("529","35","3","N","../../media_apvn/navi_10_40/_images/5chouette.jpg",NULL,NULL,"",NULL);
INSERT INTO cms_galerien VALUES ("480","30","18","N","../../media_apvn/navi_8_70/_images/basdelachutte.jpg",NULL,NULL,"",NULL);
INSERT INTO cms_galerien VALUES ("156","50","1","P","../../media_apvn/navi_90004/_images/nive.jpg",NULL,NULL,"",NULL);
INSERT INTO cms_galerien VALUES ("157","51","1","P","../../media_apvn/navi_90005/_images/anemone pulsatille.jpg",NULL,NULL,"",NULL);
INSERT INTO cms_galerien VALUES ("158","51","2","P","../../media_apvn/navi_90005/_images/anemone pulsatille2.jpg",NULL,NULL,"",NULL);
INSERT INTO cms_galerien VALUES ("159","53","1","P","../../media_apvn/navi_90007/_images/chamois.jpg",NULL,NULL,"",NULL);
INSERT INTO cms_galerien VALUES ("160","53","2","P","../../media_apvn/navi_90007/_images/chamois (1).jpg",NULL,NULL,"",NULL);
INSERT INTO cms_galerien VALUES ("161","53","3","P","../../media_apvn/navi_90007/_images/chamois (2).jpg",NULL,NULL,"",NULL);
INSERT INTO cms_galerien VALUES ("162","55","1","P","../../media_apvn/navi_90009/_images/renard4.jpg",NULL,NULL,"",NULL);
INSERT INTO cms_galerien VALUES ("499","61","2","P","../../media_apvn/navi_100003/_images/pierrecromlech2.jpg",NULL,NULL,"",NULL);
INSERT INTO cms_galerien VALUES ("500","61","3","P","../../media_apvn/navi_100003/_images/pierrecromlech4.jpg",NULL,NULL,"",NULL);
INSERT INTO cms_galerien VALUES ("164","55","2","P","../../media_apvn/navi_90009/_images/renard2.jpg",NULL,NULL,"",NULL);
INSERT INTO cms_galerien VALUES ("165","55","4","P","../../media_apvn/navi_90009/_images/renard1.jpg",NULL,NULL,"",NULL);
INSERT INTO cms_galerien VALUES ("503","62","1","P","../../media_apvn/navi_100004/_images/3chouette.jpg",NULL,NULL,"",NULL);
INSERT INTO cms_galerien VALUES ("479","30","17","N","../../media_apvn/navi_8_70/_images/2013-01-02-12-01-25.jpg",NULL,NULL,"",NULL);
INSERT INTO cms_galerien VALUES ("170","57","2","P","../../media_apvn/navi_100001/_images/circuitfontaine2.jpg",NULL,NULL,"CARTE DES CIRCUITS DES FONTAINES",NULL);
INSERT INTO cms_galerien VALUES ("171","57","3","P","../../media_apvn/navi_100001/_images/fontainechaney.jpg",NULL,NULL,"CE BASSIN DATANT DE 1828 A ETE TIRE DE LA CARRIERE DU GRAND CHANNEY SITUEE PRES DU VILLAGE DE CROY.",NULL);
INSERT INTO cms_galerien VALUES ("172","57","4","P","../../media_apvn/navi_100001/_images/panneau fontaine.jpg",NULL,NULL,"PANNEAU DU TOURISME PEDESTRE SITUE A QUELQUES PAS DE LA GARE CFF",NULL);
INSERT INTO cms_galerien VALUES ("173","57","1","P","../../media_apvn/navi_100001/_images/carrriere chanay.jpg",NULL,NULL,"EMPREINTES DE QUELQUES BASSINS ARRACHES A LA ROCHE.",NULL);
INSERT INTO cms_galerien VALUES ("174","34","2","P","../../media_apvn/navi_80003/_images/pinbretonnieres.jpg",NULL,NULL,"UN MICROCLIMAT MEDITERRANEEN PERMET A CERTAINES ESPECES SYLVESTRES DE CROITRE.",NULL);
INSERT INTO cms_galerien VALUES ("175","34","3","P","../../media_apvn/navi_80003/_images/vuebretonnieres.jpg",NULL,NULL,"VUE SUR LES ALPES",NULL);
INSERT INTO cms_galerien VALUES ("176","29","3","N","../../media_apvn/navi_8_60/_images/1brocante.jpg",NULL,NULL,"",NULL);
INSERT INTO cms_galerien VALUES ("177","29","4","N","../../media_apvn/navi_8_60/_images/2007_0901fetechaney0009.jpg",NULL,NULL,"",NULL);
INSERT INTO cms_galerien VALUES ("178","29","5","N","../../media_apvn/navi_8_60/_images/2007_0901villagecroy0001.jpg",NULL,NULL,"",NULL);
INSERT INTO cms_galerien VALUES ("536","28","11","N","../../media_apvn/navi_8_60/_images/aufildunozon.jpg",NULL,NULL,"",NULL);
INSERT INTO cms_galerien VALUES ("180","36","1","P","../../media_apvn/navi_80005/_images/2007_0901fetechaney0022.jpg",NULL,NULL,"FETE SUR LE SITE POUR FETER LA VICTOIRE",NULL);
INSERT INTO cms_galerien VALUES ("181","36","2","P","../../media_apvn/navi_80005/_images/2007_0901fetechaney0009.jpg",NULL,NULL,"FETE SUR LE SITE POUR FETER LA VICTOIRE",NULL);
INSERT INTO cms_galerien VALUES ("182","36","3","P","../../media_apvn/navi_80005/_images/2007_0901villagecroy0001.jpg",NULL,NULL,"FETE SUR LE SITE POUR FETER LA VICTOIRE",NULL);
INSERT INTO cms_galerien VALUES ("183","36","4","P","../../media_apvn/navi_80005/_images/2007_0901villagecroy0007.jpg",NULL,NULL,"GOUPIL, NOTRE MASCOTTE VEILLE AU GRAIN",NULL);
INSERT INTO cms_galerien VALUES ("184","36","5","P","../../media_apvn/navi_80005/_images/4.11tourtefindelalutte.jpg",NULL,NULL,"TOURTE CONFECTIONNEE A CETTE OCCASION",NULL);
INSERT INTO cms_galerien VALUES ("185","33","9","P","../../media_apvn/navi_80002/_images/roueeau.jpg",NULL,NULL,"ROUE A AUBE",NULL);
INSERT INTO cms_galerien VALUES ("186","40","1","P","../../media_apvn/navi_80009/_images/siloasel copy_page_1.jpg",NULL,NULL,"APVN PROPOSE DE CONSTRUIRE DES SILOS PLUS BAS ET EN BOIS",NULL);
INSERT INTO cms_galerien VALUES ("188","46","7","P","../../media_apvn/navi_80015/_images/romainmotier.jpg",NULL,NULL,"VUE PANORAMIQUE SUR ROMAINMOTIER",NULL);
INSERT INTO cms_galerien VALUES ("190","42","8","P","../../media_apvn/navi_80011/_images/dent de vaulion.jpg",NULL,NULL,"LA DENT DE VAULION EST UN SOMMET DU JURA VAUDOIS QUI CULMINE A 1482 METRES ET QUI PRESENTE UN VERSANT NORD ABRUPT.",NULL);
INSERT INTO cms_galerien VALUES ("191","42","9","P","../../media_apvn/navi_80011/_images/mur pierre.jpg",NULL,NULL,"MUR DE PIERRE SECHE QUE VOUS RENCONTREREZ FREQUEMMENT LORS DE VOS RANDONNEES DANS LE JURA",NULL);
INSERT INTO cms_galerien VALUES ("192","53","4","P","../../media_apvn/navi_90007/_images/empreinte chamois.jpg",NULL,NULL,"EMPREINTE DE CHAMOIS",NULL);
INSERT INTO cms_galerien VALUES ("193","58","1","P","../../media_apvn/navi_100002/_images/pierregravee.jpg",NULL,NULL,"MAGNIFIQUE BLOC ERATIQUE GRAVE DATANT DE 4000 ANS AV. J.-C",NULL);
INSERT INTO cms_galerien VALUES ("194","58","2","P","../../media_apvn/navi_100002/_images/pierregravee2.jpg",NULL,NULL,"GROS PLAN DES DESSINS GRAVES SUR LE BLOC ERATIQUE",NULL);
INSERT INTO cms_galerien VALUES ("201","34","4","P","../../media_apvn/navi_80003/_images/bretonnieres.jpg",NULL,NULL,"ENTREE DE CET UNIFQUE BATIMENT RELIGIEUX",NULL);
INSERT INTO cms_galerien VALUES ("198","47","3","P","../../media_apvn/navi_90001/_images/vallonenautomne2.jpg",NULL,NULL,"EN ARRIERE PLAN LA CHAINE DU JURA SE SITUANT ENTRE PREMIER ET VAULION",NULL);
INSERT INTO cms_galerien VALUES ("199","47","1","P","../../media_apvn/navi_90001/_images/dscn1672.jpg",NULL,NULL,"LE SUCHET EST UN SOMMET DU JURA VAUDOIS QUI CULMINE A 1588 METRES",NULL);
INSERT INTO cms_galerien VALUES ("284","31","15","N","../../media_apvn/navi_8_70/_images/1amanite tue-mouches.jpg",NULL,NULL,"CES AMANITES TUE-MOUCHES OU FAUSSES ORONGES ONT UN AIR ALLECHANT. MAIS NE VOUS FIEZ PAS CAR ELLES SONT VENENEUSES.",NULL);
INSERT INTO cms_galerien VALUES ("204","49","1","P","../../media_apvn/navi_90003/_images/lapiaz.jpg",NULL,NULL,"LES CREVASSES SONT DES FISSURES QUI DECOUPENT LA ROCHE EN BLOCS",NULL);
INSERT INTO cms_galerien VALUES ("205","49","2","P","../../media_apvn/navi_90003/_images/lapiaz 1.jpg",NULL,NULL,"LES CREVASSES SONT DES FISSURES QUI DECOUPENT LA ROCHE EN BLOCS",NULL);
INSERT INTO cms_galerien VALUES ("206","49","3","P","../../media_apvn/navi_90003/_images/lapiaz2.jpg",NULL,NULL,"LES CREVASSES SONT DES FISSURES QUI DECOUPENT LA ROCHE EN BLOCS",NULL);
INSERT INTO cms_galerien VALUES ("207","49","4","P","../../media_apvn/navi_90003/_images/lapiaz3.jpg",NULL,NULL,"LES CREVASSES SONT DES FISSURES QUI DECOUPENT LA ROCHE EN BLOCS",NULL);
INSERT INTO cms_galerien VALUES ("272","36","6","P","../../media_apvn/navi_80005/_images/img_0210.jpg",NULL,NULL,"PLANTATION DU CATALPA",NULL);
INSERT INTO cms_galerien VALUES ("273","37","2","P","../../media_apvn/navi_80006/_images/img_0206.jpg",NULL,NULL,"UNE HAIE VIVE A ETE PLANTEE",NULL);
INSERT INTO cms_galerien VALUES ("271","33","5","P","../../media_apvn/navi_80002/_images/img_0202.jpg",NULL,NULL,"",NULL);
INSERT INTO cms_galerien VALUES ("267","23","6","N","../../media_apvn/navi_9_30/_images/563.jpg",NULL,NULL,"",NULL);
INSERT INTO cms_galerien VALUES ("213","48","1","P","../../media_apvn/navi_90002/_images/img_0119.jpg",NULL,NULL,"RESURGENCE DE COURS D\'EAU TYPIQUE DES SOLS KARSTIQUES",NULL);
INSERT INTO cms_galerien VALUES ("214","52","1","P","../../media_apvn/navi_90006/_images/img_0140.jpg",NULL,NULL,"AU PRINTEMPS LES RIVES DU NOZON SONT COUVERTES D\'UN ECRIN BLANC DE NIVEOLES",NULL);
INSERT INTO cms_galerien VALUES ("215","52","7","P","../../media_apvn/navi_90006/_images/img_0116.jpg",NULL,NULL,"",NULL);
INSERT INTO cms_galerien VALUES ("216","52","2","P","../../media_apvn/navi_90006/_images/img_0110.jpg",NULL,NULL,"LES PRIMEVERES SAUVAGES FLEURISSENT DE FEVRIER A MAI. FLEURS RETOMBANTES SE PRESENTENT EN OMBRELLE AU SOMMET DE SA TIGE. CONNUES SOUS LE NOMS DE COUCOUS.",NULL);
INSERT INTO cms_galerien VALUES ("217","52","4","P","../../media_apvn/navi_90006/_images/img_0138.jpg",NULL,NULL,"LA NIVEOLE DE PRINTEMPS, APPELEE VULGAIREMENT CLAUDINETTE, FLEURIT A LA FIN DE L HIVER.",NULL);
INSERT INTO cms_galerien VALUES ("218","52","3","P","../../media_apvn/navi_90006/_images/anemone pulsatille.jpg",NULL,NULL,"ANEMONE PULSATILLE EST UNE PLANTE PROTEGEE.",NULL);
INSERT INTO cms_galerien VALUES ("219","35","1","P","../../media_apvn/navi_80004/_images/en bas jardin 191.jpg",NULL,NULL,"REMISE DE LA PETITION AU GRAND CONSEIL",NULL);
INSERT INTO cms_galerien VALUES ("220","35","1","P","../../media_apvn/navi_80004/_images/en bas jardin 193.jpg",NULL,NULL,"REMISE DE LA PETITION AU GRAND CONSEIL",NULL);
INSERT INTO cms_galerien VALUES ("221","31","1","N","../../media_apvn/navi_8_70/_images/vaulion.jpg",NULL,NULL,"VUE PANORAMIQUE DE VAULION AUTREFOIS APPELE IN VALLE LEONIS (DE VAUX ET DU CELTIQUE GLION, POUR EAU COURANTE",NULL);
INSERT INTO cms_galerien VALUES ("222","31","7","N","../../media_apvn/navi_8_70/_images/vuejuriensromaimotier.jpg",NULL,NULL,"VUE SUR LES ALPES AVEC LES VILLAGES DE ROMAINMOTIER ET JURIENS",NULL);
INSERT INTO cms_galerien VALUES ("223","31","2","N","../../media_apvn/navi_8_70/_images/aufildunozon.jpg",NULL,NULL,"AU FIL DE L\'EAU",NULL);
INSERT INTO cms_galerien VALUES ("224","31","4","N","../../media_apvn/navi_8_70/_images/1egliseenautomne.jpg",NULL,NULL,"EGLISE DE ROMAINMOTIER EDIFIEE EN 1028",NULL);
INSERT INTO cms_galerien VALUES ("225","31","5","N","../../media_apvn/navi_8_70/_images/pierreencoeur.jpg",NULL,NULL,"MEME LES CAILLOUX EN SONT FOUS.",NULL);
INSERT INTO cms_galerien VALUES ("226","31","10","N","../../media_apvn/navi_8_70/_images/dent de vaulion 2.jpg",NULL,NULL,"EN ARRIERE PLAN NOUS DISTINGUONS LES POURTOURS DE LA DENT DE VAULION, QUI CULMINE A 1482 METRES ET QUI PRESENTE UN VERSANT NORD ABRUPT.",NULL);
INSERT INTO cms_galerien VALUES ("227","31","3","N","../../media_apvn/navi_8_70/_images/canal horisontal.jpg",NULL,NULL,"FLANERIE PRINTANNIERE LE LONG DU CANAL",NULL);
INSERT INTO cms_galerien VALUES ("228","31","6","N","../../media_apvn/navi_8_70/_images/img_3547.jpg",NULL,NULL,"LA CHUTTE DU DARD",NULL);
INSERT INTO cms_galerien VALUES ("229","37","4","P","../../media_apvn/navi_80006/_images/1.jpg",NULL,NULL,"PLAQUE COMMEMORATIVE RAPPELANT LA SAUVEGARDE DE LA NAPPE PHREATIQUE",NULL);
INSERT INTO cms_galerien VALUES ("230","37","3","P","../../media_apvn/navi_80006/_images/2.jpg",NULL,NULL,"BANC MIS EN PLACE PRES DU SITE SAUVEGARDE ET QUI PERMET D\'ADMIRER LA VUE",NULL);
INSERT INTO cms_galerien VALUES ("231","37","5","P","../../media_apvn/navi_80006/_images/endroitcarriere.jpg",NULL,NULL,"VUE SUR LA PLAINE DE L\'ORBE DEPUIS LE SITE INITIALEMENT PREVU POUR LA CARRIERE",NULL);
INSERT INTO cms_galerien VALUES ("233","38","1","P","../../media_apvn/navi_80007/_images/2college.jpg",NULL,NULL,"COLLEGE DE VAULION",NULL);
INSERT INTO cms_galerien VALUES ("235","40","2","P","../../media_apvn/navi_80009/_images/logosansentete.jpeg",NULL,NULL,"CREATION DU LOGO APVN",NULL);
INSERT INTO cms_galerien VALUES ("236","40","3","P","../../media_apvn/navi_80009/_images/site 104.jpg",NULL,NULL,"PARTICIPATION AU PROJET PILOTE PROMETERRE",NULL);
INSERT INTO cms_galerien VALUES ("238","41","1","P","../../media_apvn/navi_80010/_images/site.jpg",NULL,NULL,"CREATION DU SITE INTERNET",NULL);
INSERT INTO cms_galerien VALUES ("239","13","1","N","../../media_apvn/navi_13/_images/petiteplagecoeur.jpg",NULL,NULL,"",NULL);
INSERT INTO cms_galerien VALUES ("261","23","3","N","../../media_apvn/navi_9_30/_images/dsc06675.jpg",NULL,NULL,"",NULL);
INSERT INTO cms_galerien VALUES ("262","23","4","N","../../media_apvn/navi_9_30/_images/dsc06686.jpg",NULL,NULL,"",NULL);
INSERT INTO cms_galerien VALUES ("475","17","6","N","../../media_apvn/navi_8_20/_images/panneau fontaine_300_300.jpg",NULL,NULL,"",NULL);
INSERT INTO cms_galerien VALUES ("240","50","2","P","../../media_apvn/navi_90004/_images/img_0147.jpg",NULL,NULL,"",NULL);
INSERT INTO cms_galerien VALUES ("241","50","3","P","../../media_apvn/navi_90004/_images/img_0129.jpg",NULL,NULL,"",NULL);
INSERT INTO cms_galerien VALUES ("242","50","4","P","../../media_apvn/navi_90004/_images/img_0138.jpg",NULL,NULL,"",NULL);
INSERT INTO cms_galerien VALUES ("243","50","5","P","../../media_apvn/navi_90004/_images/img_0145.jpg",NULL,NULL,"",NULL);
INSERT INTO cms_galerien VALUES ("244","50","6","P","../../media_apvn/navi_90004/_images/img_0140.jpg",NULL,NULL,"",NULL);
INSERT INTO cms_galerien VALUES ("245","54","1","P","../../media_apvn/navi_90008/_images/salamandre3.png",NULL,NULL,"ELLE A UN LONG CORPS NOIR MESURANT DANS LES 20 CM TACHETE DE JAUNE",NULL);
INSERT INTO cms_galerien VALUES ("246","54","2","P","../../media_apvn/navi_90008/_images/salamandre2.png",NULL,NULL,"SA PEAU EPAISSE ET BRILLANTE EST MUNIE DE NOMBREUSES GLANDES QUI SECRETENT UN MUCUS EMPOISONNE",NULL);
INSERT INTO cms_galerien VALUES ("247","59","2","P","../../media_apvn/navi_90011/_images/salamandre3.png",NULL,NULL,"ESPECE PROTEGEE LA SALAMANDRE",NULL);
INSERT INTO cms_galerien VALUES ("248","59","5","P","../../media_apvn/navi_90011/_images/chamois (2).jpg",NULL,NULL,"LE CHAMOIS",NULL);
INSERT INTO cms_galerien VALUES ("249","59","6","P","../../media_apvn/navi_90011/_images/renard4.jpg",NULL,NULL,"LE RENARD",NULL);
INSERT INTO cms_galerien VALUES ("478","31","14","N","../../media_apvn/navi_8_70/_images/basdelachutte.jpg",NULL,NULL,"LE BAS DE LA CHUTTE DU DARD",NULL);
INSERT INTO cms_galerien VALUES ("251","31","13","N","../../media_apvn/navi_8_70/_images/2007_12222007hiver0038.jpg",NULL,NULL,"SUR LES FLANS ENNEIGES NOUS DISTINGUONS JURIENS",NULL);
INSERT INTO cms_galerien VALUES ("252","31","8","N","../../media_apvn/navi_8_70/_images/img_1678.jpg",NULL,NULL,"AU FIL DE L\'EAU",NULL);
INSERT INTO cms_galerien VALUES ("253","31","11","N","../../media_apvn/navi_8_70/_images/premier,la vue depuis un jardin.jpg",NULL,NULL,"VUE SUR LE PLATEAU DEPUIS LE VILLAGE DE PREMIER",NULL);
INSERT INTO cms_galerien VALUES ("254","24","1","N","../../media_apvn/navi_9_40/_images/h�ron.jpg",NULL,NULL,"",NULL);
INSERT INTO cms_galerien VALUES ("255","24","2","N","../../media_apvn/navi_9_40/_images/truite.jpg",NULL,NULL,"",NULL);
INSERT INTO cms_galerien VALUES ("256","59","4","P","../../media_apvn/navi_90011/_images/truite.jpg",NULL,NULL,"TRUITES",NULL);
INSERT INTO cms_galerien VALUES ("257","59","7","P","../../media_apvn/navi_90011/_images/h�ron.jpg",NULL,NULL,"",NULL);
INSERT INTO cms_galerien VALUES ("258","59","1","P","../../media_apvn/navi_90011/_images/heron.jpg",NULL,NULL,"HERON",NULL);
INSERT INTO cms_galerien VALUES ("259","35","1","P","../../media_apvn/navi_80004/_images/en bas jardin 190.jpg",NULL,NULL,"REMISE DE LA PETITION AU GRAND CONSEIL",NULL);
INSERT INTO cms_galerien VALUES ("260","42","10","P","../../media_apvn/navi_80011/_images/nozonvaulion33 (5).jpg",NULL,NULL,"A COTE DE CE PONT QUI ENJAMBE LE NOZON VOUS VERREZ DES TOBLERONES, VESTIGES DE LA DERNIERE GUERRE.",NULL);
INSERT INTO cms_galerien VALUES ("263","23","2","N","../../media_apvn/navi_9_30/_images/nozonvaulion3 (4).jpg",NULL,NULL,"",NULL);
INSERT INTO cms_galerien VALUES ("266","31","12","N","../../media_apvn/navi_8_70/_images/nozonvaulion3 (4).jpg",NULL,NULL,"JUSTE EN DESSOUS DE VAULION LE NOZON SE PAVANE DANS UN MAGNIFIQUE ECRIN DE VERDURE.",NULL);
INSERT INTO cms_galerien VALUES ("265","23","5","N","../../media_apvn/navi_9_30/_images/nozonvaulion4 (6).jpg",NULL,NULL,"",NULL);
INSERT INTO cms_galerien VALUES ("268","23","7","N","../../media_apvn/navi_9_30/_images/567.jpg",NULL,NULL,"",NULL);
INSERT INTO cms_galerien VALUES ("269","23","8","N","../../media_apvn/navi_9_30/_images/571.jpg",NULL,NULL,"",NULL);
INSERT INTO cms_galerien VALUES ("270","23","9","N","../../media_apvn/navi_9_30/_images/578.jpg",NULL,NULL,"",NULL);
INSERT INTO cms_galerien VALUES ("274","17","2","N","../../media_apvn/navi_8_20/_images/img_0245.jpg",NULL,NULL,"PLUSIEURS LIGNES DE BUS SONT DISPONIBLES",NULL);
INSERT INTO cms_galerien VALUES ("275","17","1","N","../../media_apvn/navi_8_20/_images/img_0247.jpg",NULL,NULL,"LE VALLON DU NOZON EST TRES ACCESSIBLE PAR LES TRANSPORTS PUBLICS",NULL);
INSERT INTO cms_galerien VALUES ("276","52","5","P","../../media_apvn/navi_90006/_images/img_0220.jpg",NULL,NULL,"PERVENCHE",NULL);
INSERT INTO cms_galerien VALUES ("277","52","6","P","../../media_apvn/navi_90006/_images/img_0238.jpg",NULL,NULL,"",NULL);
INSERT INTO cms_galerien VALUES ("278","48","2","P","../../media_apvn/navi_90002/_images/img_0236.jpg",NULL,NULL,"RESURGENCE DE COURS D\'EAU TYPIQUE DES SOLS KARSTIQUES",NULL);
INSERT INTO cms_galerien VALUES ("279","31","9","N","../../media_apvn/navi_8_70/_images/img_0202.jpg",NULL,NULL,"UN ENDROIT OU ON AIMERAIT QUE LE TEMPS S\'ARRETE",NULL);
INSERT INTO cms_galerien VALUES ("280","8","1","N","../../media_apvn/navi_8/_images/img_0202.jpg",NULL,NULL,"",NULL);
INSERT INTO cms_galerien VALUES ("282","37","1","P","../../media_apvn/navi_80006/_images/site 039.jpg",NULL,NULL,"APVN DEMANDE AUX CFF DE NE PAS PENALISER LES HABITANTS ELOIGNES DE LA GARE CFF. LES TARIFS SONT REVUS A LA BAISSE.",NULL);
INSERT INTO cms_galerien VALUES ("295","55","3","P","../../media_apvn/navi_90009/_images/img_7050_2.jpg",NULL,NULL,"",NULL);
INSERT INTO cms_galerien VALUES ("288","59","3","P","../../media_apvn/navi_90011/_images/img_7044_2.jpg",NULL,NULL,"HERISSON",NULL);
INSERT INTO cms_galerien VALUES ("501","61","4","P","../../media_apvn/navi_100003/_images/pierrecromlech5.jpg",NULL,NULL,"",NULL);
INSERT INTO cms_galerien VALUES ("502","61","5","P","../../media_apvn/navi_100003/_images/pierrecromlech8.jpg",NULL,NULL,"",NULL);
INSERT INTO cms_galerien VALUES ("505","62","3","P","../../media_apvn/navi_100004/_images/4chouette.jpg",NULL,NULL,"",NULL);
INSERT INTO cms_galerien VALUES ("494","56","1","P","../../media_apvn/navi_90010/_images/blaireau.jpg",NULL,NULL,"NOCTURNE ET OMNIVORE, (INSECTES, RONGEURS, TUBERCULES, CHAMPIGNONS, OEUFS, JEUNES LAPINS)  IL N\'A PAS BONNE REPUTATION AUPRES DES AGRICULTEURS ET DES CHASSEURS",NULL);
INSERT INTO cms_galerien VALUES ("481","7","3","N","../../media_apvn/navi_7/_images/abeille.jpg",NULL,NULL,"",NULL);
INSERT INTO cms_galerien VALUES ("482","7","4","N","../../media_apvn/navi_7/_images/papillon.jpg",NULL,NULL,"",NULL);
INSERT INTO cms_galerien VALUES ("483","7","5","N","../../media_apvn/navi_7/_images/papillongrosplan.jpg",NULL,NULL,"",NULL);
INSERT INTO cms_galerien VALUES ("484","39","1","P","../../media_apvn/navi_80008/_images/2010cafebrocante.jpg",NULL,NULL,"EXPOSITION SUR LA BIODIVERSITE",NULL);
INSERT INTO cms_galerien VALUES ("535","28","10","N","../../media_apvn/navi_8_60/_images/dsc05306.jpg",NULL,NULL,"",NULL);
INSERT INTO cms_galerien VALUES ("486","39","2","P","../../media_apvn/navi_80008/_images/2010cafebrocante3.jpg",NULL,NULL,"DIAPORAMA SUR LA BIODIVERSITE",NULL);
INSERT INTO cms_galerien VALUES ("534","35","6","N","../../media_apvn/navi_10_40/_images/dsc05288.jpg",NULL,NULL,"",NULL);
INSERT INTO cms_galerien VALUES ("311","17","3","N","../../media_apvn/navi_8_20/_images/img_0245_300_300.jpg",NULL,NULL,"",NULL);
INSERT INTO cms_galerien VALUES ("312","17","4","N","../../media_apvn/navi_8_20/_images/img_0247_300_300.jpg",NULL,NULL,"",NULL);
INSERT INTO cms_galerien VALUES ("313","17","5","N","../../media_apvn/navi_8_20/_images/panneau fontaine.jpg",NULL,NULL,"",NULL);
INSERT INTO cms_galerien VALUES ("314","30","1","N","../../media_apvn/navi_8_70/_images/1amanite tue-mouches.jpg",NULL,NULL,"",NULL);
INSERT INTO cms_galerien VALUES ("315","30","2","N","../../media_apvn/navi_8_70/_images/1egliseenautomne.jpg",NULL,NULL,"",NULL);
INSERT INTO cms_galerien VALUES ("316","30","3","N","../../media_apvn/navi_8_70/_images/2007_12222007hiver0038.jpg",NULL,NULL,"",NULL);
INSERT INTO cms_galerien VALUES ("317","30","4","N","../../media_apvn/navi_8_70/_images/2013-01-02 12.01.25.jpg",NULL,NULL,"",NULL);
INSERT INTO cms_galerien VALUES ("318","30","5","N","../../media_apvn/navi_8_70/_images/aufildunozon.jpg",NULL,NULL,"",NULL);
INSERT INTO cms_galerien VALUES ("319","30","6","N","../../media_apvn/navi_8_70/_images/bas de la chutte.jpg",NULL,NULL,"",NULL);
INSERT INTO cms_galerien VALUES ("320","30","7","N","../../media_apvn/navi_8_70/_images/canal horisontal.jpg",NULL,NULL,"",NULL);
INSERT INTO cms_galerien VALUES ("321","30","8","N","../../media_apvn/navi_8_70/_images/dent de vaulion 2.jpg",NULL,NULL,"",NULL);
INSERT INTO cms_galerien VALUES ("322","30","9","N","../../media_apvn/navi_8_70/_images/img_0202.jpg",NULL,NULL,"",NULL);
INSERT INTO cms_galerien VALUES ("323","30","10","N","../../media_apvn/navi_8_70/_images/img_1678.jpg",NULL,NULL,"",NULL);
INSERT INTO cms_galerien VALUES ("324","30","11","N","../../media_apvn/navi_8_70/_images/img_3547.jpg",NULL,NULL,"",NULL);
INSERT INTO cms_galerien VALUES ("325","30","12","N","../../media_apvn/navi_8_70/_images/nozonvaulion3 (4).jpg",NULL,NULL,"",NULL);
INSERT INTO cms_galerien VALUES ("326","30","13","N","../../media_apvn/navi_8_70/_images/pierreencoeur.jpg",NULL,NULL,"",NULL);
INSERT INTO cms_galerien VALUES ("327","30","14","N","../../media_apvn/navi_8_70/_images/premier,la vue depuis un jardin.jpg",NULL,NULL,"",NULL);
INSERT INTO cms_galerien VALUES ("328","30","15","N","../../media_apvn/navi_8_70/_images/vaulion.jpg",NULL,NULL,"",NULL);
INSERT INTO cms_galerien VALUES ("329","30","16","N","../../media_apvn/navi_8_70/_images/vuejuriensromaimotier.jpg",NULL,NULL,"",NULL);
INSERT INTO cms_galerien VALUES ("331","29","8","N","../../media_apvn/navi_8_60/_images/1egliseenautomne.jpg",NULL,NULL,"",NULL);
INSERT INTO cms_galerien VALUES ("333","29","10","N","../../media_apvn/navi_8_60/_images/2007_0828villagecroy0010.jpg",NULL,NULL,"",NULL);
INSERT INTO cms_galerien VALUES ("512","62","10","P","../../media_apvn/navi_100004/_images/img1055.jpg",NULL,NULL,"",NULL);
INSERT INTO cms_galerien VALUES ("335","29","12","N","../../media_apvn/navi_8_60/_images/6dessusvaulion.jpg",NULL,NULL,"",NULL);
INSERT INTO cms_galerien VALUES ("511","62","9","P","../../media_apvn/navi_100004/_images/5chouette.jpg",NULL,NULL,"",NULL);
INSERT INTO cms_galerien VALUES ("337","29","14","N","../../media_apvn/navi_8_60/_images/img_3547.jpg",NULL,NULL,"",NULL);
INSERT INTO cms_galerien VALUES ("510","62","8","P","../../media_apvn/navi_100004/_images/9chouette.jpg",NULL,NULL,"",NULL);
INSERT INTO cms_galerien VALUES ("339","29","16","N","../../media_apvn/navi_8_60/_images/lavoir.jpg",NULL,NULL,"",NULL);
INSERT INTO cms_galerien VALUES ("509","62","7","P","../../media_apvn/navi_100004/_images/1chouette.jpg",NULL,NULL,"",NULL);
INSERT INTO cms_galerien VALUES ("341","29","18","N","../../media_apvn/navi_8_60/_images/paysage.jpg",NULL,NULL,"",NULL);
INSERT INTO cms_galerien VALUES ("508","62","6","P","../../media_apvn/navi_100004/_images/8chouette.jpg",NULL,NULL,"",NULL);
INSERT INTO cms_galerien VALUES ("343","29","20","N","../../media_apvn/navi_8_60/_images/premier.jpg",NULL,NULL,"",NULL);
INSERT INTO cms_galerien VALUES ("507","62","5","P","../../media_apvn/navi_100004/_images/2chouette.jpg",NULL,NULL,"",NULL);
INSERT INTO cms_galerien VALUES ("345","29","22","N","../../media_apvn/navi_8_60/_images/vuedelapraz (2).jpg",NULL,NULL,"",NULL);
INSERT INTO cms_galerien VALUES ("506","62","4","P","../../media_apvn/navi_100004/_images/7chouette.jpg",NULL,NULL,"",NULL);
INSERT INTO cms_galerien VALUES ("347","29","24","N","../../media_apvn/navi_8_60/_images/vue sur juriens.jpg",NULL,NULL,"",NULL);
INSERT INTO cms_galerien VALUES ("348","23","10","N","../../media_apvn/navi_9_30/_images/563_300_300.jpg",NULL,NULL,"",NULL);
INSERT INTO cms_galerien VALUES ("349","23","11","N","../../media_apvn/navi_9_30/_images/567_300_300.jpg",NULL,NULL,"",NULL);
INSERT INTO cms_galerien VALUES ("350","23","12","N","../../media_apvn/navi_9_30/_images/571_300_300.jpg",NULL,NULL,"",NULL);
INSERT INTO cms_galerien VALUES ("351","23","13","N","../../media_apvn/navi_9_30/_images/578_300_300.jpg",NULL,NULL,"",NULL);
INSERT INTO cms_galerien VALUES ("352","23","14","N","../../media_apvn/navi_9_30/_images/arbreautomne_300_300.jpg",NULL,NULL,"",NULL);
INSERT INTO cms_galerien VALUES ("353","23","15","N","../../media_apvn/navi_9_30/_images/dsc06675_300_300.jpg",NULL,NULL,"",NULL);
INSERT INTO cms_galerien VALUES ("354","23","16","N","../../media_apvn/navi_9_30/_images/dsc06686_300_300.jpg",NULL,NULL,"",NULL);
INSERT INTO cms_galerien VALUES ("355","23","17","N","../../media_apvn/navi_9_30/_images/nozonvaulion3 (4)_300_300.jpg",NULL,NULL,"",NULL);
INSERT INTO cms_galerien VALUES ("356","23","18","N","../../media_apvn/navi_9_30/_images/nozonvaulion4 (6)_300_300.jpg",NULL,NULL,"",NULL);
INSERT INTO cms_galerien VALUES ("357","57","5","P","../../media_apvn/navi_100001/_images/carrriere chanay_300_300.jpg",NULL,NULL,"",NULL);
INSERT INTO cms_galerien VALUES ("358","57","6","P","../../media_apvn/navi_100001/_images/circuitfontaine2_300_300.jpg",NULL,NULL,"",NULL);
INSERT INTO cms_galerien VALUES ("359","57","7","P","../../media_apvn/navi_100001/_images/fontainechaney_300_300.jpg",NULL,NULL,"",NULL);
INSERT INTO cms_galerien VALUES ("360","57","8","P","../../media_apvn/navi_100001/_images/panneau fontaine_300_300.jpg",NULL,NULL,"",NULL);
INSERT INTO cms_galerien VALUES ("361","58","3","P","../../media_apvn/navi_100002/_images/pierregravee2_300_300.jpg",NULL,NULL,"",NULL);
INSERT INTO cms_galerien VALUES ("362","58","4","P","../../media_apvn/navi_100002/_images/pierregravee_300_300.jpg",NULL,NULL,"",NULL);
INSERT INTO cms_galerien VALUES ("363","32","4","P","../../media_apvn/navi_80001/_images/college_300_300.jpg",NULL,NULL,"",NULL);
INSERT INTO cms_galerien VALUES ("364","32","5","P","../../media_apvn/navi_80001/_images/ferme_300_300.jpg",NULL,NULL,"",NULL);
INSERT INTO cms_galerien VALUES ("365","32","6","P","../../media_apvn/navi_80001/_images/vue sur le village_300_300.jpg",NULL,NULL,"",NULL);
INSERT INTO cms_galerien VALUES ("366","33","11","P","../../media_apvn/navi_80002/_images/2007_0828villagecroy0010_300_300.jpg",NULL,NULL,"",NULL);
INSERT INTO cms_galerien VALUES ("367","33","12","P","../../media_apvn/navi_80002/_images/canal horisontal_300_300.jpg",NULL,NULL,"",NULL);
INSERT INTO cms_galerien VALUES ("368","33","13","P","../../media_apvn/navi_80002/_images/croy_300_300.jpg",NULL,NULL,"",NULL);
INSERT INTO cms_galerien VALUES ("369","33","14","P","../../media_apvn/navi_80002/_images/ferme vaudoise_300_300.jpg",NULL,NULL,"",NULL);
INSERT INTO cms_galerien VALUES ("370","33","15","P","../../media_apvn/navi_80002/_images/img_0202_300_300.jpg",NULL,NULL,"",NULL);
INSERT INTO cms_galerien VALUES ("371","33","16","P","../../media_apvn/navi_80002/_images/img_3547_300_300.jpg",NULL,NULL,"",NULL);
INSERT INTO cms_galerien VALUES ("372","33","17","P","../../media_apvn/navi_80002/_images/lavoir_300_300.jpg",NULL,NULL,"",NULL);
INSERT INTO cms_galerien VALUES ("373","33","18","P","../../media_apvn/navi_80002/_images/moulin horizontal_300_300.jpg",NULL,NULL,"",NULL);
INSERT INTO cms_galerien VALUES ("374","33","19","P","../../media_apvn/navi_80002/_images/paysage_300_300.jpg",NULL,NULL,"",NULL);
INSERT INTO cms_galerien VALUES ("375","33","20","P","../../media_apvn/navi_80002/_images/roueeau_300_300.jpg",NULL,NULL,"",NULL);
INSERT INTO cms_galerien VALUES ("376","34","5","P","../../media_apvn/navi_80003/_images/bretonnieres_300_300.jpg",NULL,NULL,"",NULL);
INSERT INTO cms_galerien VALUES ("377","34","6","P","../../media_apvn/navi_80003/_images/eglise br_300_300.jpg",NULL,NULL,"",NULL);
INSERT INTO cms_galerien VALUES ("378","34","7","P","../../media_apvn/navi_80003/_images/pinbretonnieres_300_300.jpg",NULL,NULL,"",NULL);
INSERT INTO cms_galerien VALUES ("379","34","8","P","../../media_apvn/navi_80003/_images/vuebretonnieres_300_300.jpg",NULL,NULL,"",NULL);
INSERT INTO cms_galerien VALUES ("380","35","1","P","../../media_apvn/navi_80004/_images/3sauvegardons notre source-001_300_300.jpg",NULL,NULL,"",NULL);
INSERT INTO cms_galerien VALUES ("381","35","1","P","../../media_apvn/navi_80004/_images/en bas jardin 190_300_300.jpg",NULL,NULL,"",NULL);
INSERT INTO cms_galerien VALUES ("382","35","1","P","../../media_apvn/navi_80004/_images/en bas jardin 191_300_300.jpg",NULL,NULL,"",NULL);
INSERT INTO cms_galerien VALUES ("383","35","1","P","../../media_apvn/navi_80004/_images/en bas jardin 193_300_300.jpg",NULL,NULL,"",NULL);
INSERT INTO cms_galerien VALUES ("384","36","7","P","../../media_apvn/navi_80005/_images/2007_0901fetechaney0009_300_300.jpg",NULL,NULL,"",NULL);
INSERT INTO cms_galerien VALUES ("385","36","8","P","../../media_apvn/navi_80005/_images/2007_0901fetechaney0022_300_300.jpg",NULL,NULL,"",NULL);
INSERT INTO cms_galerien VALUES ("386","36","9","P","../../media_apvn/navi_80005/_images/2007_0901villagecroy0001_300_300.jpg",NULL,NULL,"",NULL);
INSERT INTO cms_galerien VALUES ("387","36","10","P","../../media_apvn/navi_80005/_images/2007_0901villagecroy0007_300_300.jpg",NULL,NULL,"",NULL);
INSERT INTO cms_galerien VALUES ("388","36","11","P","../../media_apvn/navi_80005/_images/img_0210_300_300.jpg",NULL,NULL,"",NULL);
INSERT INTO cms_galerien VALUES ("389","37","6","P","../../media_apvn/navi_80006/_images/1_300_300.jpg",NULL,NULL,"",NULL);
INSERT INTO cms_galerien VALUES ("390","37","7","P","../../media_apvn/navi_80006/_images/2_300_300.jpg",NULL,NULL,"",NULL);
INSERT INTO cms_galerien VALUES ("391","37","8","P","../../media_apvn/navi_80006/_images/endroitcarriere_300_300.jpg",NULL,NULL,"",NULL);
INSERT INTO cms_galerien VALUES ("392","37","9","P","../../media_apvn/navi_80006/_images/img_0206_300_300.jpg",NULL,NULL,"",NULL);
INSERT INTO cms_galerien VALUES ("393","37","10","P","../../media_apvn/navi_80006/_images/site 039_300_300.jpg",NULL,NULL,"",NULL);
INSERT INTO cms_galerien VALUES ("394","38","2","P","../../media_apvn/navi_80007/_images/2college_300_300.jpg",NULL,NULL,"",NULL);
INSERT INTO cms_galerien VALUES ("533","35","5","N","../../media_apvn/navi_10_40/_images/chouette1.jpg",NULL,NULL,"",NULL);
INSERT INTO cms_galerien VALUES ("396","40","4","P","../../media_apvn/navi_80009/_images/logosansentete_300_300.jpeg",NULL,NULL,"",NULL);
INSERT INTO cms_galerien VALUES ("397","40","5","P","../../media_apvn/navi_80009/_images/siloasel copy_page_1_300_300.jpg",NULL,NULL,"",NULL);
INSERT INTO cms_galerien VALUES ("398","40","6","P","../../media_apvn/navi_80009/_images/site 104_300_300.jpg",NULL,NULL,"",NULL);
INSERT INTO cms_galerien VALUES ("399","41","2","P","../../media_apvn/navi_80010/_images/site_300_300.jpg",NULL,NULL,"",NULL);
INSERT INTO cms_galerien VALUES ("400","42","11","P","../../media_apvn/navi_80011/_images/1vaulion_300_300.jpg",NULL,NULL,"",NULL);
INSERT INTO cms_galerien VALUES ("401","42","12","P","../../media_apvn/navi_80011/_images/3 eglise_300_300.jpg",NULL,NULL,"",NULL);
INSERT INTO cms_galerien VALUES ("402","42","13","P","../../media_apvn/navi_80011/_images/4fontaine_300_300.jpg",NULL,NULL,"",NULL);
INSERT INTO cms_galerien VALUES ("403","42","14","P","../../media_apvn/navi_80011/_images/6dessusvaulion_300_300.jpg",NULL,NULL,"",NULL);
INSERT INTO cms_galerien VALUES ("404","42","15","P","../../media_apvn/navi_80011/_images/dent de vaulion_300_300.jpg",NULL,NULL,"",NULL);
INSERT INTO cms_galerien VALUES ("405","42","16","P","../../media_apvn/navi_80011/_images/mur pierre_300_300.jpg",NULL,NULL,"",NULL);
INSERT INTO cms_galerien VALUES ("406","42","17","P","../../media_apvn/navi_80011/_images/nozonvaulion33 (5)_300_300.jpg",NULL,NULL,"",NULL);
INSERT INTO cms_galerien VALUES ("407","42","18","P","../../media_apvn/navi_80011/_images/nozonvaulion3 (9)_300_300.jpg",NULL,NULL,"",NULL);
INSERT INTO cms_galerien VALUES ("408","42","19","P","../../media_apvn/navi_80011/_images/sourcenozon_300_300.jpg",NULL,NULL,"",NULL);
INSERT INTO cms_galerien VALUES ("409","43","6","P","../../media_apvn/navi_80012/_images/eglise de juriens_300_300.jpg",NULL,NULL,"",NULL);
INSERT INTO cms_galerien VALUES ("410","43","7","P","../../media_apvn/navi_80012/_images/fontaine de juriens_300_300.jpg",NULL,NULL,"",NULL);
INSERT INTO cms_galerien VALUES ("411","43","8","P","../../media_apvn/navi_80012/_images/loire 430_300_300.jpg",NULL,NULL,"",NULL);
INSERT INTO cms_galerien VALUES ("412","43","9","P","../../media_apvn/navi_80012/_images/loire 433_300_300.jpg",NULL,NULL,"",NULL);
INSERT INTO cms_galerien VALUES ("413","43","10","P","../../media_apvn/navi_80012/_images/vue sur juriens_300_300.jpg",NULL,NULL,"",NULL);
INSERT INTO cms_galerien VALUES ("414","44","7","P","../../media_apvn/navi_80013/_images/1premier_300_300.jpg",NULL,NULL,"",NULL);
INSERT INTO cms_galerien VALUES ("415","44","8","P","../../media_apvn/navi_80013/_images/banc_300_300.jpg",NULL,NULL,"",NULL);
INSERT INTO cms_galerien VALUES ("416","44","9","P","../../media_apvn/navi_80013/_images/loire 399_300_300.jpg",NULL,NULL,"",NULL);
INSERT INTO cms_galerien VALUES ("417","44","10","P","../../media_apvn/navi_80013/_images/loire 400_300_300.jpg",NULL,NULL,"",NULL);
INSERT INTO cms_galerien VALUES ("418","44","11","P","../../media_apvn/navi_80013/_images/premier2_300_300.jpg",NULL,NULL,"",NULL);
INSERT INTO cms_galerien VALUES ("419","44","12","P","../../media_apvn/navi_80013/_images/un balcon_300_300.jpg",NULL,NULL,"",NULL);
INSERT INTO cms_galerien VALUES ("420","45","5","P","../../media_apvn/navi_80014/_images/eglise de la praz_300_300.jpg",NULL,NULL,"",NULL);
INSERT INTO cms_galerien VALUES ("421","45","6","P","../../media_apvn/navi_80014/_images/loire 436_300_300.jpg",NULL,NULL,"",NULL);
INSERT INTO cms_galerien VALUES ("422","45","7","P","../../media_apvn/navi_80014/_images/vuedelapr_300_300.jpg",NULL,NULL,"",NULL);
INSERT INTO cms_galerien VALUES ("423","45","8","P","../../media_apvn/navi_80014/_images/vuedelapraz_300_300.jpg",NULL,NULL,"",NULL);
INSERT INTO cms_galerien VALUES ("424","46","8","P","../../media_apvn/navi_80015/_images/1egliseenautomne_300_300.jpg",NULL,NULL,"",NULL);
INSERT INTO cms_galerien VALUES ("425","46","9","P","../../media_apvn/navi_80015/_images/3porche_300_300.jpg",NULL,NULL,"",NULL);
INSERT INTO cms_galerien VALUES ("426","46","10","P","../../media_apvn/navi_80015/_images/5tourduclocher_300_300.jpg",NULL,NULL,"",NULL);
INSERT INTO cms_galerien VALUES ("427","46","11","P","../../media_apvn/navi_80015/_images/6rueprincipale_300_300.jpg",NULL,NULL,"",NULL);
INSERT INTO cms_galerien VALUES ("428","46","12","P","../../media_apvn/navi_80015/_images/romainmotier_300_300.jpg",NULL,NULL,"",NULL);
INSERT INTO cms_galerien VALUES ("429","47","4","P","../../media_apvn/navi_90001/_images/6dessusvaulion_300_300.jpg",NULL,NULL,"",NULL);
INSERT INTO cms_galerien VALUES ("430","47","5","P","../../media_apvn/navi_90001/_images/6dessusvaulion.jpg",NULL,NULL,"",NULL);
INSERT INTO cms_galerien VALUES ("431","47","6","P","../../media_apvn/navi_90001/_images/dscn1672_300_300.jpg",NULL,NULL,"",NULL);
INSERT INTO cms_galerien VALUES ("432","47","7","P","../../media_apvn/navi_90001/_images/vallonenautomne2_300_300.jpg",NULL,NULL,"",NULL);
INSERT INTO cms_galerien VALUES ("433","47","8","P","../../media_apvn/navi_90001/_images/xx_300_300.jpg",NULL,NULL,"",NULL);
INSERT INTO cms_galerien VALUES ("434","48","3","P","../../media_apvn/navi_90002/_images/img_0119_300_300.jpg",NULL,NULL,"",NULL);
INSERT INTO cms_galerien VALUES ("435","48","4","P","../../media_apvn/navi_90002/_images/img_0236_300_300.jpg",NULL,NULL,"",NULL);
INSERT INTO cms_galerien VALUES ("436","49","5","P","../../media_apvn/navi_90003/_images/lapiaz 1_300_300.jpg",NULL,NULL,"",NULL);
INSERT INTO cms_galerien VALUES ("437","49","6","P","../../media_apvn/navi_90003/_images/lapiaz2_300_300.jpg",NULL,NULL,"",NULL);
INSERT INTO cms_galerien VALUES ("438","49","7","P","../../media_apvn/navi_90003/_images/lapiaz_300_300.jpg",NULL,NULL,"",NULL);
INSERT INTO cms_galerien VALUES ("439","49","8","P","../../media_apvn/navi_90003/_images/lapiaz3_300_300.jpg",NULL,NULL,"",NULL);
INSERT INTO cms_galerien VALUES ("440","50","7","P","../../media_apvn/navi_90004/_images/img_0129_300_300.jpg",NULL,NULL,"",NULL);
INSERT INTO cms_galerien VALUES ("441","50","8","P","../../media_apvn/navi_90004/_images/img_0138_300_300.jpg",NULL,NULL,"",NULL);
INSERT INTO cms_galerien VALUES ("442","50","9","P","../../media_apvn/navi_90004/_images/img_0140_300_300.jpg",NULL,NULL,"",NULL);
INSERT INTO cms_galerien VALUES ("443","50","10","P","../../media_apvn/navi_90004/_images/img_0145_300_300.jpg",NULL,NULL,"",NULL);
INSERT INTO cms_galerien VALUES ("444","50","11","P","../../media_apvn/navi_90004/_images/img_0147_300_300.jpg",NULL,NULL,"",NULL);
INSERT INTO cms_galerien VALUES ("445","50","12","P","../../media_apvn/navi_90004/_images/nive_300_300.jpg",NULL,NULL,"",NULL);
INSERT INTO cms_galerien VALUES ("446","51","3","P","../../media_apvn/navi_90005/_images/anemone pulsatille2_300_300.jpg",NULL,NULL,"",NULL);
INSERT INTO cms_galerien VALUES ("447","51","4","P","../../media_apvn/navi_90005/_images/anemone pulsatille_300_300.jpg",NULL,NULL,"",NULL);
INSERT INTO cms_galerien VALUES ("448","52","8","P","../../media_apvn/navi_90006/_images/anemone pulsatille_300_300.jpg",NULL,NULL,"",NULL);
INSERT INTO cms_galerien VALUES ("449","52","9","P","../../media_apvn/navi_90006/_images/img_0110_300_300.jpg",NULL,NULL,"",NULL);
INSERT INTO cms_galerien VALUES ("450","52","10","P","../../media_apvn/navi_90006/_images/img_0116_300_300.jpg",NULL,NULL,"",NULL);
INSERT INTO cms_galerien VALUES ("451","52","11","P","../../media_apvn/navi_90006/_images/img_0138_300_300.jpg",NULL,NULL,"",NULL);
INSERT INTO cms_galerien VALUES ("452","52","12","P","../../media_apvn/navi_90006/_images/img_0140_300_300.jpg",NULL,NULL,"",NULL);
INSERT INTO cms_galerien VALUES ("453","52","13","P","../../media_apvn/navi_90006/_images/img_0220_300_300.jpg",NULL,NULL,"",NULL);
INSERT INTO cms_galerien VALUES ("454","52","14","P","../../media_apvn/navi_90006/_images/img_0238_300_300.jpg",NULL,NULL,"",NULL);
INSERT INTO cms_galerien VALUES ("455","53","5","P","../../media_apvn/navi_90007/_images/chamois (1)_300_300.jpg",NULL,NULL,"",NULL);
INSERT INTO cms_galerien VALUES ("456","53","6","P","../../media_apvn/navi_90007/_images/chamois (2)_300_300.jpg",NULL,NULL,"",NULL);
INSERT INTO cms_galerien VALUES ("457","53","7","P","../../media_apvn/navi_90007/_images/chamois_300_300.jpg",NULL,NULL,"",NULL);
INSERT INTO cms_galerien VALUES ("458","53","8","P","../../media_apvn/navi_90007/_images/empreinte chamois_300_300.jpg",NULL,NULL,"",NULL);
INSERT INTO cms_galerien VALUES ("459","54","3","P","../../media_apvn/navi_90008/_images/salamandre2_300_300.png",NULL,NULL,"",NULL);
INSERT INTO cms_galerien VALUES ("460","54","4","P","../../media_apvn/navi_90008/_images/salamandre3_300_300.png",NULL,NULL,"",NULL);
INSERT INTO cms_galerien VALUES ("461","55","5","P","../../media_apvn/navi_90009/_images/img_7050_2_300_300.jpg",NULL,NULL,"",NULL);
INSERT INTO cms_galerien VALUES ("462","55","6","P","../../media_apvn/navi_90009/_images/renard1_300_300.jpg",NULL,NULL,"",NULL);
INSERT INTO cms_galerien VALUES ("463","55","7","P","../../media_apvn/navi_90009/_images/renard2_300_300.jpg",NULL,NULL,"",NULL);
INSERT INTO cms_galerien VALUES ("464","55","8","P","../../media_apvn/navi_90009/_images/renard_300_300.jpg",NULL,NULL,"",NULL);
INSERT INTO cms_galerien VALUES ("465","55","9","P","../../media_apvn/navi_90009/_images/renard4_300_300.jpg",NULL,NULL,"",NULL);
INSERT INTO cms_galerien VALUES ("466","55","10","P","../../media_apvn/navi_90009/_images/renard.jpg",NULL,NULL,"",NULL);
INSERT INTO cms_galerien VALUES ("497","61","1","P","../../media_apvn/navi_100003/_images/pierrecromlech.jpg",NULL,NULL,"",NULL);
INSERT INTO cms_galerien VALUES ("504","62","2","P","../../media_apvn/navi_100004/_images/6chouette.jpg",NULL,NULL,"",NULL);
INSERT INTO cms_galerien VALUES ("469","59","8","P","../../media_apvn/navi_90011/_images/chamois (2)_300_300.jpg",NULL,NULL,"",NULL);
INSERT INTO cms_galerien VALUES ("470","59","9","P","../../media_apvn/navi_90011/_images/heron_300_300.jpg",NULL,NULL,"",NULL);
INSERT INTO cms_galerien VALUES ("471","59","10","P","../../media_apvn/navi_90011/_images/img_7044_2_300_300.jpg",NULL,NULL,"",NULL);
INSERT INTO cms_galerien VALUES ("472","59","11","P","../../media_apvn/navi_90011/_images/renard4_300_300.jpg",NULL,NULL,"",NULL);
INSERT INTO cms_galerien VALUES ("473","59","12","P","../../media_apvn/navi_90011/_images/salamandre3_300_300.png",NULL,NULL,"",NULL);
INSERT INTO cms_galerien VALUES ("474","59","13","P","../../media_apvn/navi_90011/_images/truite_300_300.jpg",NULL,NULL,"",NULL);
INSERT INTO cms_galerien VALUES ("477","31","16","N","../../media_apvn/navi_8_70/_images/2013-01-02-12-01-25.jpg",NULL,NULL,"LE NOZON EST REVETU DE SA ROBE HIVERNALE",NULL);
INSERT INTO cms_galerien VALUES ("525","35","1","N","../../media_apvn/navi_10_40/_images/9chouette.jpg",NULL,NULL,"",NULL);
INSERT INTO cms_galerien VALUES ("530","35","4","N","../../media_apvn/navi_10_40/_images/4chouette.jpg",NULL,NULL,"",NULL);
INSERT INTO cms_galerien VALUES ("527","35","2","N","../../media_apvn/navi_10_40/_images/img1055.jpg",NULL,NULL,"",NULL);



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
INSERT INTO cms_members VALUES ("7","hempen@bluewin.ch","429ba59278e5aef557c7e8e1b2115399","2012-06-11 20:21:37","2012-06-11 22:47:51");
INSERT INTO cms_members VALUES ("2","webprog10","a3e6096dbe9169213e7880821129428e","0000-00-00 00:00:00","0000-00-00 00:00:00");
INSERT INTO cms_members VALUES ("9","info@hempenweb.ch","e9911456f39b5e6d738669ac8d438b20","2012-06-16 11:06:47","2012-07-10 22:54:44");
INSERT INTO cms_members VALUES ("8","scivolino@bluewin.ch","e10adc3949ba59abbe56e057f20f883e","2012-06-11 22:48:26","2012-06-11 22:50:45");



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
INSERT INTO cms_modules VALUES ("2","KONTAKTFORMULAR","Kontaktformular");
INSERT INTO cms_modules VALUES ("1","PAGES_OVERVIEW","Unterseiten zur aktuellen Menuposition auflisten");
INSERT INTO cms_modules VALUES ("6","SITEMAP","Sitemap");
INSERT INTO cms_modules VALUES ("7","GOOGLEMAPS","Filialsuche mit Googlemaps");
INSERT INTO cms_modules VALUES ("8","MEMBER_LOGIN","Member-Login ");



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
INSERT INTO cms_navigation VALUES ("10","navi_10","3","0","","","Découverte","","","","Découverte","","navi_10","j","n","H");
INSERT INTO cms_navigation VALUES ("8","navi_8","1","0","","","Accueil","","","","Accueil","","navi_8","j","j","H");
INSERT INTO cms_navigation VALUES ("9","navi_9","2","0","","","Nature et Paysage","","","","NatureetPaysage","","navi_9","j","n","H");
INSERT INTO cms_navigation VALUES ("7","navi_6","5","0","","","Contact","","","","Contact","","navi_7","j","n","H");
INSERT INTO cms_navigation VALUES ("13","navi_13","6","0","","","Plan du site","","","","Plandusite","","navi_13","j","n","S");
INSERT INTO cms_navigation VALUES ("14","navi_14","7","0","","","Empreinte","","","","Empreinte","","navi_14","j","n","S");
INSERT INTO cms_navigation VALUES ("15","navi_8","1","20","","","Territoire","","","","Territoire","","navi_8_10","j","n","H");
INSERT INTO cms_navigation VALUES ("33","navi_10","3","30","","","Biodiversité","","","","Biodiversité","","navi_10_30","n","n","H");
INSERT INTO cms_navigation VALUES ("17","navi_8","1","30","","","Accès au Vallon","","","","AccèsauVallon","","navi_8_20","j","n","H");
INSERT INTO cms_navigation VALUES ("11","navi_11","4","0","","","Boutique","","","","Boutique","","navi_11","n","n","H");
INSERT INTO cms_navigation VALUES ("12","navi_12","8","0","","","Liens","","","","Liens","","navi_12","j","n","S");
INSERT INTO cms_navigation VALUES ("29","navi_8","1","60","","","Activités et réalisations","","","","Activitésetréalisa","","navi_8_60","j","n","H");
INSERT INTO cms_navigation VALUES ("26","navi_10","3","10","","","Itinéraires","","","","Itinéraires","","navi_10_10","j","n","H");
INSERT INTO cms_navigation VALUES ("21","navi_9","2","10","","","Géologie","","","","Géologie","","navi_9_10","j","n","H");
INSERT INTO cms_navigation VALUES ("22","navi_9","2","30","","","Flore","","","","Flore","","navi_9_20","j","n","H");
INSERT INTO cms_navigation VALUES ("23","navi_9","2","20","","","Végétation","","","","Végétation","","navi_9_30","j","n","H");
INSERT INTO cms_navigation VALUES ("24","navi_9","2","40","","","Faune","","","","Faune","","navi_9_40","j","n","H");
INSERT INTO cms_navigation VALUES ("31","navi_8","1","70","","","Photos","","","","Photos","","navi_8_70","j","n","H");
INSERT INTO cms_navigation VALUES ("27","navi_10","3","20","","","Hébergement","","","","Hébergement","","navi_10_20","j","n","H");
INSERT INTO cms_navigation VALUES ("28","navi_8","1","10","","","Bienvenue","","","","Bienvenue","","navi_8_60","j","n","H");
INSERT INTO cms_navigation VALUES ("30","navi_8","1","40","","","Objectifs","","","","Objectifs","","navi_8_70","j","n","H");
INSERT INTO cms_navigation VALUES ("32","navi_8","1","50","","","Historique","","","","Historique","","navi_8_80","j","n","H");
INSERT INTO cms_navigation VALUES ("34","navi_6","5","10","","","Contact_10","","","","contact_10","","navi_6_10","n","n","H");
INSERT INTO cms_navigation VALUES ("35","navi_10","3","40","","","Près de chez vous","","","","Prèsdechezvous","","navi_10_40","j","n","H");



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
INSERT INTO cms_pages VALUES ("32","15","navi_8","navi_80001","0000-00-00 00:00:00","0000-00-00 00:00:00","","","Bofflens","","","","Territoire","",NULL,NULL,"Bofflens > De l’avis des responsables du patrimoine vaudois, la place de ce  village doit aboslument être protégée, car c\'est un véritable joyau de verdure. Une des seules rescapées du canton.",NULL,NULL,NULL,"<p>Les plus anciens souvenirs de Bofflens remontent à la période des Hallstatt.&nbsp;Des Celtes ensevelis sous des tumuli qui ont livré leurs trésors: des parures et objets rituels y ont été retrouvés. Durant tout le Moyen Age, Bofflens fit partie des terres de l\'Abbaye de Romainmôtier.&nbsp;<br /><br />La tête de bœuf symbolise l\'élevage du bétail, l\'une des ressources des habitants, et, peut-être, l\'origine du nom de la localité.</p>",NULL,NULL,NULL,"",NULL,"1","../../media_apvn/navi_80001/_thumbs/th_college.jpg","../../media_apvn/navi_80001/_thumbs/th_vue sur le village.jpg","c","0","0","j","8");
INSERT INTO cms_pages VALUES ("47","21","navi_9","navi_90001","0000-00-00 00:00:00","0000-00-00 00:00:00","","","Jura","","","","Géologie","",NULL,NULL,"Le Jura  > a donné son nom à une période célèbre de notre planète, le Jurassique (200 à 
-145 millions d’années).C\'est à cette époque que les sédiments allant former la chaîne du 
Jura",NULL,NULL,NULL,"<p><span>Pendant cette période géologique, la région était en effet une mer chaude peu profonde, avec une profusion biologique et corallienne comparable à l\'actuelle mer Rouge.&nbsp;</span>Au cours du Crétacé (145,5 ± 4 à 65,5 ma), le Jura va peu à peu émerger. Bien plus tard la poussée du massif alpin va entraîner la déformation des séries sédimentaires, qui vont se plisser et se failler. Le Jura va alors acquérir sa forme actuelle de «&nbsp;croissant&nbsp;», lequel contourne le nord-ouest du massif alpin.<br /><br /></p>
<p>Les terrains du Jura sont constitués à <strong>95&nbsp;%</strong> de deux types de roches&nbsp;: les <strong>calcaires</strong> et les <strong>marnes</strong>, qui conditionnent la présence ou l’absence d’eau en surface.</p>
<p><br />Les zones où le <strong>calcaire</strong> affleure sont en effet caractérisées par une infiltration des eaux vers un <strong>réseau hydrographique souterrain</strong> important, processus qui se traduit en surface par la présence des formes géomorphologiques caractéristiques des zones karstiques (dolines, lapiaz, gouffres).<br /><br /></p>
<p>Au contraire, les zones d’affleurement <strong>marneux</strong> (substance imperméable argileuse) se caractérisent par une restitution de l’eau au <strong>réseau hydrographique de surface</strong> (résurgences, fontaines, sources...) ou par la présence de zones de stagnation de l’eau (lacs, tourbières, marais...) qui ne peut s’infiltrer vers les aquifères calcaires. On trouve aussi dans le Jura de nombreux lacs d’origine glaciaire qui se situent au fond de combes où un substrat morainique datant des grandes glaciations garantit l’imperméabilité du sous-sol.<br /><br />Réf. http:/fr.wikipedia.org/wiki/Massif_du_Jura&nbsp;</p>",NULL,NULL,NULL,"",NULL,"1","../../media_apvn/navi_90001/_thumbs/th_vallonenautomne2.jpg","../../media_apvn/navi_90001/_thumbs/th_dscn1672.jpg","c","0","0","j","1");
INSERT INTO cms_pages VALUES ("33","15","navi_8","navi_80002","0000-00-00 00:00:00","0000-00-00 00:00:00","","","Croy","","","","Territoire","",NULL,NULL,"Croy > sis à la croisée des routes liant Lausanne à Vallorbe et Yverdon à la Vallée de Joux. 
Cette commune a une superficie de 449 ha.",NULL,NULL,NULL,"<p style=\"text-align: left;\">Son histoire est étroitement liée à celle de la juridiction de l\'Abbaye de Romainmôtier. <br /><br />Au XIXe siècle, le village est réputé pour ses nombreux bassins de fontaines tirés de la carrière dite du Chaney.<br /><br />La commune a à coeur de préserver intact son patrimoine :&nbsp;fontaines, lavoirs, roue à aube, four&nbsp;banal.</p>",NULL,NULL,NULL,"",NULL,"1","../../media_apvn/navi_80002/_thumbs/th_2007_0828villagecroy0010.jpg","../../media_apvn/navi_80002/_thumbs/th_lavoir.jpg","c","0","0","j","2");
INSERT INTO cms_pages VALUES ("34","15","navi_8","navi_80003","0000-00-00 00:00:00","0000-00-00 00:00:00","","","Bretonnières","","","","Territoire","",NULL,NULL,"Bretonnières > Petit village du Pied du Jura, à la lisière des forêts qui séparent les gorges de 
l\'Orbe du Vallon du Nozon. Notre plus proche voisin Croy, ne touche pas notre commune.",NULL,NULL,NULL,"<div style=\"text-align: left;\" align=\"justify\">Le village est typiquement campagnard et n\'a guère changé. L\'agriculture a toujours été étroitement liée à ses origines. Les ancêtres y cultivaient des lentilles, d\'où le sobriquet de \"lè Caque-lentelyle\".<br /><br /></div>
<div style=\"text-align: left;\" align=\"justify\">Dans les années 1800-1850, on y sélectionne un blé appelé \"le Bretonnières\". Les armoiries témoignent de cette époque.<br /><br /></div>
<div align=\"justify\">&nbsp;</div>",NULL,NULL,NULL,"",NULL,"1","../../media_apvn/navi_80003/_thumbs/th_eglise br.jpg","../../media_apvn/navi_80003/_thumbs/th_vuebretonnieres.jpg","c","0","0","j","7");
INSERT INTO cms_pages VALUES ("35","29","navi_8","navi_80004","0000-00-00 00:00:00","0000-00-00 00:00:00","","","2006","","","","Activités_et_réali","",NULL,NULL,"2006 -> Fondation de l’Association pour la préservation du vallon du Nozon le 8 mars de 
cette année.",NULL,NULL,NULL,"<ul>
<li><span style=\"font-size: small;\"><span style=\"color: #000000;\">Fondation de l’Association pour la préservation du vallon du Nozon (APVN) le 8 mars. <br /></span></span></li>
<li><span style=\"font-size: small;\"><span style=\"color: #000000;\"><br /></span></span></li>
<li><span style=\"color: #000000;\"><span style=\"font-size: small;\">Café-brocante avec lecture au coin du feu de textes de et par Gil Pidoux. <br /></span></span></li>
<li><span style=\"color: #000000;\"><span style=\"font-size: small;\"><br /></span></span></li>
<li><span style=\"color: #000000;\"><span style=\"font-size: small;\">Lancement d’une pétition contre le projet d’implantation d’une carrière au Chaney.<br /></span></span></li>
<li><span style=\"color: #000000;\"><span style=\"font-size: small;\"><br /></span></span></li>
<li><span style=\"color: #000000;\"><span style=\"font-size: small;\">Remise de la <strong>pétition avec 5925 signatures </strong>au Grand Conseil vaudois le 29 août 2006.<br /></span></span></li>
<li><span style=\"color: #000000;\"><span style=\"font-size: small;\"><br /></span></span></li>
<li><span style=\"color: #000000;\"><span style=\"font-size: small;\">Défense de notre pétition devant la Commission de pétition du Grand Conseil qui décide </span></span><span style=\"font-size: small;\"><span style=\"color: #000000;\">de la transmettre au Grand Conseil.<br /></span></span></li>
<li><span style=\"font-size: small;\"><span style=\"color: #000000;\"><br /></span></span></li>
<li><span style=\"color: #000000;\"><span style=\"font-size: small;\">Stand au Marché de Noël de Croy.</span></span></li>
</ul>",NULL,NULL,NULL,"",NULL,"1","../../media_apvn/navi_80004/_thumbs/th_en bas jardin 193.jpg","../../media_apvn/navi_80004/_thumbs/th_en bas jardin 191.jpg","c","0","0","j","1");
INSERT INTO cms_pages VALUES ("36","29","navi_8","navi_80005","0000-00-00 00:00:00","0000-00-00 00:00:00","","","2007","","","","Activités_et_réali","",NULL,NULL,"2007 -> Fête au Chaney pour célébrer la victoire de l’abandon du projet de carrière.",NULL,NULL,NULL,"<ul>
<li>Fête au Chaney pour célébrer la victoire de l’abandon du projet de carrière.&nbsp;Le 28 juin 2007, le Grand Conseil refuse toute mise à l’enquête de carrières au Chaney&nbsp;et abandonne le projet en raison de la présence d’une nappe d’eau buvable rendant impossible toute exploitation, conformément à la loi fédérale sur la protection des eaux.</li>
<li><strong><br />Sauvegarde d’une importante nappe d’eau buvable</strong>, <strong>de couloirs et réserves de faune et d’un paysage</strong> <strong>inscrit à l’inventaire des monuments naturels</strong> et des sites IMNS n°92 du canton de Vaud.</li>
<li></li>
<li></li>
<li></li>
<li>Croy, plantation d’un catalpa à la place de jeux des enfants.</li>
<li></li>
</ul>",NULL,NULL,NULL,"",NULL,"1","../../media_apvn/navi_80005/_thumbs/th_2007_0901fetechaney0009.jpg","../../media_apvn/navi_80005/_thumbs/th_4findelalutte-001_100_100.jpg","c","0","0","j","2");
INSERT INTO cms_pages VALUES ("37","29","navi_8","navi_80006","0000-00-00 00:00:00","0000-00-00 00:00:00","","","2008","","","","Activités_et_réali","",NULL,NULL,"2008 -> L\'APVN intervient auprès des CFF en ce qui concerne le nouveau parking. Les tarifs 
furent revus à la baisse.",NULL,NULL,NULL,"<ul>
<li>Projet de parking CFF à la gare de Croy&nbsp;: <strong>l’APVN</strong> s’adresse aux usagers puis <strong>demande aux CFF </strong>que le parking projeté ne soit pas payant afin<strong> de ne pas pénaliser les personnes habitant les villages éloignés de la gare</strong> et faisant l’effort d’utiliser les transports publics&nbsp;pour se rendre à leur travail. <strong>Les tarifs furent revus à la baisse</strong>.</li>
<li></li>
<li>&nbsp;</li>
<li></li>
<li>Plantation d’une haie vive, composée de plants locaux, au Praz-Amiet, non loin de l’EMS.</li>
<li></li>
<li></li>
<li>Don d’un banc confectionné par un habitant du village. Ce dernier est placé sur le chemin des Trésils, tout près de l\'endroit où se serait située la carrière. Vue superbe sur la plaine de l’Orbe.</li>
</ul>",NULL,NULL,NULL,"",NULL,"1","../../media_apvn/navi_80006/_thumbs/th_site 039.jpg","../../media_apvn/navi_80006/_thumbs/th_img_0206.jpg","c","0","0","j","3");
INSERT INTO cms_pages VALUES ("38","29","navi_8","navi_80007","0000-00-00 00:00:00","0000-00-00 00:00:00","","","2009","","","","Activités_et_réali","",NULL,NULL,"2009 -> Soutien de l’étude envisageant des repas « Fourchette verte » pour les élèves du 
collège de Vaulion.",NULL,NULL,NULL,"<ul>
<li><span style=\"font-size: small;\"><span style=\"color: #000000;\">Soutien de l’étude envisageant des repas <strong>«&nbsp;Fourchette verte&nbsp;» pour les élèves</strong> du collège </span></span><span style=\"font-size: small;\"><span style=\"color: #000000;\"><strong>de Vaulion.</strong><br /><br /></span></span></li>
<li><span style=\"color: #000000;\"><span style=\"font-size: small;\">Don d’un grand tilleul à l’EMS de Croy.</span></span></li>
</ul>",NULL,NULL,NULL,"",NULL,"1","../../media_apvn/navi_80007/_thumbs/th_2college.jpg","","c","0","0","j","4");
INSERT INTO cms_pages VALUES ("39","29","navi_8","navi_80008","0000-00-00 00:00:00","0000-00-00 00:00:00","","","2010","","","","Activités_et_réali","",NULL,NULL,"2010 -> Café-brocante avec exposition sur la biodiversité et la participation de la future 
association « Panier bio des 3 vallons\"",NULL,NULL,NULL,"<ul>
<li>
<div align=\"left\"><span style=\"font-size: small;\"><span style=\"color: #000000;\"><strong>Café-brocante</strong> à la Grande Salle de Croy <strong>avec exposition sur la biodiversité</strong> et la&nbsp;</span></span><span style=\"font-size: small;\"><span style=\"color: #000000;\"> participation de la future association «&nbsp;Panier bio des 3 vallons et environs&nbsp;». </span></span></div>
<div align=\"left\"><span style=\"font-size: small;\"><span style=\"color: #000000;\"><br /></span></span></div>
</li>
<li>
<div align=\"left\"><span style=\"font-size: small;\"><span style=\"color: #000000;\">Présentation de <strong>nichoirs à hyménoptères</strong> vendus au profit de l’APVN.</span></span></div>
<div align=\"left\"><span style=\"font-size: small;\"><span style=\"color: #000000;\"><br /></span></span></div>
</li>
<li><span style=\"color: #000000;\"><span style=\"font-size: small;\">Rencontre avec des nouveaux habitants pour leur présenter l’APVN.</span></span></li>
</ul>",NULL,NULL,NULL,"",NULL,"1","../../media_apvn/navi_80008/_thumbs/th_2010cafebrocante.jpg","../../media_apvn/navi_80008/_thumbs/th_2010cafebrocante3.jpg","c","0","0","j","5");
INSERT INTO cms_pages VALUES ("40","29","navi_8","navi_80009","0000-00-00 00:00:00","0000-00-00 00:00:00","","","2011","","","","Activités_et_réali","",NULL,NULL,"2011 -> Soutien d’un groupe d’habitants de Bretonnières dans leur opposition à la construction d’un silo de 21 mètres qui aurait défiguré ce village.",NULL,NULL,NULL,"<p><span style=\"font-size: small;\"><span style=\"color: #000000;\">Soutien d’un groupe d’habitants de Bretonnières dans leur Opposition à la construction&nbsp;</span></span><span style=\"font-size: small;\"><span style=\"color: #000000;\">d’un silo de 21 m et <strong>proposition de construire deux silos plus bas</strong>, car celui projeté aurait&nbsp;</span></span><span style=\"font-size: small;\"><span style=\"color: #000000;\">défiguré le village. Finalement, un seul silo plus bas sera construit.</span></span></p>
<p>&nbsp;</p>
<p><span style=\"font-size: small;\"><span style=\"color: #000000;\"><span style=\"font-size: small;\">Création d’un <strong>logo</strong> pour notre association.</span></span></span></p>
<p>&nbsp;</p>
<p>&nbsp;</p>
<p><span style=\"font-size: small;\"><span style=\"color: #000000;\"><span style=\"font-size: small;\"><strong>Projet pilote de Prometerre -</strong> <strong>Qualité du Paysage</strong>&nbsp;: envoi des réflexions demandées à notre comité.</span></span></span></p>",NULL,NULL,NULL,"<p>&nbsp;</p>
<p>&nbsp;</p>",NULL,"1","../../media_apvn/navi_80009/_thumbs/th_siloasel copy_page_1.jpg","","c","0","0","j","6");
INSERT INTO cms_pages VALUES ("41","29","navi_8","navi_80010","0000-00-00 00:00:00","0000-00-00 00:00:00","","","2012","","","","Activités_et_réali","",NULL,NULL,"2012 -> Développement d’un site internet",NULL,NULL,NULL,"<p><span style=\"color: #000000;\"><span style=\"font-size: small;\">Recherche, documentation, organisation et développement du site internet. <br /><br />Le comité a pu vérifier que le projet de carrière au Chaney a été retiré du futur PDCar&nbsp;</span></span><span style=\"font-size: small;\"><span style=\"color: #000000;\">(Plan Directeur des carrières du canton de Vaud).</span></span></p>
<p>&nbsp;</p>",NULL,NULL,NULL,"",NULL,"1","../../media_apvn/navi_80010/_thumbs/th_site.jpg","","c","0","0","j","7");
INSERT INTO cms_pages VALUES ("42","15","navi_8","navi_80011","0000-00-00 00:00:00","0000-00-00 00:00:00","","","Vaulion","","","","Territoire","",NULL,NULL,"Vaulion > A l\'extrêmité supérieure du vallon, se situe la source du Nozon. De la Dent-de-
Vaulion vous pourrez admirer la vue qui s\'étend sur les Alpes et le plateau et sur de 
nombreux lacs sui",NULL,NULL,NULL,"<p>Ce village, cité&nbsp;pour la première fois en 1097, fut créé par les serfs fuyants du seigneur Cicon,&nbsp;qui s\'y étaient réfugiés.<br /><br />Vaulion est la plus grande commune du vallon avec 1500 ha. Dans l\'alignement de ses maisons, divers artisans, commerces et industries se partagent les deux côtés de la rue principale. <br /><br />Le village a su garder le caractère agricole de ses débuts.<br /><br /></p>",NULL,NULL,NULL,"",NULL,"1","../../media_apvn/navi_80011/_thumbs/th_sourcenozon.jpg","../../media_apvn/navi_80011/_thumbs/th_1vaulion.jpg","c","0","0","j","3");
INSERT INTO cms_pages VALUES ("43","15","navi_8","navi_80012","0000-00-00 00:00:00","0000-00-00 00:00:00","","","Juriens","","","","Territoire","",NULL,NULL,"Juriens > Juché à 800 mètres d\'altitude, Juriens est un petit village où il y fait bon vivre. Il 
bénéficie du calme et d\'une vue magnifique sur le plateau et les alpes.",NULL,NULL,NULL,"<p>Juriens avec une superficie de&nbsp;936 ha&nbsp;est un petit village bien groupé entouré de tous côtés par des forêts.<br />&nbsp;</p>
<p>L\'emplacement a été choisi en fonction des sources et de l\'ensoleillement. Les sources sont nombreuses et entourent tout le village. A l\'origine, les maisons étaient alignées et formaient un village-rue,&nbsp; mais des incendies successifs ont démantelé cet ordre et lors des reconstructions, le village a trouvé son étalement actuel.</p>",NULL,NULL,NULL,"",NULL,"1","../../media_apvn/navi_80012/_thumbs/th_vue sur juriens.jpg","../../media_apvn/navi_80012/_thumbs/th_fontaine de juriens.jpg","c","0","0","j","4");
INSERT INTO cms_pages VALUES ("44","15","navi_8","navi_80013","0000-00-00 00:00:00","0000-00-00 00:00:00","","","Premier","","","","Territoire","",NULL,NULL,"Premier > Juché à une altitude moyenne de 859 m ont l\'appelle aussi le balcon du Jura. Le 
prunier indique que le nom de la commune est dérivé du patois \"premi\" qui signifie prunier.",NULL,NULL,NULL,"<p><span style=\"font-size: small;\">C\'est au milieu du XVI<sup>e</sup> siècle que le village de Premier fut fondé.&nbsp;C\'est après la révolution vaudoise que les limites officielles du village furent établies. Sous la domination bernoise, le village fournissait des soldats à&nbsp;Leurs Excellences. On considérait Premier comme un relais.<br /><br />Du milieu à la fin du 19ème siècle, Premier fut un centre important de tissage de toiles à fromage qui étaient exportées loin à la ronde. En 1884 et 1898&nbsp;&nbsp;deux importants incendies ravagèrent&nbsp;le village.<br /></span></p>",NULL,NULL,NULL,"",NULL,"1","../../media_apvn/navi_80013/_thumbs/th_1premier.jpg","../../media_apvn/navi_80013/_thumbs/th_loire 400.jpg","c","0","0","j","5");
INSERT INTO cms_pages VALUES ("45","15","navi_8","navi_80014","0000-00-00 00:00:00","0000-00-00 00:00:00","","","La Praz","","","","Territoire","",NULL,NULL,"La Praz > cette commune a une superficie de 512 ha. On nomme ces habitants les Pratouts.",NULL,NULL,NULL,"<p>Cette commune a une superficie de 512 ha. On nomme ces habitants les Pratouts</p>",NULL,NULL,NULL,"",NULL,"1","../../media_apvn/navi_80014/_thumbs/th_vuedelapr.jpg","../../media_apvn/navi_80014/_thumbs/th_eglise de la praz.jpg","c","0","0","j","6");
INSERT INTO cms_pages VALUES ("46","15","navi_8","navi_80015","0000-00-00 00:00:00","0000-00-00 00:00:00","","","Romainmôtier","","","","Territoire","",NULL,NULL,"Romainmôtier > Le petit bourg et site clunisien vit au rythme de l\'abbatiale romane. Durant 
l\'année des concerts, des mariages y ont lieu.",NULL,NULL,NULL,"<p align=\"left\">Le périmètre de notre association couvre une superficie de 54,93 km2.&nbsp; Cette superficie s’étend sur tout le <strong>Vallon du Nozon</strong> soit un ensemble de huit communes situées sur le cours du Nozon.</p>
<p align=\"left\">&nbsp;</p>
<p align=\"left\"><br />Romainmôtier abrite l\'Abbatiale la plus ancienne de Suisse fondée au 10e siècle sur les fondations de bâtiments plus anciens. Lieu de ressourcement, de sérénité et de méditation ce village offre au visiteur un décor exceptionnel.</p>
<p align=\"left\">&nbsp;</p>
<div class=\"detail03LeftText\">&nbsp;</div>
<p align=\"left\"><span style=\"font-size: small;\"><br /><br /><br /><br /></span></p>",NULL,NULL,NULL,"",NULL,"1","../../media_apvn/navi_80015/_thumbs/th_1egliseenautomne.jpg","../../media_apvn/navi_80015/_thumbs/th_6rueprincipale.jpg","c","0","0","j","1");
INSERT INTO cms_pages VALUES ("48","21","navi_9","navi_90002","0000-00-00 00:00:00","0000-00-00 00:00:00","","","Sols karstiques","","","","Géologie","",NULL,NULL,"Le karst  > structure géomorphologique résultant de l\'érosion hydrochimique et hydraulique 
de formations de roches carbonatées (formations calcaires).",NULL,NULL,NULL,"<p align=\"left\"><strong></strong>Des phénomènes d\'érosion de type karstique se manifestent aussi dans des structures «&nbsp;pseudokarstiques&nbsp;».<br />&nbsp;</p>
<p>Les structures karstiques concernent environ le cinquième de la superficie continentale de la Terre. Les karsts présentent pour la plupart un paysage tourmenté, un réseau hydrographique essentiellement souterrain et un sous-sol creusé de nombreuses cavités&nbsp;:<strong> reliefs ruiniformes, pertes et résurgences de cours d\'eau, grottes et gouffres</strong><em> ...&nbsp;<br /></em>&nbsp;</p>
<p>L\'étude du karst est la karstologie. À l\'étude des cavités et réseau hydrogéologiques du karst sont notamment associées la spéléologie, la plongée souterraine et la biospéologie.</p>
<p>&nbsp;</p>
<p>Réf. http://fr.wikipedia.org/wiki/Karst</p>",NULL,NULL,NULL,"",NULL,"1","../../media_apvn/navi_90002/_thumbs/th_img_0119.jpg","","c","0","0","j","2");
INSERT INTO cms_pages VALUES ("50","22","navi_9","navi_90004","0000-00-00 00:00:00","0000-00-00 00:00:00","","","Nivéole","","","","Flore","",NULL,NULL,"La nivéole > on rencontre cette nivéole en Europe centrale. En février, chaque randonneur 
aura l’occasion d’admirer cette fleur en remontant le vallon du Nozon.",NULL,NULL,NULL,"<p>La <strong>nivéole de printemps</strong>, appelée vulgairement <strong>claudinette</strong>, est une plante bulbeuse, qui appartient à la famille des Liliaceas<em>. </em>La nivéole de printemps ressemble à une perce-neige. Sa fleur est plus grande que cette dernière et sa tige mesure de 15 à25 cm. La nivéole de printemps fleurit deux semaines plus tard que la perce-neige commune (février-mars). Ainsi, la floraison a lieu non pas au printemps, mais à la fin de l\'hiver.<br /><br /></p>
<p>Les six pétales présentent une tâche apicale, verte chez la variété type, jaunâtre chez la variété <em>carpathicum</em> Sims présente dans la partie orientale de sa distribution.</p>
<p><br />On rencontre cette nivéole&nbsp;principalement en Europe centrale. Dans le courant du mois de février, chaque randonneur aura ainsi l’occasion d’admirer cette flore à plusieurs endroits en remontant le cours du Nozon.<br /><br />Réf : http://fr.wikipedia.org/wiki/Nivéole_de_printemps</p>",NULL,NULL,NULL,"",NULL,"1","../../media_apvn/navi_90004/_thumbs/th_img_0140.jpg","../../media_apvn/navi_90004/_thumbs/th_img_0147.jpg","c","0","0","j","2");
INSERT INTO cms_pages VALUES ("49","21","navi_9","navi_90003","0000-00-00 00:00:00","0000-00-00 00:00:00","","","Lapiaz","","","","Géologie","",NULL,NULL,"Lapiaz > formation géologique de surface dans les roches calcaires et dolomitiques, créée par 
le ruissellement des eaux de pluie qui dissolve",NULL,NULL,NULL,"<p>Ce type de sol, déchiqueté, aux aspérités coupantes lorsqu\'il s\'agit de <strong>calcaire dur, est sillonné</strong> de nombreuses <strong>rigoles, fissures et crevasses de taille variable</strong>, dont certaines peuvent atteindre plusieurs mètres. D\'autres structures se distinguent&nbsp;: les vasques et les arches.</p>
<p>La roche est également souvent perforée, donnant à voir en surface les mécanismes karstiques qui président ailleurs au <strong>creusement des grottes</strong>, avens, scialets et autres cavités naturelles.</p>
<p>Les sillons sont de deux types&nbsp;:</p>
<p>les <strong>rigoles, suivant la ligne de la pente</strong>, rectilignes ou sinueuses,</p>
<p>les <strong>crevasses </strong>(ou leisines), qui sont un approfondissement des fissures et qui découpent la roche en blocs.<br />&nbsp;</p>
<p>Les lapiés peuvent être&nbsp;:</p>
<p>mis à <strong>nu</strong> par les glaciers, subaériens, formés le plus souvent de rigoles parallèles et étroites avec arêtes aiguës,</p>
<p><strong>couverts</strong> par de l\'humus ou un sol récent, et formés de sillons et d\'arêtes émoussés,</p>
<p><strong>découverts</strong>, issus des lapiés couverts mais sans couverture de sol.</p>
<p>&nbsp;</p>
<p>Réf&nbsp;: http://fr.wikipedia.org/wiki/Lapiaz</p>",NULL,NULL,NULL,"",NULL,"1","../../media_apvn/navi_90003/_thumbs/th_lapiaz 1.jpg","../../media_apvn/navi_90003/_thumbs/th_lapiaz2.jpg","c","0","0","j","3");
INSERT INTO cms_pages VALUES ("51","22","navi_9","navi_90005","0000-00-00 00:00:00","0000-00-00 00:00:00","","","Anémone pulsatille","","","","Flore","",NULL,NULL,"L\'Anémone pulsatille > nommée également  coquerelle (Pulsatilla vulgaris) est une plante 
herbacée vivace de la famille des Ranunculaceae.",NULL,NULL,NULL,"<p>L\'<strong>Anémone pulsatille</strong> ou <strong>coquerelle</strong> est une plante herbacée vivace de la famille des Ranunculaceae.<br />&nbsp;</p>
<p>La pulsatille de montagne <em>pulsatilla montana</em> mesure de 10 à 30 centimètres. Les feuilles en rosette sont argentées, velues et pétiolées. Les fleurs sont violet-noir.</p>
<p>En dépit de son nom vernaculaire, elle n\'est pas classée dans le genre des anémones.<br /><br />Réf : http://fr.wikipedia.org/wiki/anemone_pulsatille&nbsp;</p>",NULL,NULL,NULL,"",NULL,"1","../../media_apvn/navi_90005/_thumbs/th_anemone pulsatille.jpg","../../media_apvn/navi_90005/_thumbs/th_anemone pulsatille2.jpg","c","0","0","j","3");
INSERT INTO cms_pages VALUES ("52","22","navi_9","navi_90006","0000-00-00 00:00:00","0000-00-00 00:00:00","","","Flore","","","","Flore","",NULL,NULL,"En vous promenant dans les forêts du vallon du Nozon vous aurez la possibilité de voir une multitude de fleurs aussi belles les unes que les autres.",NULL,NULL,NULL,"<p>En vous promenant dans les forêts du vallon du Nozon vous aurez la possibilité de voir une multitude de fleurs aussi belles les unes que les autres. Certaines d’entre elles comme l’anémone pulsatille fait partie des espèces protégées.</p>",NULL,NULL,NULL,"",NULL,"1","../../media_apvn/navi_90006/_thumbs/th_img_0110.jpg","../../media_apvn/navi_90006/_thumbs/th_img_0138.jpg","c","0","0","j","1");
INSERT INTO cms_pages VALUES ("53","24","navi_9","navi_90007","0000-00-00 00:00:00","0000-00-00 00:00:00","","","Le chamois","","","","Faune","",NULL,NULL,"Le chamois > est une espèce de mammifères de la famille des Bovidés. Ils vivent dans les 
forêts et pâturages , depuis les Alpes jusqu\'à l\'Azerbaïdjan.",NULL,NULL,NULL,"<ul>
<li>
<p><span style=\"color: #000000; font-size: small;\">Ce sont les plus petits représentants des Caprinés&nbsp;</span><span style=\"color: #000000; font-size: small;\">(dont les Mouflons </span><span style=\"color: #000000; font-size: small;\">et Bouquetins</span><span style=\"color: #000000; font-size: small;\">). Ils mesurent en général pour les mâles adultes entre 125 et </span><span style=\"color: #000000;\"><span style=\"font-size: small;\">135&nbsp;centimères du museau à la queue, entre 70 et 80&nbsp;centimètres de haut au garrot. Il a des cornes d\'environ 27&nbsp;centimètres pour le mâle. Le poids est compris entre 22 et 62&nbsp;kilogrammes. Les femelles leur sont presque toujours inférieures en poids et en taille. Les animaux ont un poids maximum en automne, alors qu’ils ont accumulé des réserves durant l’été. À la fin de l’hiver, le poids des chamois peut diminuer de moitié, et au début du printemps ils épuisent leurs réserves.</span></span></p>
<p><span style=\"color: #000000; font-size: small;\">&nbsp;</span></p>
<p><span style=\"color: #000000; font-size: small;\">Les chamois peuvent vivre jusqu’à 25 ans, mais peu dépassent 15 ou 16 ans. À partir de 10 ans commence la </span><span style=\"font-size: small;\"><span style=\"color: #000000;\">vieillesse. Leur poids diminue et cela jusqu\'à leur mort.</span></span></p>
<p><span style=\"color: #000000; font-size: small;\">&nbsp;</span></p>
<p><span style=\"font-size: small;\"><span style=\"color: #000000;\">La taille des cornes permet de déterminer l’âge des éterlous et éterles de la première année jusqu’à leur quatrième anniversaire. Dans la première, les chevreaux de la première année n’ont pas de cornes visibles, ceux de deux ans ont leurs cornes jusqu’au milieu des oreilles, les chamois de trois ans les ont aussi hautes que les oreilles et dès trois ans les cornes dépassent largement les oreilles. <br /><br /></span></span></p>
<p align=\"left\"><span style=\"font-size: small;\"><span style=\"color: #000000;\">La mise bas est très rapide. Dès que cela est fait, la mère allaite et lèche le nouveau-né jusqu’à ce qu’il soit complètement sec. Généralement elle recherche un endroit difficile d’accès pour assurer sa tranquillité. À sa naissance, le jeune chamois mesure environ 50&nbsp;cm de longueur et 35&nbsp;cm au garrot&nbsp;; son poids est de 2 à 2,7&nbsp;kg. Après quelques heures, il est déjà capable de se tenir debout. Une semaine après, les deux rejoignent le troupeau. Assez rapidement le petit se met à jouer avec les autres de la harde.<br /><br /></span></span></p>
<p align=\"left\"><span style=\"font-size: small;\"><span style=\"color: #000000;\">Le lait est extrêmement nourrissant et permet au nouveau-né de prendre une centaine de grammes par jour en moyenne. Après deux mois il pèse entre 9 et 10&nbsp;kilogrammes et broute déjà. À partir de 3 mois, la mère ne voudra plus l’allaiter, mais il sera complètement sevré à la période du rut qui suivra. Il aura alors atteint la moitié du poids d’un adulte. Les orphelins ne sont jamais adoptés par une femelle ayant déjà un petit et il est rare qu’une femelle adopte un chevreau. La plupart du temps, ceux-ci sont condamnés à disparaître.</span></span></p>
<p>&nbsp;</p>
<p>Réf.&nbsp;: //http:fr.wikipedia.org/wiki/Chamois</p>
<p><span style=\"font-size: small;\"><span style=\"color: #000000;\"><br /></span></span></p>
</li>
</ul>",NULL,NULL,NULL,"",NULL,"1","../../media_apvn/navi_90007/_thumbs/th_chamois (2).jpg","../../media_apvn/navi_90007/_thumbs/th_chamois (1).jpg","c","0","0","j","3");
INSERT INTO cms_pages VALUES ("54","24","navi_9","navi_90008","0000-00-00 00:00:00","0000-00-00 00:00:00","","","La salamandre","","","","Faune","",NULL,NULL,"La salamandre > la peau épaisse et brillante de la salamandre tachetée est munie de glandes 
qui sécrètent une fine couche de mucus empoisonné par une neurotoxine.",NULL,NULL,NULL,"<p><span style=\"color: #000000;\">Son aspect très particulier et très visible la rend difficile à confondre avec une autre espèce&nbsp;: un long corps noir mesurant dans les 20&nbsp;cm, tacheté de jaune (parfois d\'orange) à la peau luisante semblant huileuse. <strong>Elle se déplace lentement</strong>, d\'une démarche pataude et a la particularité de pouvoir régénérer&nbsp;</span><span style=\"color: #000000;\">des parties perdues ou blessées de son corps très rapidement et de se défendre par la sécrétion d\'une neurotoxine, le samandarin</span><span style=\"color: #000000;\">.<br /></span></p>
<p><span style=\"color: #000000;\"><br />Ses<strong> oeufs sont vert émeraude</strong>, couleur donnée par l\'algue présente à la surface de l\'oeuf aussi bien que dans l\'embryon. </span><span style=\"color: #000000;\">Son <strong>espérance de vie est de 30 ans</strong>. La salamandre tachetée reste habituellement cachée dans la journée dans des cavités humides, sous des pierres ou des écorces, ou dans des troncs d\'arbres pourris. Chez la salamandre tachetée, seule la larve est aquatique.<br /></span></p>
<p><span style=\"color: #000000;\"><br />La peau épaisse et brillante de la salamandre tachetée est munie de nombreuses <strong>glandes qui sécrètent </strong>une fine couche de<strong> mucus empoisonné </strong>par une neurotoxine </span><span style=\"color: #000000;\">qui agit par contact avec les muqueuses. <br /></span></p>
<p><span style=\"color: #000000;\"><br />Normalement, ces sécrétions provoquent seulement une légère brûlure - si réaction il y a - sur la peau humaine. Sur des personnes très sensibles et/ou des enfants, ces sécrétions peuvent également provoquer des nausées, troubles respiratoires et des vomissements. On trouve parfois dans les nouvelles locales des symptômes d\'intoxication par une salamandre tachetée. En particulier, un animal non alerté par les couleurs noires et jaunes ou inexpérimenté (comme un chiot ou un chat) qui tente de mordre ou manger une salamandre la rejette généralement immédiatement, et peut être affecté de troubles comme la contraction involontaire des muscles des mâchoires</span><span style=\"color: #000000;\">, la rigidité du cou et/ou une forte production de salive, et dans certains cas isolés la mort.</span></p>
<p><strong><span style=\"color: #000000;\">Menaces et protections</span></strong></p>
<p><span style=\"color: #000000;\">Salamandra salamandra</span><span style=\"color: #000000;\"> est<strong> protégée</strong> dans la plupart des pays d\'Europe </span><span style=\"color: #000000;\">via son inscription à l\'annexe III de </span><span style=\"color: #000000;\">la Convention de Berne</span><span style=\"color: #000000;\">. Elle est inscrite sur la liste rouge des espèces de faune menacées dans plusieurs pays dont la Suisse.</span></p>
<p><span style=\"color: #000000;\">On la trouve dans les mares et les étangs, dans les bois, sous les pierres et sous les bois morts. <br />Réf,: <a href=\"http://fr.wikipedia.org/wiki/Salamandre_maculée\" target=\"_blank\">http://fr.wikipedia.org/wiki/Salamandre_maculée</a><br /></span></p>
<p>&nbsp;</p>
<p>&nbsp;</p>",NULL,NULL,NULL,"<p>%apvn_salamandre%</p>
<p>&nbsp;</p>",NULL,"1","../../media_apvn/navi_90008/_thumbs/th_salamandre2_100_100.png","","n","0","0","j","2");
INSERT INTO cms_pages VALUES ("55","24","navi_9","navi_90009","0000-00-00 00:00:00","0000-00-00 00:00:00","","","Le renard","","","","Faune","",NULL,NULL,"Le renard >  Les points communs des différents genres de renards  sont :
un museau allongé,
des oreilles dressées,
une petite taille 
de 6 kg env",NULL,NULL,NULL,"<p><span style=\"color: #000000;\"><span style=\"font-size: small;\">Le pelage du renard est généralement brun-roux, mais cela peut varier du beige au brun et au roux vif. Ses oreilles dressées sont noires en arrière et sont plus grandes que celles du renard polaire. La queue est longue et touffue et généralement blanche au bout. Le tour de la gueule et la gorge sont souvent blancs mais la gorge peut varier au gris. Au début du printemps, il perd ses poils d\'hiver. Ils apparaissent d\'abord en bas des pattes puis apparaissent sur le corps, sur les flancs en juillet et sur la queue et le corps en fin août. Au début de l\'hiver, le pelage s\'épaissit.</span></span></p>
<p><span style=\"color: #000000;\"><span style=\"font-size: small;\">Les renards vivent généralement entre 2 et 3 ans, mais leur espérance de vie peut aller jusqu\'à 10 ans et même plus, lorsqu\'ils sont en captivité.<br /></span></span></p>
<p><span style=\"color: #000000; font-size: small;\"><br />Les renards sont des vecteurs de la rage</span><span style=\"color: #000000; font-size: small;\">, de la trichinose</span><span style=\"color: #000000; font-size: small;\"> ou de l\'échinococcose&nbsp;</span><span style=\"color: #000000; font-size: small;\">alvéolaire, maladie qui peut se révéler mortelle chez l\'homme. Il faut souligner que cette pathologie se découvre plusieurs années après l\'avoir contractée&nbsp;: certaines personnes sont mortes car on croyait à un cancer du foie</span><span style=\"color: #000000; font-size: small;\">. Ces maladies sont transmises par la salive ou les excréments des carnivores&nbsp;</span><span style=\"color: #000000;\"><span style=\"font-size: small;\">porteurs ou par ingestion d\'aliments souillés par eux.</span></span></p>
<p><span style=\"color: #000000; font-size: small;\">Quand ils chassent les renards approchent doucement de leur proie, puis bondissent pour la plaquer au sol. Cette pratique s\'appelle le «</span><span style=\"color: #000000;\"><span style=\"font-size: small;\">mulotage».</span></span></p>
<p><span style=\"color: #000000; font-size: small;\">En revanche l\'habitat ou les données biologiques et comportementales peuvent varier selon les espèces</span><span style=\"font-size: small;\"><span style=\"color: #000000;\">&nbsp;voire la sous-espèce. Pour plus de détails, il convient de se renseigner sur chaque espèce de renard en particulier.<br /><br />Réf,: //fr.wikipedia.org/wiki/Renard</span></span></p>",NULL,NULL,NULL,"",NULL,"1","../../media_apvn/navi_90009/_thumbs/th_renard4.jpg","../../media_apvn/navi_90009/_thumbs/th_renard2.jpg","c","0","0","j","4");
INSERT INTO cms_pages VALUES ("56","24","navi_9","navi_90010","0000-00-00 00:00:00","0000-00-00 00:00:00","","","Le blaireau","","","","Faune","",NULL,NULL,"Le blaireau > Nocturne et omnivore (insectes, rongeurs, tubercules, champignons,  œuf, 
jeunes lapins), le blaireau n\'a pas bonne réputation auprès des agriculteurs",NULL,NULL,NULL,"<p><span style=\"color: #000000;\"><strong></strong>Le <strong>Blaireau européen</strong> est la plus grosse espèce de mustélidé d’Europe, c’est-à-dire des prédateurs avec un corps allongé et des pattes courtes. Ils possèdent des glandes sécrétrices développées (de chaque côté de l\'anus) qui peuvent dégager une odeur musquée en cas d\'attaque. Il est trapu et peut atteindre 70&nbsp;cm de long (90&nbsp;cm avec la queue) pour une vingtaine de kilogrammes. Il est reconnaissable aux bandes longitudinales noires qu\'il porte sur le museau. La femelle, généralement de même taille que le mâle, s\'appelle la <em>blairelle</em>. Les petits s\'appellent les <em>blaireautins</em>.<br /></span></p>
<p><span style=\"color: #000000;\"><br />Nocturne et omnivore, (insectes, rongeurs, tubercules, champignons,&nbsp; œuf, jeunes lapins) &nbsp;il n\'a pas bonne réputation auprès des agriculteurs et des chasseurs. En fait, les végétaux constituent une part bien plus importante de son alimentation que chez les autres mustélidés et les services qu\'il rend en détruisant une foule de mollusques, rongeurs, batraciens,&nbsp;serpents et insectes (il dévaste les nids de bourdons et de guêpes) l\'emportent largement sur les dégâts qu\'il peut causer.<br /></span></p>
<p><br />Un blaireau adulte peut ingurgiter annuellement près de cent kilogrammes de lombrics. Il apprécie aussi beaucoup les grenouilles&nbsp;et les vipères dont le venin ne lui fait aucun effet.<br /><br />Réf.: //fr.wikipedia.org/wiki/Blaireau_européen</p>",NULL,NULL,NULL,"",NULL,"1","../../media_apvn/navi_90010/_thumbs/th_blaireau.jpg","","c","0","0","j","5");
INSERT INTO cms_pages VALUES ("57","26","navi_10","navi_100001","0000-00-00 00:00:00","0000-00-00 00:00:00","","","Le circuit des fontaines","","","","Itinéraires","",NULL,NULL,"Le circuit des fontaines > Un grand nombre de magnifiques fontaines en calcaire se trouvent 
dans les villages vaudois. Mais d’où  proviennent-elles ? Ce circuit vous permettra de le 
découvrir.",NULL,NULL,NULL,"<p>Un grand nombre de magnifiques fontaines en calcaire se trouvent dans bien des villages du canton. D’où proviennent-elles&nbsp;?</p>
<p>&nbsp;</p>
<p>Vous le saurez en suivant le circuit des fontaines. &nbsp;Profitez de cette promenade, laissez-vous charmer par le bruit de l’eau du Nozon ou le chant des oiseaux, admirez l’idyllique cascade du Dard, découvrez la riche flore de ce vallon et, si la chance vous sourit, croisez un des habitants de ces lieux, (chevreuil, chamois, renard, écureuil, etc.).</p>
<p>&nbsp;</p>
<p>Deux parcours s’offrent à vous. Le grand circuit, avec un temps de marche de 2h30 et une longueur de 9,8 km.</p>
<p>&nbsp;</p>
<p>Le petit circuit, avec un temps de marche de 1h40min et une longueur de 6,4 km.</p>
<p>L’un ou l’autre de ces circuits vous emmènera sur le site de la carrière du Grand Chaney, parmi les genévriers, les saules rabougris, quelques maigres pins et les herbes folles, vous découvrirez les empreintes de quelques bassins arrachés à la roche comme de grands tombeaux vides et abandonnés. &nbsp; &nbsp;&nbsp;</p>
<p>&nbsp;</p>
<p>Sur le site, quelque 200 bassins ont été taillés dans des blocs de calcaire par les carriers de l’époque. Ces hommes ont laissé dans nos villages tous ces bassins taillés de leurs mains, fruit de leur labeur et de leur peine.</p>
<p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</p>
<p>UN PEU D\'HISTOIRE&nbsp;</p>
<p>Alors qu\'il suffit aujourd\'hui de tourner un robinet pour avoir de l\'eau, il est difficile de s\'imaginer à quel point le rôle des fontaines était important aux siècles passés. Lieu de rencontre pour se ravitailler en eau potable, abreuvoir pour le bétail, bassin pour laver les légumes, faire la lessive ou autre chose, et surtout une réserve d\'eau importante en cas d\'incendie. Dans les villes, les premières fontaines en pierre datent du 16ème siècle. Beaucoup ont aujourd\'hui disparu, il n\'en reste qu\'une dizaine, dont la fontaine du Banneret à Orbe. Vers 1750 les communes sont intéressées à remplacer leurs \"auges\" en bois par des bassins en roc. Les fontaines en bois n’avaient qu’une durée de vie de 20 à 30 ans.</p>
<p>&nbsp;</p>
<p>Jean-Pierre Raymond (maître carrier) reprit l\'exploitation du Chaney après les entrepreneurs qui ont extrait la pierre pour construire le grand pont d\'Orbe ; celui-ci tailla dès 1835 plus de 200 bassins. Son fils termina son œuvre vers 1864.</p>
<p>&nbsp;</p>
<p>La taille d\'un bassin exigeait de 2 à 12 mois de travail. L\'extraction du bloc taillé se faisait au moyen de crics en bois, parfois empruntés. Le transport des plus grosses pièces, s\'effectuait sur des rouleaux de bois ou sur un char prêté par les villes d\'Orbe ou d\'Yverdon, tiré par des chevaux ou des bœufs (jusqu\'à 25 bêtes). Parfois, un bassin se brisait et il fallait, dans le meilleur des cas le ferrer, (voir le bassin de 1828 sur la place du village à Croy), (Voir fig. 3) sinon le dur labeur et le salaire du carrier étaient anéantis d\'un seul coup. Sur le site même du Chaney, vous pourrez voir plusieurs empreintes en calcaires des bassins qui se trouvent dans tout le canton jusqu\'à Nyon, Grandson, Vallorbe ou près d\'Echallens.</p>
<p>&nbsp;</p>
<p>Le fontenier (ou fontainier) du village était responsable de la répartition des sources, (pour l\'alimentation des fontaines en eau) et veillait au bon état des conduites (alors en bois), assurait la propreté des bassins et des alentours, fixait le jour de lessive là où il n\'existait pas de lavoir.</p>
<p>En automne, il devra envelopper les tuyaux (goulots) des chèvres de tresses de paille afin d’éviter le gel. Certains fonteniers s’étaient fait une réputation de sourcier, lors d’années sèches, on faisait appel à eux pour faire des recherches afin&nbsp; de trouver de nouvelles sources.</p>
<p>&nbsp;</p>
<p>Dès 1835, Charles Maurice de Lerber, industriel à Romainmôtier, propose des tuyaux en grès (terre cuite) pour remplacer les tuyaux en bois de sapin qui devaient êtres renouvelés tous les 6 à 10 ans. Ces tuyaux en grès étaient d’excellente qualité, aujourd’hui encore, lors de fouilles, on en retrouve admirablement conservés.</p>
<p>&nbsp;</p>
<p>Vers la fin du 19ème siècle, apparaissent les conduites en fonte. Dans le Vallon du Nozon, les bassins en calcaire provenant du Chaney portent la cartouche “sorti du Chanay de Croy” ou “pris au Chanay”, (voir fig. 4) les autres proviennent de la carrière de Vaulion. Vers 1870, les descendants des carriers n\'avaient plus autant d\'ardeur pour ce métier ingrat et furent remplacés par des ouvriers italiens spécialistes des bassins en granit.</p>
<p>&nbsp;</p>
<p>En 1973 le Conseil d\'Etat édicte un nouvel arrêté qui protège les fontaines publiques ainsi que les chèvres, goulots et couverts donc la construction est antérieure à 1914.<br />&nbsp;</p>",NULL,NULL,NULL,"",NULL,"1","../../media_apvn/navi_100001/_thumbs/th_carrriere chanay.jpg","../../media_apvn/navi_100001/_thumbs/th_fontainechaney.jpg","c","0","0","j","1");
INSERT INTO cms_pages VALUES ("58","26","navi_10","navi_100002","0000-00-00 00:00:00","0000-00-00 00:00:00","","","La pierre gravée des Gottettes","","","","Itinéraires","",NULL,NULL,"La pierre gravée > Près de la Praz et de Croy vous aurez l\'occasion de pouvoir admirer 
plusieurs blocs erratiques, dont celui nommé Les Gottettes à quelques distances de la gare 
CFF.",NULL,NULL,NULL,"<p>Ce gros bloc erratique est décoré d\'un enchevêtrement de cercles, de cupules et de sillons, qui correspondent à plusieurs phases de gravures superpossées. <br /><br />On pourrait y voir une scène de chasse associant un animal et un ou deux personnages. Bien connues le long du Jura, les roches gravées ou dressées sont des temoignages des croyances et des rituels des populations préhistoriques, dont les sens nous échappeent encore.<br /><br /><br />Les plus anciens motifs gravés, à l\'aide de bouchardes de pierre, remontent au Néolithique vers 4000 ans environ av. J.-C. Ces expressions artistiques ont perduré tout au long de l\'histoire.<br /><br /></p>",NULL,NULL,NULL,"",NULL,"1","../../media_apvn/navi_100002/_thumbs/th_pierregravee.jpg","../../media_apvn/navi_100002/_thumbs/th_pierregravee2.jpg","c","0","0","j","3");
INSERT INTO cms_pages VALUES ("59","24","navi_9","navi_90011","0000-00-00 00:00:00","0000-00-00 00:00:00","","","La faune du Vallon","","","","Faune","",NULL,NULL,"En raison de ses roches calcaires, de ses biotopes et de sa configuration, on trouve dans notre vallon une faune très riche et des espèces rares. Avec un peu de chance vous pourrez les observer.",NULL,NULL,NULL,"<p><span style=\"font-size: small;\"><span style=\"color: #000000;\">En raison de ses roches calcaires, de ses biotopes et de sa configuration, on trouve dans notre vallon une faune très riche et des espèces rares, en dehors de celles très connues. </span></span><span style=\"font-size: small;\"><span style=\"color: #000000;\">Certains endroits de son territoire comportent des réserves et des couloirs à faune.</span></span></p>
<p><span style=\"color: #000000; font-size: small;\">&nbsp;</span></p>
<p><span style=\"font-size: small;\"><span style=\"color: #000000;\">Au cours de vos promenades vous pourrez admirer avec un peu de chance&nbsp;les espèces suivantes: </span></span></p>
<p><span style=\"color: #000000; font-size: small;\">&nbsp;</span></p>
<p><span style=\"font-size: small;\"><span style=\"color: #000000;\">Chevreuil, chamois, blaireau, lièvre, renard, écureuil, vipère, orvet, salamandre.</span></span></p>
<p><span style=\"font-size: small;\"><span style=\"color: #000000;\">Héron, hibou moyen duc, faucon crécerelle, buse variable, bondrée apivore, pic épeiche, pic cendré, pic vert, grimpereau des jardins, mésange noire, mésange charbonnière, mésange des saules, mésange nonnette, mésange bleue, fauvette à tête noire, fauvette des jardins, fauvette grisette, rouge-gorge, geai, bruant jaune, bergeronnette grise, sitelle, grive musicienne, rouge-queue noir, verdier, pie grièche écorcheuse, loriot, huppe fasciée, troglodyte, gobe-mouches gris, linotte mélodieuse, cincle plongeur.</span></span></p>",NULL,NULL,NULL,"",NULL,"1","../../media_apvn/navi_90011/_thumbs/th_heron.jpg","../../media_apvn/navi_90011/_thumbs/th_truite.jpg","c","0","0","j","1");
INSERT INTO cms_pages VALUES ("61","26","navi_10","navi_100003","0000-00-00 00:00:00","0000-00-00 00:00:00","","","Pierre de Cromlech","","","","Itinéraires","",NULL,NULL,"Cromlech > Il y a des millénaires, le glacier du Rhône occupait une partie de la Suisse. Lors du 
réchauffement climatique, la fonte des glaces transportait des roches appelées blocs 
erratiques",NULL,NULL,NULL,"<p>Lors de phases de réchauffement climatique, la fonte des glaces transportait des roches appelées&nbsp;<strong>blocs erratiques</strong>&nbsp;en raison de leur déplacement dans la glace.&nbsp;Ces blocs, étrangers au milieu naturels dans lequel ils se trouvent, ont souvent joué un rôle dans les croyances, sans doute à cause de leur différence.&nbsp;Certains de ces blocs ont été modifié par l’homme, gravés (Pierre des Gottettes) ou creusés de cupules.</p>
<p><strong><br />Les cromlechs</strong></p>
<p>Le mot vient du vieux gallois&nbsp;: crom, «&nbsp;<strong>courbé&nbsp;</strong>» et llech, «&nbsp;<strong>pierre plate</strong>&nbsp;». Il désigne un cercle de pierres.&nbsp;Les cromlechs sont plus rares que les dolmens ou les menhirs et datent de l’âge du bronze. Le cromlech le plus célèbre est Stonehenge, mais la plupart sont plus modestes, tel celui de la Praz.&nbsp;Situé dans la forêt du bois de chênes, le cromlech de la Praz est le seul cercle de pierre intact de Suisse. Découvert en 1867, il a été<strong>&nbsp;classé monument historique en 1900</strong>. L’ensemble se compose de 12 pierres dont une à cupules.&nbsp;</p>
<p>&nbsp;</p>
<p><strong>Pierres pouilleuses</strong></p>
<p>Ces pierres n’ont rien à voir avec les poux&nbsp;! L’origine du mot serait «pierre à &nbsp;papouilles&nbsp;» Ce seraient des pierres où les jeunes gens venaient se rencontrer. Certaines étaient considérées comme des pierres de fertilité.</p>",NULL,NULL,NULL,"",NULL,"1","../../media_apvn/navi_100003/_thumbs/th_pierrecromlech2.jpg","../../media_apvn/navi_100003/_thumbs/th_pierrecromlech.jpg","c","0","0","j","2");
INSERT INTO cms_pages VALUES ("62","35","navi_10","navi_100004","0000-00-00 00:00:00","0000-00-00 00:00:00","","","Découverte ornithologique","","","","Près de chez vous","",NULL,NULL,"Découverte des chouettes hulottes",NULL,NULL,NULL,"<p>Sous la conduite d\'Yves Ménétrey, ornithologue et collaborateur de la station ornithologique de Sempach les intéressés ont pu découvrir à leur grand émerveillement les chouettes hulottes et leur progéniture.<br /><br />Des nichoirs sont placés dans les forêts du vallon du Nozon. L\'ornithologue sort précautionneusement l\'habitante des lieux. A priori elle ne paraît pas trop effarouchée. Son plumage et soyeux et moucheté et peut varier selon l\'oiseau du gris foncé au gris clair et même roux. L\'ornithologue vérifie si elle est baguée ou s\'il est nécessaire de le faire. Il contrôle également son plumage et vérifie qu\'elle se porte bien. Toutes les données sont répertoriées. Les chouette hulotte sse nourrit de micromammifères.&nbsp;<br /><br />&nbsp;</p>",NULL,NULL,NULL,"",NULL,"1","../../media_apvn/navi_100004/_thumbs/th_3chouette.jpg","../../media_apvn/navi_100004/_thumbs/th_4chouette.jpg","c","0","0","n","1");



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
INSERT INTO cms_redirect VALUES ("1","8","0","0","","","accueil","");
INSERT INTO cms_redirect VALUES ("2","8","28","0","","","bienvenue","");
INSERT INTO cms_redirect VALUES ("3","8","15","0","","","territoire","");
INSERT INTO cms_redirect VALUES ("4","8","17","0","","","acces_au_vallon","");
INSERT INTO cms_redirect VALUES ("5","8","30","0","","","objectifs","");
INSERT INTO cms_redirect VALUES ("6","8","32","0","","","historique","");
INSERT INTO cms_redirect VALUES ("7","8","29","0","","","activites_et_realisations","");
INSERT INTO cms_redirect VALUES ("8","8","31","0","","","photos","");
INSERT INTO cms_redirect VALUES ("9","9","0","0","","","nature_et_paysage","");
INSERT INTO cms_redirect VALUES ("10","9","21","0","","","geologie","");
INSERT INTO cms_redirect VALUES ("11","9","23","0","","","vegetation","");
INSERT INTO cms_redirect VALUES ("12","9","22","0","","","flore","");
INSERT INTO cms_redirect VALUES ("13","9","24","0","","","faune","");
INSERT INTO cms_redirect VALUES ("14","10","0","0","","","decouverte","");
INSERT INTO cms_redirect VALUES ("15","10","26","0","","","itineraires","");
INSERT INTO cms_redirect VALUES ("16","10","27","0","","","hebergement","");
INSERT INTO cms_redirect VALUES ("17","10","33","0","","","biodiversite","");
INSERT INTO cms_redirect VALUES ("18","10","35","0","","","pres_de_chez_vous","");
INSERT INTO cms_redirect VALUES ("19","11","0","0","","","boutique","");
INSERT INTO cms_redirect VALUES ("20","7","0","0","","","contact","");
INSERT INTO cms_redirect VALUES ("21","7","34","0","","","contact_10","");
INSERT INTO cms_redirect VALUES ("22","13","0","0","","","plan_du_site","");
INSERT INTO cms_redirect VALUES ("23","14","0","0","","","empreinte","");
INSERT INTO cms_redirect VALUES ("24","12","0","0","","","liens","");
INSERT INTO cms_redirect VALUES ("25","10","26","57","","","le_circuit_des_fontaines","");
INSERT INTO cms_redirect VALUES ("26","10","26","58","","","la_pierre_gravee_des_gottettes","");
INSERT INTO cms_redirect VALUES ("27","8","15","32","","","bofflens","");
INSERT INTO cms_redirect VALUES ("28","8","15","33","","","croy","");
INSERT INTO cms_redirect VALUES ("29","8","15","34","","","bretonnieres","");
INSERT INTO cms_redirect VALUES ("30","8","29","35","","","2006","");
INSERT INTO cms_redirect VALUES ("31","8","29","36","","","2007","");
INSERT INTO cms_redirect VALUES ("32","8","29","37","","","2008","");
INSERT INTO cms_redirect VALUES ("33","8","29","38","","","2009","");
INSERT INTO cms_redirect VALUES ("34","8","29","39","","","2010","");
INSERT INTO cms_redirect VALUES ("35","8","29","40","","","2011","");
INSERT INTO cms_redirect VALUES ("36","8","29","41","","","2012","");
INSERT INTO cms_redirect VALUES ("37","8","15","42","","","vaulion","");
INSERT INTO cms_redirect VALUES ("38","8","15","43","","","juriens","");
INSERT INTO cms_redirect VALUES ("39","8","15","44","","","premier","");
INSERT INTO cms_redirect VALUES ("40","8","15","45","","","la_praz","");
INSERT INTO cms_redirect VALUES ("41","8","15","46","","","romainmotier","");
INSERT INTO cms_redirect VALUES ("42","9","21","47","","","jura","");
INSERT INTO cms_redirect VALUES ("43","9","21","48","","","sols_karstiques","");
INSERT INTO cms_redirect VALUES ("44","9","21","49","","","lapiaz","");
INSERT INTO cms_redirect VALUES ("45","9","22","50","","","niveole","");
INSERT INTO cms_redirect VALUES ("46","9","22","51","","","anemone_pulsatille","");
INSERT INTO cms_redirect VALUES ("47","9","22","52","","","flore","");
INSERT INTO cms_redirect VALUES ("48","9","24","53","","","le_chamois","");
INSERT INTO cms_redirect VALUES ("49","9","24","54","","","la_salamandre","");
INSERT INTO cms_redirect VALUES ("50","9","24","55","","","le_renard","");
INSERT INTO cms_redirect VALUES ("51","9","24","56","","","le_blaireau","");
INSERT INTO cms_redirect VALUES ("52","9","24","59","","","la_faune_du_vallon","");
INSERT INTO cms_redirect VALUES ("54","10","26","61","","","pierre_de_cromlech","");
INSERT INTO cms_redirect VALUES ("55","10","35","62","","","decouverte_ornithologique","");



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
INSERT INTO cms_seiten VALUES ("7","7","1","1","2","","","","Kontakt","",NULL,NULL,"C\'est avec grand plaisir que nous vous répondrons",NULL,"","","<p>Toutes propositions, remarques et questions sont les bienvenues.</p>","",NULL,NULL,"<p align=\"left\">APVN<br />Rue des Fontaines 28</p>
<p align=\"left\">1322 Croy&nbsp;</p>
<p align=\"left\">Tél. +41 (0)24 453 15 82</p>",NULL,"../../media_apvn/navi_7/_thumbs/th_abeille.jpg","n");
INSERT INTO cms_seiten VALUES ("8","8","1","1","0","","","","Accueil","",NULL,NULL,"",NULL,"","","<p><span style=\"font-size: small;\"><span style=\"color: #000000;\"><br /><br />Bienvenue<strong> </strong>sur le site internet de l\'Associationpour la Préservation du Vallon du Nozon (<strong>APVN</strong>) qui a pour but de vous informer sur les projets du Vallon du Nozon, dont la renommée pour sa beauté et tranquillité s’étend loin à la ronde. </span></span></p>
<p><span style=\"color: #000000; font-size: small;\">Elle s\'engage à sauvegarder la qualité et l\'intégrité du vallon, sa beauté, sa faune, sa flore et la qualité de ses eaux. A promouvoir le maintien de son patrimoine et de sa vocation de lieu protégé, à encourager et soutenir la gestion de l\'endroit pour développer ses valeurs, ses qualités et un dialogue constructif avec tous les intervenant.&nbsp;</span></p>
<p><span style=\"font-size: small;\"><span style=\"color: #000000;\">Promouvoir le maintien du patrimoine du Vallon du Nozon et sa vocation de lieu protégé, encourager et soutenir la gestion de l\'endroit pour développer ses valeurs et ses qualités, développer un dialogue constructif avec tous les intervenants. Participer aux réflexions et travaux visant à inscrire ce joyau de nature dans un réseau écologique.</span></span></p>
<p><span style=\"color: #000000; font-size: small;\">&nbsp;</span></p>
<p><strong><span style=\"font-size: small;\"><span style=\"color: #000000;\">Notre avenir, c\'est notre responsabilité à tous !</span></span></strong></p>
<p><span style=\"font-size: small;\"><span style=\"color: #000000;\">Engagez-vous, dans la sauvegarde de cette verdoyante vallée, Notre patrimoine ... <a title=\"Contact\" href=\"/contact\" target=\"_self\">Adhérez</a>! </span></span></p>","",NULL,NULL,"",NULL,"../../media_apvn/navi_8/_thumbs/th_img_0202.jpg","c");
INSERT INTO cms_seiten VALUES ("9","9","1","1","0","","","","Nature et Paysage","",NULL,NULL,NULL,NULL,"","","","",NULL,NULL,NULL,NULL,NULL,"n");
INSERT INTO cms_seiten VALUES ("10","10","1","1","0","","","","Découverte","",NULL,NULL,NULL,NULL,"","","","",NULL,NULL,NULL,NULL,NULL,"n");
INSERT INTO cms_seiten VALUES ("11","11","1","1","0","","","","Boutique","",NULL,NULL,NULL,NULL,"","","","",NULL,NULL,NULL,NULL,NULL,"n");
INSERT INTO cms_seiten VALUES ("12","12","1","1","0","","","","Liens","",NULL,NULL,"",NULL,"","","<p><a href=\"http://www.panierbio3vallons.ch/siteAccueil/accueil.php\" target=\"_blank\"><span style=\"font-size: small;\">♥ Promouvoir les produits biologiques, de proximité et de saison des 3 vallons</span>&nbsp;</a><br /><span><a href=\"http://www.croy.ch\" target=\"_blank\">♥ Commune de Croy</a><br /><span><a href=\"http://www.romainmotier.ch\" target=\"_blank\">♥ Commune de Romainmôtier<br /></a><a href=\"http://www.aufildunozon.com\">♥&nbsp;Chambre d\'hôtes à Vaulion</a><a href=\"http://www.romainmotier.ch\" target=\"_blank\"><br /><br /></a><br /><br /></span></span></p>","",NULL,NULL,"",NULL,"","n");
INSERT INTO cms_seiten VALUES ("13","13","1","1","6","X","","","Plan du Site","",NULL,NULL,"",NULL,"","","","",NULL,NULL,"",NULL,"../../media_apvn/navi_13/_thumbs/th_petiteplagecoeur.jpg","n");
INSERT INTO cms_seiten VALUES ("14","14","1","1","0","","","","Empreinte","",NULL,NULL,"",NULL,"","","<h2>conception, design et programmation</h2>
<p><strong><a href=\"http://www.hempenweb.ch\" target=\"_blank\">hempenweb</a></strong> l\'agence internet petite mais efficace, <br />Roland Hempen, Gutstrasse 150, 8055 Zürich&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;</p>","",NULL,NULL,"",NULL,"","n");
INSERT INTO cms_seiten VALUES ("15","15","1","3","1","","","","Territoire","",NULL,NULL,"",NULL,"","","<p align=\"left\">Le périmètre de notre association couvre une superficie de 54,93 km2.&nbsp; Cette superficie s’étend sur tout le <strong>Vallon du Nozon</strong> soit un ensemble de huit communes de Suisse, dans le canton de Vaud (district du Jura-Nord vaudois), situées sur le cours du <a title=\"Nozon\" href=\"http://fr.wikipedia.org/wiki/Nozon\" target=\"_blank\">Nozon</a>.</p>","",NULL,NULL,"<p>&nbsp;</p>
<p align=\"left\">Le périmètre de notre association couvre une superficie de 54,93 km2.&nbsp; Cette superficie s’étend sur tout le <strong>Vallon du Nozon</strong> soit un ensemble de huit communes de Suisse, dans le canton de Vaud (district du Jura-Nord vaudois), situées sur le cours du <a title=\"Nozon\" href=\"http://fr.wikipedia.org/wiki/Nozon\" target=\"_blank\">Nozon</a>.</p>",NULL,"../../media_apvn/navi_8_10/_thumbs/th_college.png","a");
INSERT INTO cms_seiten VALUES ("17","17","1","1","0","","","","Accès au Vallon","",NULL,NULL,"Mobilité douce",NULL,"","","<p align=\"left\"><span style=\"font-size: small;\"><span style=\"color: #000000;\">Très couru pour sa beauté par les randonneurs et les excursionnistes, le Vallon est bien desservi par la ligne ferroviaire Lausanne-Vallorbe. Les trains circulent à une cadence régulière.&nbsp; <br /><br />A cette offre viennent s’ajouter, pour le plus grand bonheur des touristes, trois lignes de bus postaux à destination de Vaulion, L\'Isle et Orbe.</span></span></p>","",NULL,NULL,"",NULL,"../../media_apvn/navi_8_20/_thumbs/th_img_0247.jpg","c");
INSERT INTO cms_seiten VALUES ("21","21","1","3","1","","","","Géologie","",NULL,NULL,"",NULL,"","","","",NULL,NULL,"",NULL,"../gifs/blank.gif","n");
INSERT INTO cms_seiten VALUES ("35","35","1","1","0","","","","Près de chez vous","",NULL,NULL,"",NULL,"","","<p>Sous la conduite d\'Yves Ménétrey, ornithologue et collaborateur de la station ornithologique de Sempach les intéressés ont pu découvrir à leur grand émerveillement les chouettes hulottes et leur progéniture.<br /><br />Des nichoirs sont placés dans les forêts du vallon du Nozon. L\'ornithologue sort précautionneusement l\'habitante des lieux. A priori elle ne paraît pas trop effarouchée. Son plumage est soyeux et moucheté et peut varier selon l\'oiseau du gris foncé au gris clair et même roux. L\'ornithologue vérifie si elle est baguée ou s\'il est nécessaire de le faire. Il contrôle également son plumage et vérifie qu\'elle se porte bien. Toutes les données sont répertoriées. La chouette hulotte se nourrit de micromammifères.&nbsp;<br /><br />&nbsp;</p>","",NULL,NULL,"",NULL,"../../media_apvn/navi_10_40/_thumbs/th_9chouette.jpg","c");
INSERT INTO cms_seiten VALUES ("22","22","1","3","1","","","","Flore","",NULL,NULL,"",NULL,"","","<p>En vous promenant dans les forêts du vallon du Nozon vous aurez la possibilité de voir une multitude de fleurs aussi belles les unes que les autres. Certaines d’entre elles comme l’anémone pulsatille fait partie des espèces protégées.<br /><br /></p>","",NULL,NULL,"<p><a name=\"Continuer\"></a></p>",NULL,"","n");
INSERT INTO cms_seiten VALUES ("23","23","1","1","0","","","","Végétation","",NULL,NULL,"",NULL,"","","<p><span style=\"font-size: small;\"><span style=\"color: #000000;\"><strong>Le parc forestier du vallon du Nozon a une haute valeur biologique</strong>. Formé entre autres de différentes chênaies, hêtraies et frênaies, d’arbres variés et d’aires buissonneuses, plusieurs de ses forêts sont estimées de très grande valeur. Elles comprennent des espèces pionnières rares et l’ensemble de <strong>ces forêts fait partie de l’IFP</strong> (Inventaire fédéral du paysage).</span></span></p>
<p><span style=\"color: #000000; font-size: small;\">&nbsp;</span></p>
<p><span style=\"font-size: small;\"><span style=\"color: #000000;\">Espèces (entre autres)&nbsp;:</span></span></p>
<p><span style=\"font-size: small;\"><span style=\"color: #000000;\">Chêne, frêne, pin sylvestre, cerisier, troène, bouleau, érable sycomore, peuplier, églantier, viorne lantane, groseiller des Alpes, haies d’épineux de grande valeur, aubépine, épine noire, fusain, carex des montagnes, cornouiller, noisetier, sureau, genévrier, ilots de roseau, saule blanc, allaire.</span></span></p>","",NULL,NULL,"",NULL,"../../media_apvn/navi_9_30/_thumbs/th_nozonvaulion3 (4).jpg","c");
INSERT INTO cms_seiten VALUES ("24","24","1","3","1","","","","Faune","",NULL,NULL,"",NULL,"","","","",NULL,NULL,"",NULL,"","n");
INSERT INTO cms_seiten VALUES ("31","31","1","2","0","","","","Photos","",NULL,NULL,"",NULL,"","","<h2>Ce vallon que nous admirons !</h2>","",NULL,NULL,"",NULL,"../../media_apvn/navi_8_70/_thumbs/th_vaulion.jpg","a");
INSERT INTO cms_seiten VALUES ("26","26","1","3","1","","","","Itinéraires","",NULL,NULL,"",NULL,"","","","",NULL,NULL,"",NULL,"","n");
INSERT INTO cms_seiten VALUES ("27","27","1","4","0","","","","Hébergement","",NULL,NULL,"",NULL,"","","<p>Vous cherchez où vous logez ? Il suffit simplement d\'appeler&nbsp;l\'une ou l\'autre&nbsp;de ces personnes pour vous renseigner.</p>
<table border=\"0\"><caption>&nbsp;</caption>
<tbody>
<tr class=\"odd\">
<td style=\"width: 15%;\">&nbsp;Croy</td>
<td style=\"width: 80%;\">
<p><strong>Maison villageoise -</strong><span><strong>&nbsp;Erika Baudois</strong>,&nbsp;chemin de la Foule 6 &nbsp;tél. 024/453.13.62. Deux&nbsp;</span><span>chambres avec salle de bains. <br /></span></p>
<p><span><br /></span></p>
</td>
</tr>
<tr class=\"even\">
<td style=\"width: 15%;\">&nbsp;</td>
<td style=\"width: 80%;\">
<p><span><strong>Villa \"La Butineuse\" - Lucette Rochat</strong>, pont de l\'Etang 7, tél. 024/453.16.38, email: <a href=\"mailto:lucette.rochat@hotmail.com\">lucetterochat@hotmail.com</a>. 2 chambres avec bains-douche et WC au rez-de-chaussée pour 4 personnes.</span></p>
<p>&nbsp;</p>
</td>
</tr>
<tr class=\"odd\">
<td style=\"width: 15%;\">&nbsp;</td>
<td style=\"width: 80%;\">
<p><span><strong>Maison rurale - Ariane Laubscher</strong>, rue des Fontaines 15, tél. 024/453.16.21 et 079/298.36.71, email:<a href=\"mailto:arlaubscher@bluewin.ch\">arlaubscher@bluewin.ch</a>.&nbsp;Deux chambres tout confort au 1er étage.&nbsp;</span></p>
<p>&nbsp;</p>
</td>
</tr>
<tr class=\"even\">
<td style=\"width: 15%;\">Bretonnières</td>
<td style=\"width: 80%;\"><strong>Maison individuelle</strong> - <strong>Famille Savoy</strong>, 1 chambre et salon pour 3 personnes. Rue d\'Agiez 4, tél. 024/453.15.90,&nbsp;<span>email:<a href=\"mailto:arlaubscher@bluewin.ch\">savoy@1329.ch</a>.</span> <br /><br /></td>
</tr>
<tr class=\"odd\">
<td style=\"width: 15%;\">La Praz</td>
<td style=\"width: 80%;\"><strong>Ferme Les Osches - </strong><span><strong>Anni Sordet</strong>, route de Juriens 27, tél. 024/453.20.50, <span class=\"st\"><span>email:<a href=\"mailto:arlaubscher@bluewin.ch\">ajjsordet@yahoo.com</a>.</span></span> </span>Appartement pour 8 à 10 personnes avec mezzanine cuisine<br />agencée avec vaisselle disponible équipée - 1 WC - 1 douche.&nbsp;<br /><br />Activités balades&nbsp;à dos d’âne. Les balades peuvent durer au minimum&nbsp; 1h. Une approche avec les animaux de la ferme complètera la journée. Une façon de découvrir le balcon du Jura au rythme des sabots. Balades accompagnées.<br /><br /></td>
</tr>
<tr class=\"even\">
<td style=\"width: 15%;\">Vaulion</td>
<td style=\"width: 80%;\"><strong>Maison individuelle &nbsp;- Elisabeth Reymond</strong>, La Rochette, tél. 021/843.28.86 et 079/636.63.62, email: <a href=\"mailto:er@secrises.ch\">aufildunozon@gmail.com</a>. Deux chambres pour un séjour au grand calme.<br /><br /></td>
</tr>
</tbody>
</table>
<p>&nbsp;</p>
<p>&nbsp;</p>
<p>&nbsp;</p>
<p>&nbsp;</p>","",NULL,NULL,"",NULL,"","n");
INSERT INTO cms_seiten VALUES ("28","28","1","1","0","","","","Bienvenue","",NULL,NULL,"",NULL,"","","<p style=\"text-align: left;\"><span style=\"color: #000000; font-size: small;\">L\'</span><strong style=\"color: #000000; font-size: small;\">A</strong><span style=\"color: #000000; font-size: small;\">ssociation pour la </span><strong style=\"color: #000000; font-size: small;\">P</strong><span style=\"color: #000000; font-size: small;\">réservation du </span><strong style=\"color: #000000; font-size: small;\">V</strong><span style=\"color: #000000; font-size: small;\">allon du </span><strong style=\"color: #000000; font-size: small;\">N</strong><span style=\"color: #000000; font-size: small;\">ozon&nbsp;vous informe des projets du vallon.</span><span><span style=\"color: #000000; font-size: small;\"><br /></span><span style=\"color: #000000; font-size: small;\"><br /></span></span></p>
<p style=\"text-align: left;\"><span style=\"font-size: small;\"><span style=\"color: #000000;\">Elle s\'engage à en sauvegarder la qualité et l\'intégrité, à protéger sa beauté, sa faune, sa flore et la qualité de ses eaux; à promouvoir le maintien de son patrimoine et sa vocation de lieu protégé, à encourager et soutenir la gestion de l\'endroit pour développer ses valeurs et ses qualités, ainsi qu\'un dialogue constructif avec tous ses intervenants.&nbsp;<br />&nbsp;</span></span></p>
<p style=\"text-align: left;\"><span style=\"font-size: small;\"><span style=\"color: #000000;\">L\'avenir, c\'est notre responsabilité à tous ! <span style=\"font-size: small;\"><span style=\"color: #000000;\"><em><span style=\"text-decoration: underline;\">Engagez-vous</span>,</em> dans la sauvegarde de cette verdoyante vallée ... <a title=\"Contact\" href=\"/contact\" target=\"_self\">Adhérez !<br /><br /><br /></a><br />NEWS &gt; le 5 avril 2014 &nbsp;découverte de la <strong>chouette hulotte</strong> avec un ornithologue &nbsp;<a title=\"Près de chez vous\" href=\"/decouverte/pres_de_chez_vous\" target=\"_self\">à voir&nbsp;</a>&nbsp;</span></span></span></span></p>","",NULL,NULL,"",NULL,"../../media_apvn/navi_8_60/_thumbs/th_paysage.jpg","c");
INSERT INTO cms_seiten VALUES ("33","33","1","4","0","","","","Biodiversité","",NULL,NULL,"",NULL,"","","<p>\"Biodiversité\" est le terme scientifique pour désigner la diversité biologie ou diversité de la vie. On pourrait dire aussi la \"diversité de la nature\". La biodiversité représente la vie qui nous entoure sous toutes ses formes. Elle est le patrimoine naturel que nous devons léguer aux générations futures.&nbsp;Elle est un garantie pour l\'avenir.<br /><br />La biodiversité est une ressource essentielle. L\'homme fait lui aussi partie de la biodiversité et il dépend de la diversité de la vie.</p>","",NULL,NULL,"",NULL,"","n");
INSERT INTO cms_seiten VALUES ("34","34","1","1","0","","","","Contact_10","",NULL,NULL,NULL,NULL,"","","","",NULL,NULL,NULL,NULL,NULL,"n");
INSERT INTO cms_seiten VALUES ("32","32","1","1","0","","","","Historique","",NULL,NULL,"",NULL,"","","<p><span style=\"font-size: small;\"><span style=\"color: #000000;\">C’est le projet d’implantation d’une carrière à Croy, au lieu-dit le Chaney, qui est à l’origine de la fondation de <strong>l’Association pour la préservation du vallon du Nozon (APVN) </strong>le 8 mars 2006.</span></span></p>
<p><span style=\"color: #000000; font-size: small;\">&nbsp;</span></p>
<p><span style=\"font-size: small;\"><span style=\"color: #000000;\">Les initiateurs du projet de carrière souhaitaient exploiter des roches durant une période de 20 à 21 ans avec une remise en état des lieux d’une même durée, dans un périmètre situé à 300m du village de Croy et du hameau du Fochau. Un second périmètre très proche avait été choisi pour une exploitation d’un laps de temps semblable. Parmi les lieux figurant au PDCar (Plan directeur cantonal des carrières (Vaud), c’était l’un des deux projets les plus proches d’un village.</span></span></p>
<p><span style=\"color: #000000; font-size: small;\">&nbsp;</span></p>
<p><span style=\"font-size: small;\"><span style=\"color: #000000;\">Un groupe d’habitants de Croy et du Fochau s’est alors réuni et a décidé, après mûre réflexion, de fonder une association. <strong>L’implantation envisagée portait atteinte à l’unique source d’eau potable alimentant le village</strong> de Croy, au paysage, au couloir de faune , à la flore et bien entendu à la qualité de vie des habitants, sans oublier l’important tourisme régional. Ces éléments nous ont très vite paru dignes d’être préservés dans l’ensemble du vallon du Nozon, raison pour laquelle ils ont été intégrés aux objectifs de l’APVN. </span></span></p>
<p><span style=\"color: #000000; font-size: small;\">&nbsp;</span></p>
<p><strong><em><span style=\"font-size: small;\"><span style=\"color: #000000;\">Lutte contre le projet de carrière au Chaney<br /></span></span></em></strong></p>
<p><span style=\"font-size: small;\"><span style=\"color: #000000;\">La Fondation suisse pour la Protection de l\'Aménagement du paysage et l\'Association pour la Sauvegarde du Pied du Jura (ASPJ), reconnaissant le bien-fondé de notre lutte nous soutiennent activement et nous font profiter de leur longue expérience. <br /><br />Lancement d’une pétition d’opposition au projet déposée en août 2006 auprès du Grand Conseil vaudois après récolte de <strong>5925</strong> signatures, signifiant le souhait profond de la population et des visiteurs de sauvegarder notre région. <strong>90%</strong> des habitants du village de Croy signèrent la pétition.</span></span></p>
<p>&nbsp;</p>
<p><span style=\"font-size: small;\"><span style=\"color: #000000;\">Notre pétition est acceptée par la Commission de pétition du Grand Conseil, puis par le Grand Conseil qui demande plus tard une étude d’impact complémentaire. Celle-ci permet de découvrir une importante nappe d’eau buvable sous le futur lieu d’extraction.</span></span></p>
<p>&nbsp;</p>","",NULL,NULL,"",NULL,"","n");
INSERT INTO cms_seiten VALUES ("29","29","1","3","1","","","","Activités et réalisations","",NULL,NULL,"",NULL,"","","","",NULL,NULL,"",NULL,"../gifs/blank.gif","n");
INSERT INTO cms_seiten VALUES ("30","30","1","1","0","","","","Objectifs","",NULL,NULL,"",NULL,"","","<p><span style=\"font-size: small;\"><span style=\"color: #000000;\">L’Association pour la Préservation du Vallon du Nozon est née au moment ou un projet de carrière menaçait tout particulièrement le village de Croy et sa source d’eau potable, un paysage classé, des couloirs à faune, et la qualité de vie des habitants.&nbsp;</span></span><span style=\"font-size: small;\"><span style=\"color: #000000;\">Les désirs&nbsp;des fondateurs étaient de&nbsp; :<br /><br /><span style=\"font-size: small;\"><span style=\"color: #000000;\">♥ </span></span><strong>sauvegarder l\'environnement </strong>particulièrement beau et paisible du Vallon du Nozon .</span></span></p>
<p>&nbsp;</p>
<p><span style=\"font-size: small;\"><span style=\"color: #000000;\"><span style=\"font-size: small;\"><span style=\"color: #000000;\">♥ </span></span><strong>sauvegarder</strong>, mais non mettre sous cloche ce vallon qui, n’en est pas moins un lieu&nbsp;de vie avec des besoins divers, <strong>logements, travail, services, école, culture</strong> etc.<br /></span></span></p>
<p>&nbsp;</p>
<p><span style=\"font-size: small;\"><span style=\"color: #000000;\"><span style=\"font-size: small;\"><span style=\"color: #000000;\">♥ </span></span>établir des <strong>projets</strong> qui vont dans le sens des besoins actuels: protection de la <strong>biodiversité</strong> du <strong>paysage</strong>, d’un mode de vie sain et équilibré à l’échelle humaine.<br /></span></span></p>
<p><span style=\"color: #000000; font-size: small;\"><br /><span style=\"font-size: small;\"><span style=\"color: #000000;\">♥ </span></span><strong>assurer la perennité</strong> de&nbsp;la <strong>beauté</strong> et de son <strong>calme</strong>, sa <strong>culture</strong> aussi, car n\'oublions pas le joyau qu\'est l\'abbatiale de Romainmôtier, ce site clunisien remarquable dans son écrin de verdure.<br />&nbsp;</span></p>","",NULL,NULL,"",NULL,"../gifs/blank.gif","n");



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
INSERT INTO cms_spezial VALUES ("apvn","LANG1","FR","fr","français","j");
INSERT INTO cms_spezial VALUES ("apvn","LANG2","DE","de","deutsch","j");



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
INSERT INTO cms_templates VALUES ("4","1","zweispaltig_300b_500t_tpl.html","zweispaltig_300_500_tpl.html - li. Spalte Bild, re. Spalte Text","300x300");
INSERT INTO cms_templates VALUES ("7","3","einspaltig_760v_tpl.html","einspaltig_760v_tpl.html - Auflistung von Unterseiten mit je einem Thumbnail und Kurztext","100x100");
INSERT INTO cms_templates VALUES ("10","4","einspaltig_900_nur_text_tpl.html","einspaltig_900_nur_text_tpl.html - Einspaltig, nur Text, 900 Pixel breit","");
INSERT INTO cms_templates VALUES ("13","2","einspaltig_760h_tpl.html","einspaltig_760h_tpl.html - oben Text, unten Auflistung von Thumbnails","100x100");



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
INSERT INTO cms_users VALUES ("3","apvn","8f99e14f5499e3c8115852cb953853a1","NUBD");


