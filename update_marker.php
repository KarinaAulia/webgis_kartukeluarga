<?php
// Include database connection file
require_once 'db_connection.php';

// Get data from POST request
$id = $_POST['id'];
$noKK = $_POST['noKK'];
$alamat = $_POST['alamat'];
$wa = $_POST['wa'];
$lat = $_POST['lat'];
$lng = $_POST['lng'];
$anggotaKeluarga = $_POST['anggotaKeluarga'];

// Prepare and execute SQL query
$sql = "UPDATE markers SET noKK=?, alamat=?, wa=?, lat=?, lng=?, anggotaKeluarga=? WHERE id=?";
$stmt = $conn->prepare($sql);
$stmt->bind_param("sssddsi", $noKK, $alamat, $wa, $lat, $lng, $anggotaKeluarga, $id);

if ($stmt->execute()) {
    echo "success";
} else {
    echo "error: " . $stmt->error;
}

$stmt->close();
$conn->close();
?>