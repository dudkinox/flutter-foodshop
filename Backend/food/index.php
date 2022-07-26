<?php
// display json
header('Content-Type: application/json');
// import database
require('../http/client.php');
// sql display all data
$query = "SELECT * FROM food";
// send query -> phpmyadmin
$result = $conn->query($query);

echo '[';
while ($row = $result->fetch_assoc()) {
    echo '
    {
        "food_id": "' . $row["Food_id"] . '",
        "food_name": "' . $row["Food_name"] . '",
        "food_details": "' . $row["Food_details"] . '",
        "food_price": ' . $row["Food_price"] . ',
        "food_img": "' . $row["Food_img"] . '",
        "food_status": "' . $row["Food_status"] . '",
        "type_food_id": "' . $row["Type_food_id"] . '"
    },';
}
echo ']';
