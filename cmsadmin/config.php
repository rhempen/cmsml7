<?php

/* Ist magic_quotes_runtime aktiviert (1), werden Anf�hrungszeichen in den
Ergebnissen der meisten Funktionen, welche Daten von externer Quelle (inkl.
Datenbanken und Textdateien) zur�ckgeben, mit einem Backslash versehen.
Darum setzen wir das hier mal ausser Kraft!!
*/
/* set_magic_quotes_runtime(0); */

/* Das Serverbetriebssystem feststellen */
define('SERVER_OS', substr(PHP_OS,0,3)); 

/* Tabellen Praefix */
if (TABLE_PREFIX == '') { define('TABLE_PREFIX', 'cms_'); }


/* Pfad zu den Bildern festlegen */
if (defined('WEBSITE')) {
    $website = preg_replace('/\d{1,}$/','',WEBSITE);
    $media_root = '../../media_'.$website;
} else {
    $media_root = '../../media';
}
define('MEDIA_ROOT', $media_root);	
define('MEDIA_BASE', basename(MEDIA_ROOT));  // media - Verzeichnis ohne ../../
define('IMAGES', '/_images/');  // _images - Verzeichnis 
define('THUMBS', '/_thumbs/');  // _thumbnail - Verzeichnis 

/* bestimmen, ob ein Verzeichnis inkl. Content gel�scht werden darf oder nicht */
define('DELTREE_ALLOWED', true);

/* Auswahl des Sprachressourcenfiles */
define('LANGUAGE_FILE', LANGUAGE.'.php');

/* Max. Dateigroesse von Bildern beim Uplaod auf 50 KB beschr�nken */
$size = 1024*1024*3; // 3 MB
define('MAX_IMAGE_SIZE', $size);

/* Definitionen fuer das Erstellen von Thumbnails */
define('THUMB_PREFIX', 'th_');

/* Definitionen fuer die Anzeige von Images im CMS */
define('IMAGE_SHOW_MAX_WIDTH', 300);
define('IMAGE_SHOW_MAX_HEIGHT', 300);

/* Definitionen fuer den Upload von Images -> f�r Galerie
define('IMAGE_MAX_WIDTH', IMAGE_MAX_WIDTH);
define('IMAGE_MAX_HEIGHT', IMAGE_MAX_HEIGHT);
 */
/* Array mit Bilddatei-Endungen, fuer die Thumbnails erstellt werden k�nnen */
$extensions = array('.jpg', '.png');

// Initales Array fuer Messages
$msg = array();

/* Alle Fehler komplett ausschalten */
// error_reporting (0);

/* Error Reporting setzen */
define ('FATAL',E_USER_ERROR);
define ('ERROR',E_USER_WARNING);
define ('WARNING',E_USER_NOTICE);
// Gibt an, welche PHP-Fehlermeldungen gezeigt werden  
error_reporting (FATAL | ERROR | WARNING); 

// Alle Fehler, ausser NOTICE anzeigen
// error_reporting (E_ALL ^ E_NOTICE); 
// error_reporting (E_ERROR); 

// // Alle Fehler ausgeben
// error_reporting (-1);
?>
