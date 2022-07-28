<?php
header('Content-Type: application/json; charset=utf-8');

require('../http/client.php');

$Cus_id = isset($_GET['Cus_id']) ? $_GET['Cus_id'] : "";
$Number = isset($_GET['Number']) ? $_GET['Number'] : 0;
$Name_order = isset($_GET['Name_order']) ? $_GET['Name_order'] : "";
$Detail_order = isset($_GET['Detail_order']) ? $_GET['Detail_order'] : "";
$Type_order = isset($_GET['Type_order']) ? $_GET['Type_order'] : "";
$Price_order = isset($_GET['Price_order']) ? $_GET['Price_order'] : 0;

$query = "INSERT INTO cash_order(Cus_id, `Number`, Name_order, Detail_order, Type_order, Price_order, `status`) 
          VALUES (
            '" . $Cus_id . "',
            " . $Number . ",
            '" . $Name_order . "',
            '" . $Detail_order . "',
            '" . $Type_order . "',
            " . $Price_order . ",
            'cart'
            )";

if ($conn->query($query) === TRUE) {
    echo '{"status":"success"}';
} else {
    echo '{"status":"fail"}';
}
