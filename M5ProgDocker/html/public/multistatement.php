<?php

// include DB helper and create connection
include_once("../source/database.php");

// ShowAllLeerlingen: list all rows from leerlingen (kept for reference)
function ShowAllLeerlingen($conn)
{
    $q = "SELECT * FROM leerlingen";
    $stmt = $conn->prepare($q);
    if (!$stmt) {
        echo "prepare failed: " . htmlspecialchars($conn->error) . "\n";
        return;
    }
    $stmt->execute();
    $result = $stmt->get_result();
    if($result)
    {
        while ($row = $result->fetch_assoc())
        {
            print_r($row);
            echo "\n";
        }
    }
    $stmt->close();
}

// FindLeerling: same as ShowAllLeerlingen but adds a WHERE on `naam` using LIKE
function FindLeerling($conn, $search)
{
    // If no search provided, use '%' to match all rows
    $like = isset($search) && $search !== '' ? '%' . $search . '%' : '%';

    $q = "SELECT * FROM leerlingen WHERE naam LIKE ?";
    $stmt = $conn->prepare($q);
    if (!$stmt) {
        echo "prepare failed: " . htmlspecialchars($conn->error) . "\n";
        return;
    }
    $stmt->bind_param('s', $like);
    $stmt->execute();
    $result = $stmt->get_result();
    if ($result) {
        while ($row = $result->fetch_assoc()) {
            print_r($row);
            echo "\n";
        }
    }
    $stmt->close();
}

// bootstrap connection and call FindLeerling as requested
$conn = database_connect();
$search = isset($_GET['search']) ? trim($_GET['search']) : '';

// Call the function with ($conn, $search)
FindLeerling($conn, $search);

// Print raw GET for debugging (matches earlier screenshot/debug guidance)
print_r($_GET);
