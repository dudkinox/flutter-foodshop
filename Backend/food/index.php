<?php
// display json
header('Content-Type: application/json; charset=utf-8');
// import database
require('../http/client.php');

$type = isset($_GET["type"]) ? $_GET["type"] : "";
// sql display all data
$query = "SELECT * FROM food WHERE Type_food_id = '" . $type . "'";
// send query -> phpmyadmin
$result = $conn->query($query);

$queryCount = "SELECT COUNT(Type_food_id) as count_food FROM food WHERE Type_food_id = '" . $type . "'";
$resultCount = $conn->query($queryCount);
$rowCount = $resultCount->fetch_assoc();
$i = 1;

echo '{
        "type": "' . $type . '",
        "data": [';
while ($row = $result->fetch_assoc()) {
    echo '
            {
                "food_id": "' . $row["Food_id"] . '",
                "food_name": "' . $row["Food_name"] . '",
                "food_price": ' . $row["Food_price"] . ',
                "food_img": "' . $row["Food_img"] . '",
                "food_status": "' . $row["Food_status"] . '"
            }
    ';
    if ($rowCount["count_food"] != $i) {
        echo ',';
    }
    $i++;
}
echo '      ]
      }';
