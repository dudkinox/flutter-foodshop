<?php
header('Content-Type: application/json; charset=utf-8');
require('../http/client.php');

$option = isset($_GET['option']) ? $_GET['option'] : "";
$cus_id = isset($_GET['cus_id']) ? $_GET['cus_id'] : "";

$query = "SELECT * FROM cash_order 
          WHERE Cus_id = '" . $cus_id . "' AND status = '" . $option . "'";
$result = $conn->query($query);

$queryCount = "SELECT COUNT(Cus_id) as counts, SUM(Price_order) as total FROM cash_order WHERE Cus_id = '" . $cus_id . "' AND status = '" . $option . "'";
$resultCount = $conn->query($queryCount);
$rowCount = $resultCount->fetch_assoc();
$i = 1;

echo '{
        "status": "' . $option . '",
        "cus_id": "' . $cus_id . '",
        "total": "' . $rowCount["total"] . '",
        "data": [';
while ($row = $result->fetch_assoc()) {
    echo '
            {
                "number": "' . $row["Number"] . '",
                "name_order": "' . $row["Name_order"] . '",
                "detail_order": "' . $row["Detail_order"] . '",
                "type_order": "' . $row["Type_order"] . '",
                "price_order": "' . $row["Price_order"] . '"
            }
    ';
    if ($rowCount["counts"] != $i) {
        echo ',';
    }
    $i++;
}
echo '      ]
      }';
