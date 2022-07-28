<?php

header('Content-Type: application/json charset=utf-8');

require('../http/client.php');

$Order_Quantity = isset($_GET["Order_Quantity"]) ? $_GET["Order_Quantity"] : "";
$Order_total = isset($_GET["Order_total"]) ? $_GET["Order_total"] : "";
$Order_details = isset($_GET["Order_details"]) ? $_GET["Order_details"] : "";
$Cus_id = isset($_GET["Cus_id"]) ? $_GET["Cus_id"] : "";
$Food_id = isset($_GET["Food_id"]) ? $_GET["Food_id"] : "";

$OrderId = "O0001";
$searchOrderId = "SELECT Order_id FROM orders ORDER BY orders.Order_id DESC";
$resultSearchOrderId = $conn->query($searchOrderId);
if ($resultSearchOrderId->num_rows > 0) {
    $rowSearchOrderId = $resultSearchOrderId->fetch_assoc();
    $numFormat = '1' . explode("O", $rowSearchOrderId['Order_id'])[1] + 1;
    $OrderId = "O" . substr($numFormat, 1);
}

$query = "INSERT INTO orders(
            Order_id,
            Order_date,
            Order_Quantity,
            Order_total,
            Order_details,
            Order_status,
            Cus_id,
            Food_id
            ) 
          VALUES (
            '" . $OrderId . "',
            '" . date("Y-m-d") . "',
            '" . $Order_Quantity . "',
            '" . $Order_total . "',
            '" . $Order_details . "',
            'รอการยืนยันออเดอร์',
            '" . $Cus_id . "',
            '" . $Food_id . "'
            )";

$result = $conn->query($query);
if ($result) {
    echo '{"status":"success"}';
} else {
    echo '{"status":"fail"}';
}
