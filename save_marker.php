<?php
// Include database connection file
require_once 'db_connection.php';

// Get data from POST request
$noKK = $_POST['noKK'];
$alamat = $_POST['alamat'];
$wa = $_POST['wa'];
$lat = $_POST['lat'];
$lng = $_POST['lng'];
$anggotaKeluarga = $_POST['anggotaKeluarga'];

// Prepare and execute SQL query
$sql = "INSERT INTO markers (noKK, alamat, wa, lat, lng, anggotaKeluarga) VALUES (?, ?, ?, ?, ?, ?)";
$stmt = $conn->prepare($sql);
$stmt->bind_param("sssdds", $noKK, $alamat, $wa, $lat, $lng, $anggotaKeluarga);

if ($stmt->execute()) {
    echo "success";
} else {
    echo "error: " . $stmt->error;
}

$stmt->close();
$conn->close();
?>