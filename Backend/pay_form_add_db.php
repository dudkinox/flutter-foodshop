<meta charset="UTF-8">
<?php
    include('condb.php');
    date_default_timezone_set('Asia/Bangkok');
	//สร้างตัวแปรวันที่เพื่อเอาไปตั้งชื่อไฟล์ที่อัพโหลด
	$date1 = date("Ymd_His");
	//สร้างตัวแปรสุ่มตัวเลขเพื่อเอาไปตั้งชื่อไฟล์ที่อัพโหลดไม่ให้ชื่อไฟล์ซ้ำกัน
	$numrand = (mt_rand());
	//รับค่าไฟล์จากฟอร์ม

$Pay_id = $_POST['Pay_id'];
$Pay_date = $_POST['Pay_date'];
$Pay_status = $_POST['Pay_status'];
$Order_id = $_POST['Order_id'];
$Pay_slipimg =(isset($_POST['Pay_slipimg']) ? $_POST['Pay_slipimg'] :'');
//img
	$upload=$_FILES['Pay_slipimg'];
	if($upload <> '') {

	//โฟลเดอร์ที่เก็บไฟล์
	$path="img/pay/";
	//ตัวขื่อกับนามสกุลภาพออกจากกัน
	$type = strrchr($_FILES['Pay_slipimg']['name'],".");
	//ตั้งชื่อไฟล์ใหม่เป็น สุ่มตัวเลข+วันที่
	$newname ='Pay_slipimg'.$numrand.$date1.$type;
	$path_copy=$path.$newname;
	$path_link="img/pay/".$newname;
	//คัดลอกไฟล์ไปยังโฟลเดอร์
	move_uploaded_file($_FILES['Pay_slipimg']['tmp_name'],$path_copy);
	}
	// เพิ่มไฟล์เข้าไปในตาราง uploadfile
	
		$sql = "INSERT INTO pay
		(
		Pay_id,
		Pay_date,
		Pay_status,
		Order_id,
		Pay_slipimg
		
		)
		VALUES
		(
		'$Pay_id',
		'$Pay_date',
		'$Pay_status',
		'$Order_id',
		'$newname')";
		
		$result = mysqli_query($con, $sql);// or die ("Error in query: $sql " . mysqli_error());
	
	mysqli_close($con);
	// javascript แสดงการ upload file
	
	
	if($result){
echo "<script type='text/javascript'>";
echo "alert('Add Succesfuly');";
echo "window.location = 'pay.php'; ";
echo "</script>";
}
else{
echo "<script type='text/javascript'>";
echo "alert('Error back to upload again');";
echo "window.location = 'pay.php'; ";
echo "</script>";
}
?>