<?php
session_start();
$server = "localhost";
$u = "root";
$p = "";
$dbname = "myblog";

// Create connection
$dbconn = new mysqli($server, $u, $p, $dbname);
// Check connection
if ($dbconn ->connect_error) {
    die("Connection failed: " . $dbconn->connect_error);
}

?>