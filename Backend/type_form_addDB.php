<?php
include('condb.php');

$Type_food_id = $_POST['Type_food_id'];
$Type_food_name = $_POST['Type_food_name'];

$sql ="INSERT INTO type_food
    
    (
      Type_food_id,
      Type_food_name
    ) 

    VALUES 

    (
      '$Type_food_id',
      '$Type_food_name'
    )";
    
    $result = mysqli_query($con, $sql) or die ("Error in query: $sql " . mysqli_error());
    mysqli_close($con);
    
    if($result){
      echo "<script>";
      echo "alert('สำเร็จ');";
      echo "window.location ='type.php'; ";
      echo "</script>";
    } else {
      
      echo "<script>";
      echo "alert('ERROR!');";
      echo "window.location ='type.php'; ";
      echo "</script>";
    }
?>