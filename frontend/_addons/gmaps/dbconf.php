<?php
/**
 * @author      Roland Hempen - business [at] hempenweb [dot] ch
 * @copyright   you are free to use this code as long as you
 *              credit the author - and provide me with your improvements
 * @version     20120203
 * @abstract    this PHP-File is dedicated to open Database
 **/

// mein Laptop
if (preg_match('/^hero/',$_SERVER['HTTP_HOST']) || $_SERVER['HTTP_HOST'] == 'localhost')  { 
	$dbtype     = 'mysqli'; 	// Datenbank-Server Typ
	$host       = 'localhost'; 	// Server
	$user       = 'root';           // BenutzerIn
	$password   = 'ayk61mz';	// Passwort
	$db         = 'cms_xignis_ml';	// db-Name
}
elseif ($_SERVER['HTTP_HOST'] == 'www.publicdev.ch' || $_SERVER['HTTP_HOST'] == 'publicdev.ch') {
	$dbtype     = 'mysqli';        // Datenbank-Server Typ
	$host       = 'localhost'; 	   // Server
	$user       = 'cmsuser1';				 // BenutzerIn
	$password   = 'ayk61mz';      // Passwort
	$db         = 'cms_xignis_ml';			 // db-Name
} 
elseif ($_SERVER['HTTP_HOST'] == 'www.xignis.ch' || $_SERVER['HTTP_HOST'] == 'xignis.ch') {
	$dbtype     = 'mysqli';         // Datenbank-Server Typ
	$host       = 'localhost';      // Server
	$user       = 'xignisml_u1';    // BenutzerIn
	$password   = 'Wopowe26';       // Passwort
	$db         = 'xignisdbml_db1';		// db-Name
} 

define('MARKER_TABLE','cms_markers2');

// Opens a connection to a mySQL server
$connection=mysqli_connect($host, $user, $password);
if (!$connection) { die('Not connected : ' . mysqli_error()); }

// Set the active mySQL database
$db_selected = mysqli_select_db($connection, $db );
if (!$db_selected) { die ('Can\'t use db : ' . mysqli_error()); }

?>
