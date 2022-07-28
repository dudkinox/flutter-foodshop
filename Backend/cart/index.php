<?php
header('Content-Type: application/json; charset=utf-8');

require('../http/client.php');

$cusId = isset($_GET['cus_id']) ? $_GET['cus_id'] : "";

$query = "SELECT * FROM cash_order WHERE Cus_id = '" . $cusId . "'";
$result = $conn->query($query);
$queryTotal = "SELECT SUM(Price_order) as total FROM cash_order WHERE Cus_id = '" . $cusId . "'";
$resultTotal = $conn->query($queryTotal);
$rowTotal = $resultTotal->fetch_assoc();

$queryCount = "SELECT COUNT(Cus_id) as count_order, SUM(`Number`) as count_number  FROM cash_order WHERE cus_id = '" . $cusId . "'";
$resultCount = $conn->query($queryCount);
$rowCount = $resultCount->fetch_assoc();
$i = 1;

echo '{"cus_id": "' . $cusId . '",
       "total": "' . $rowTotal["total"] . '", 
       "count_order": "' . $rowCount["count_number"] . '",
       "data": [';

while ($row = $result->fetch_assoc()) {
    echo '
        {
            "Number": "' . $row["Number"] . '",
            "Name_order": "' . $row["Name_order"] . '",
            "Detail_order": "' . $row["Detail_order"] . '",
            "Type_order": "' . $row["Type_order"] . '",
            "Price_order": "' . $row["Price_order"] . '"
        }
    ';
    if ($rowCount["count_order"] != $i) {
        echo ',';
    }
    $i++;
}

echo ']}';
