<meta charset="UTF-8">
<?php
    include('condb.php');
    date_default_timezone_set('Asia/Bangkok');
	//สร้างตัวแปรวันที่เพื่อเอาไปตั้งชื่อไฟล์ที่อัพโหลด
	$date1 = date("Ymd_His");
	//สร้างตัวแปรสุ่มตัวเลขเพื่อเอาไปตั้งชื่อไฟล์ที่อัพโหลดไม่ให้ชื่อไฟล์ซ้ำกัน
	$numrand = (mt_rand());
	//รับค่าไฟล์จากฟอร์ม

$Sum_id = $_POST['Sum_id'];
$Sum_date = $_POST['Sum_date'];
$Sum_total = $_POST['Sum_total'];
$Order_id = $_POST['Order_id'];

	
		$sql = "INSERT INTO summary
		(
		Sum_id,
		Sum_date,
		Sum_total,
		Order_id
		
		)
		VALUES
		(
		'$Sum_id',
		'$Sum_date',
		'$Sum_total',
		'$Order_id')";
		
		$result = mysqli_query($con, $sql);// or die ("Error in query: $sql " . mysqli_error());
	
	mysqli_close($con);
	// javascript แสดงการ upload file
	
	
	if($result){
echo "<script type='text/javascript'>";
echo "alert('Add Succesfuly');";
echo "window.location = 'sum.php'; ";
echo "</script>";
}
else{
echo "<script type='text/javascript'>";
echo "alert('Error back to upload again');";
echo "window.location = 'sum.php'; ";
echo "</script>";
}
?>