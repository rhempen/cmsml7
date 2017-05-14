<?php

/**
 * @author      Roland Hempen - business [at] hempenweb [dot] ch
 * @copyright   you are free to use this code as long as you
 *              credit the author - and provide me with your improvements
 * @version     20120203
 * @abstract    this PHP-File is dedicated to update an existing row in the Database
 *              triggered by jQuery dataTables editables
 * */
// Parameter entgegennehmen
$value = $_POST['value'];
$mid = $_POST['id'];
$rowid = $_POST['rowId'];
$colpos = $_POST['columnPosition'];
$colid = $_POST['columnId'];
$colnam = $_POST['columnName'];


// DB-Connection und Defintion MARKER_TABLE
include_once 'dbconf.php';

// Datensatz mit $rowid lesen
function readDataset($mid) {
    global $connection;
    $query = "SELECT * FROM " . MARKER_TABLE . " WHERE mid = '" . $mid . "'";
    $result = mysqli_query($connection, $query);
    if (!$result) {
        return false;
    }
    $row = mysqli_fetch_assoc($result);
    return true;
}

function updateDataset($mid, $colnam, $value) {
    global $connection;
    $query = sprintf("UPDATE " . MARKER_TABLE . " " .
            " SET " . $colnam . " = '%s' " .
            " WHERE mid = '%s' LIMIT 1;", mysqli_real_escape_string($connection, $value), mysqli_real_escape_string($connection, $mid));
    $update_result = mysqli_query($connection,$query);
    if (!$update_result) {
        return false;
    }
    return true;
}

// Update durchführen
if (readDataset($mid)) {
    if (updateDataset($mid, $colnam, $value)) {
        echo $value;
    } else {
        echo "update ist misslungen!";
    }
}

// DB wieder schliessen
mysqli_close($connection);
?>