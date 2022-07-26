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
	$Cus_id = $_POST["Cus_id"];
	$Cus_name = $_POST["Cus_name"];
	$Cus_sur = $_POST["Cus_sur"];
	$Cus_email = $_POST["Cus_email"];
    $Cus_password = $_POST["Cus_password"];
	$Cus_address = $_POST["Cus_address"];
	$Cus_phone = $_POST["Cus_phone"];
	$Admin_profile = (isset($_POST['Cus_profile']) ? $_POST['Cus_profile'] : '');
	$img2 = $_POST['img2'];
	$upload=$_FILES['Cus_profile']['name'];
	if($upload !='') { 
 
	//โฟลเดอร์ที่เก็บไฟล์
	$path="img/customer/";
	//ตัวขื่อกับนามสกุลภาพออกจากกัน
	$type = strrchr($_FILES['Cus_profile']['name'],".");
	//ตั้งชื่อไฟล์ใหม่เป็น สุ่มตัวเลข+วันที่
	$newname =$numrand.$date1.$type;
 
	$path_copy=$path.$newname;
	$path_link="img/customer/".$newname;
	//คัดลอกไฟล์ไปยังโฟลเดอร์
	move_uploaded_file($_FILES['Cus_profile']['tmp_name'],$path_copy);  
		
	}else {
		$newname = $img2;
	
	}

//ทำการปรับปรุงข้อมูลที่จะแก้ไขลงใน database 
	
	$sql = "UPDATE customer SET
			Cus_id='$Cus_id',
			Cus_name='$Cus_name',
            Cus_sur='$Cus_sur',
            Cus_email='$Cus_email',
            Cus_password='$Cus_password',
			Cus_address='$Cus_address',
			Cus_phone='$Cus_phone',
			Cus_profile='$newname'
			WHERE Cus_id='$Cus_id' ";

$result = mysqli_query($con, $sql) or die ("Error in query: $sql " . mysqli_error());

mysqli_close($con); //ปิดการเชื่อมต่อ database 

//จาวาสคริปแสดงข้อความเมื่อบันทึกเสร็จและกระโดดกลับไปหน้าฟอร์ม
	
	if($result){
	echo "<script type='text/javascript'>";
	echo "alert('Update Succesfuly');";
	echo "window.location = 'customer.php'; ";
	echo "</script>";
	}
	else{
	echo "<script type='text/javascript'>";
	echo "alert('Error back to Update again');";
	echo "</script>";
}
?>