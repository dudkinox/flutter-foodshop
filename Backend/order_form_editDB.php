<meta charset="UTF-8">
<?php
//1. เชื่อมต่อ database: 
include('condb.php');  //ไฟล์เชื่อมต่อกับ database ที่เราได้สร้างไว้ก่อนหน้าน้ี
  //Set ว/ด/ป เวลา ให้เป็นของประเทศไทย
    date_default_timezone_set('Asia/Bangkok');
	//สร้างตัวแปรวันที่เพื่อเอาไปตั้งชื่อไฟล์ที่อัพโหลด
	$date1 = date("Ymd_His");
	//สร้างตัวแปรสุ่มตัวเลขเพื่อเอาไปตั้งชื่อไฟล์ที่อัพโหลดไม่ให้ชื่อไฟล์ซ้ำกัน
	$numrand = (mt_rand());
	
//สร้างตัวแปรสำหรับรับค่าที่นำมาแก้ไขจากฟอร์ม
	$Order_id = $_POST["Order_id"];
	$Order_date = $_POST["Order_date"];
	$Order_Quantity = $_POST["Oder_Quantity"];
	$Order_total = $_POST["Order_total"];
    $Order_details = $_POST["Order_details"];
    $Order_status = $_POST["Order_status"];   
    $Cus_id = $_POST["Cus_id"];
    $Food_id = $_POST["Food_id"];
	
 
//ทำการปรับปรุงข้อมูลที่จะแก้ไขลงใน database 
	
	$sql = "UPDATE orders SET
			Order_id='$Order_id',
			Order_date='$Order_date',
            Order_Quantity='$Order_Quantity',
            Order_total='$Order_total',
            Order_details='$Order_details',
			Order_status='$Order_status',
            Cus_id='$Cus_id',
            Food_id='$Food_id'
			WHERE Order_id='$Order_id' ";

$result = mysqli_query($con, $sql) or die ("Error in query: $sql " . mysqli_error());

mysqli_close($con); //ปิดการเชื่อมต่อ database 

//จาวาสคริปแสดงข้อความเมื่อบันทึกเสร็จและกระโดดกลับไปหน้าฟอร์ม
	
	if($result){
	echo "<script type='text/javascript'>";
	echo "alert('Update Succesfuly');";
	echo "window.location = 'index.php'; ";
	echo "</script>";
	}
	else{
	echo "<script type='text/javascript'>";
	echo "alert('Error back to Update again');";
	echo "</script>";
}
?>