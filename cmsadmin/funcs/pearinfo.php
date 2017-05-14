<?php
ini_set('include_path', ini_get('include_path'));
require_once('System.php');
echo('Pear-Lib ist richtig installiert: ' . class_exists('System', false) . '<br/>');
echo 'Pear-Lib-Pfad: '. ini_get('include_path');
?>
