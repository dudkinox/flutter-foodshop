<?php
header('Content-Type: application/json');
header("Acess-Control-Allow-Origin: *");
header("Acess-Control-Allow-Methods: POST");
header("Acess-Control-Allow-Headers: Acess-Control-Allow-Headers,Content-Type,Acess-Control-Allow-Methods, Authorization");

require('../http/client.php');
$data = json_decode(file_get_contents("php://input"), true);

$name = isset($_GET['name']) ? $_GET['name'] : '';
$sur = isset($_GET['sur']) ? $_GET['sur'] : '';
$email = isset($_GET['email']) ? $_GET['email'] : '';
$password = isset($_GET['password']) ? $_GET['password'] : '';
$address = isset($_GET['address']) ? $_GET['address'] : '';
$phone = isset($_GET['phone']) ? $_GET['phone'] : '';
$fileName  =  $_FILES['image']['name'];
$tempPath  =  $_FILES['image']['tmp_name'];
$fileSize  =  $_FILES['image']['size'];

if (
    $name == '' ||
    $email == '' ||
    $password == '' ||
    $address == '' ||
    $phone == ''
) {
    echo '{"status":"fail"}';
    exit;
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
                $cusId = "C0001";

                $searchCusId = "SELECT Cus_id FROM customer ORDER BY customer.Cus_id DESC";
                $resultSearchCusId = $conn->query($searchCusId);
                if ($resultSearchCusId->num_rows > 0) {
                    $rowSearchCusId = $resultSearchCusId->fetch_assoc();
                    $numFormat = '1' . explode("C", $rowSearchCusId['Cus_id'])[1] + 1;
                    $cusId = "C" . substr($numFormat, 1);
                }

                $query = "INSERT INTO customer(
                            Cus_id, 
                            Cus_name, 
                            Cus_sur, 
                            Cus_email, 
                            Cus_password, 
                            Cus_address, 
                            Cus_phone, 
                            Cus_profile) 
                            VALUES (
                            '" . $cusId . "',
                            '" . $name . "',
                            '" . $sur . "',
                            '" . $email . "',
                            '" . $password . "',
                            '" . $address . "',
                            '" . $phone . "',
                            '" . $upload_path . $fileName . "'
                            )";

                if ($conn->query($query) === TRUE) {
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
