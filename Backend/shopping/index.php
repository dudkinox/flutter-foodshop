<?php

header('Content-Type: application/json charset=utf-8');
header("Acess-Control-Allow-Origin: *");
header("Acess-Control-Allow-Methods: POST");
header("Acess-Control-Allow-Headers: Acess-Control-Allow-Headers,Content-Type,Acess-Control-Allow-Methods, Authorization");

require('../http/client.php');
$data = json_decode(file_get_contents("php://input"), true);

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

$clearOrderCart = "DELETE FROM cash_order WHERE Cus_id = '" . $Cus_id . "'";

$PayId = "P0001";
$searchPayId = "SELECT Pay_id FROM pay ORDER BY pay.Pay_id DESC";
$resultSearchPayId = $conn->query($searchPayId);
if ($resultSearchPayId->num_rows > 0) {
    $rowSearchPayId = $resultSearchPayId->fetch_assoc();
    $numFormat = '1' . explode("P", $rowSearchPayId['Pay_id'])[1] + 1;
    $PayId = "P" . substr($numFormat, 1);
}

if (empty($fileName)) {
    $errorMSG = json_encode(array("message" => "please select image", "status" => false));
    echo $errorMSG;
} else {
    $upload_path = 'upload/';
    $fileExt = strtolower(pathinfo($fileName, PATHINFO_EXTENSION));
    $valid_extensions = array('jpeg', 'jpg', 'png', 'gif');
    if (in_array($fileExt, $valid_extensions)) {
        //check file not exist our upload folder path
        if (!file_exists($upload_path . $fileName)) {
            // check file size '5MB'
            if ($fileSize < 5000000) {
                move_uploaded_file($tempPath, "../" . $upload_path . $fileName); // move file from system temporary path to our upload folder path 

                $queryPay = "INSERT INTO pay(Pay_id, Pay_slipimg, Pay_date, Pay_status, Order_id) 
                             VALUES (
                                    '" . $PayId . "',
                                    '" . $upload_path . $fileName . "',
                                    '" . date("Y-m-d") . "',
                                    '⚪รอการยืนยันสลิป',
                                    '" . $OrderId . "'
                                    )";

                if (
                    $conn->query($query) === TRUE &&
                    $conn->query($clearOrderCart) === TRUE &&
                    $conn->query($queryPay) === TRUE
                ) {
                    echo '{"status":"success"}';
                } else {
                    echo '{"status":"fail"}';
                }
            } else {
                $errorMSG = json_encode(array("message" => "Sorry, your file is too large, please upload 5 MB size", "status" => false));
                echo $errorMSG;
            }
        } else {
            $errorMSG = json_encode(array("message" => "Sorry, file already exists check upload folder", "status" => false));
            echo $errorMSG;
        }
    } else {
        $errorMSG = json_encode(array("message" => "Sorry, only JPG, JPEG, PNG & GIF files are allowed", "status" => false));
        echo $errorMSG;
    }
}
