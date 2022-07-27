<?php
header('Content-Type: application/json');
require('../http/client.php');

$username = isset($_GET["username"]) ? $_GET["username"] : "";
$password = isset($_GET["password"]) ? $_GET["password"] : "";

$query = "SELECT * FROM customer 
          WHERE Cus_email = '$username' 
          AND Cus_password = '$password'";
$result = $conn->query($query);
if ($result->num_rows > 0) {
    $row = $result->fetch_assoc();
    echo '
    {
        "status": "success",
        "cus_id": "' . $row["Cus_id"] . '",
        "cus_name": "' . $row["Cus_name"] . '",
        "cus_sur": "' . $row["Cus_sur"] . '",
        "cus_email": "' . $row["Cus_email"] . '",
        "cus_password": "' . $row["Cus_password"] . '",
        "cus_address": "' . $row["Cus_address"] . '",
        "cus_phone": "' . $row["Cus_phone"] . '",
        "cus_profile": "' . $row["Cus_profile"] . '"
    }';
} else {
    echo '
    {
        "status": "fail",
        "cus_id": "-",
        "cus_name": "-",
        "cus_sur": "-",
        "cus_email": "-",
        "cus_password": "-",
        "cus_address": "-",
        "cus_phone": "-",
        "cus_profile": "-"
    }';
}
