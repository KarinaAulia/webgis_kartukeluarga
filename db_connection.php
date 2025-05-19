<?php
// Database configuration
$host = "localhost";
$user = "root";
$pass = "";
$db = "webgis_kk";

// Create connection
$conn = new mysqli($host, $user, $pass, $db);

// Check connection
if ($conn->connect_error) {
    die("Connection failed: " . $conn->connect_error);
}
?>