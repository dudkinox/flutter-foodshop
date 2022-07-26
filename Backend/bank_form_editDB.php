<?php
session_start();
echo '<meta charset="utf-8">';
include('../condb.php');
echo "<pre>";
print_r($_POST);
echo "</pre>";
exit();
if($_SESSION['m_level']!='admin'){
	Header("Location: index.php");
}
	$b_id = mysqli_real_escape_string($con,$_POST["b_id"]);
	$b_name = mysqli_real_escape_string($con,$_POST["b_name"]);
	$b_type = mysqli_real_escape_string($con,$_POST["b_type"]);
	$b_number = mysqli_real_escape_string($con,$_POST["b_number"]);
	$b_owner = mysqli_real_escape_string($con,$_POST["b_owner"]);
	$bn_name = mysqli_real_escape_string($con,$_POST["bn_name"]);

	$date1 = date("Ymd_His");
	$numrand = (mt_rand());
	$b_logo = (isset($_POST['b_logo']) ? $_POST['b_logo'] : '');
	$upload=$_FILES['b_logo']['name'];
	if($upload !='') { 

		$path="../b_logo/";
		$type = strrchr($_FILES['b_logo']['name'],".");
		$newname =$numrand.$date1.$type;
		$path_copy=$path.$newname;
		$path_link="../b_logo/".$newname;
		move_uploaded_file($_FILES['b_logo']['tmp_name'],$path_copy);  
	}else{
		$newname=$b_logo2;
	}

	$sql = "UPDATE tbl_bank SET 
	b_name='$b_name',
	b_type='$b_type',
	b_number='$b_number',
	b_owner='$b_owner',
	bn_name='$bn_name',
	b_logo='$newname'
	WHERE b_id=$b_id
	 ";

	$result = mysqli_query($con, $sql) or die ("Error in query: $sql " . mysqli_error());
	mysqli_close($con);
	
	if($result){
	echo '<script>';
    echo "window.location='bank.php?do=finish';";
    echo '</script>';
	}else{
	echo '<script>';
    echo "window.location='bank.php?act=add&do=f';";
    echo '</script>';
}
?>