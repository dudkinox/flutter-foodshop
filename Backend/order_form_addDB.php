<meta charset="UTF-8">
<?php
    include('condb.php');
    date_default_timezone_set('Asia/Bangkok');
	//สร้างตัวแปรวันที่เพื่อเอาไปตั้งชื่อไฟล์ที่อัพโหลด
	$date1 = date("Ymd_His");
	//สร้างตัวแปรสุ่มตัวเลขเพื่อเอาไปตั้งชื่อไฟล์ที่อัพโหลดไม่ให้ชื่อไฟล์ซ้ำกัน
	$numrand = (mt_rand());
	//รับค่าไฟล์จากฟอร์ม

$Order_id = $_POST['Order_id'];
$Order_date = $_POST['Order_date'];
$Order_Quantity = $_POST['Order_Quantity'];
$Order_total = $_POST['Order_total'];
$Order_details = $_POST['Order_details'];
$Order_status = $_POST['Order_status'];
$Cus_id = $_POST['Cus_id'];
$Food_id = $_POST['Food_id'];

	
		$sql = "INSERT INTO orders
		(
		Order_id,
		Order_date,
		Order_Quantity,
		Order_total,
		Order_details,
		Order_status,
		Cus_id,
		Food_id
		
		)
		VALUES
		(
		'$Order_id',
		'$Order_date',
		'$Order_Quantity',
		'$Order_total',
		'$Order_details',
		'$Order_status',
		'$Cus_id',
		'$Food_id')";
		
		$result = mysqli_query($con, $sql);// or die ("Error in query: $sql " . mysqli_error());
	
	mysqli_close($con);
	// javascript แสดงการ upload file
	
	
	if($result){
echo "<script type='text/javascript'>";
echo "alert('Add Succesfuly');";
echo "window.location = 'index.php'; ";
echo "</script>";
}
else{
echo "<script type='text/javascript'>";
echo "alert('Error back to upload again');";
echo "window.location = 'index.php'; ";
echo "</script>";
}
?>