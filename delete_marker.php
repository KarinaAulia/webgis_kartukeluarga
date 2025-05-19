<?php
// Include database connection file
require_once 'db_connection.php';

// Get marker ID from POST request
$id = $_POST['id'];

// Prepare and execute SQL query
$sql = "DELETE FROM markers WHERE id=?";
$stmt = $conn->prepare($sql);
$stmt->bind_param("i", $id);

if ($stmt->execute()) {
    echo "success";
} else {
    echo "error: " . $stmt->error;
}

$stmt->close();
$conn->close();
?>