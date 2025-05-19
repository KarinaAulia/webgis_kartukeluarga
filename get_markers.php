<?php
// Include database connection file
require_once 'db_connection.php';

// Get all markers from database
$sql = "SELECT * FROM markers";
$result = $conn->query($sql);

$markers = [];
if ($result->num_rows > 0) {
    while($row = $result->fetch_assoc()) {
        $markers[] = $row;
    }
}

echo json_encode($markers);
$conn->close();
?>