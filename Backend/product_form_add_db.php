<meta charset="UTF-8">
<?php
    include('condb.php');
    date_default_timezone_set('Asia/Bangkok');
	//สร้างตัวแปรวันที่เพื่อเอาไปตั้งชื่อไฟล์ที่อัพโหลด
	$date1 = date("Ymd_His");
	//สร้างตัวแปรสุ่มตัวเลขเพื่อเอาไปตั้งชื่อไฟล์ที่อัพโหลดไม่ให้ชื่อไฟล์ซ้ำกัน
	$numrand = (mt_rand());
	//รับค่าไฟล์จากฟอร์ม

$Food_id = $_POST['Food_id'];
$Food_name = $_POST['Food_name'];
$Food_details = $_POST['Food_details'];
$Food_price = $_POST['Food_price'];
$Food_status = $_POST['Food_status'];
$Type_food_id = $_POST['Type_food_id'];
$Food_img =(isset($_POST['Food_img']) ? $_POST['Food_img'] :'');
//img
	$upload=$_FILES['Food_img'];
	if($upload <> '') {

	//โฟลเดอร์ที่เก็บไฟล์
	$path="img/food/";
	//ตัวขื่อกับนามสกุลภาพออกจากกัน
	$type = strrchr($_FILES['Food_img']['name'],".");
	//ตั้งชื่อไฟล์ใหม่เป็น สุ่มตัวเลข+วันที่
	$newname ='Food_img'.$numrand.$date1.$type;
	$path_copy=$path.$newname;
	$path_link="img/food/".$newname;
	//คัดลอกไฟล์ไปยังโฟลเดอร์
	move_uploaded_file($_FILES['Food_img']['tmp_name'],$path_copy);
	}
	// เพิ่มไฟล์เข้าไปในตาราง uploadfile
	
		$sql = "INSERT INTO food
		(
		Food_id,
		Food_name,
		Food_details,
		Food_price,
		Food_status,
		Type_food_id,
		Food_img
		
		)
		VALUES
		(
		'$Food_id',
		'$Food_name',
		'$Food_details',
		'$Food_price',
		'$Food_status',
		'$Type_food_id',
		'$newname')";
		
		$result = mysqli_query($con, $sql);// or die ("Error in query: $sql " . mysqli_error());
	
	mysqli_close($con);
	// javascript แสดงการ upload file
	
	
	if($result){
echo "<script type='text/javascript'>";
echo "alert('Add Succesfuly');";
echo "window.location = 'product.php'; ";
echo "</script>";
}
else{
echo "<script type='text/javascript'>";
echo "alert('Error back to upload again');";
echo "window.location = 'product.php'; ";
echo "</script>";
}
?>