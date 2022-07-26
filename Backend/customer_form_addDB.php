<meta charset="UTF-8">
<?php
    include('condb.php');
    date_default_timezone_set('Asia/Bangkok');
	//สร้างตัวแปรวันที่เพื่อเอาไปตั้งชื่อไฟล์ที่อัพโหลด
	$date1 = date("Ymd_His");
	//สร้างตัวแปรสุ่มตัวเลขเพื่อเอาไปตั้งชื่อไฟล์ที่อัพโหลดไม่ให้ชื่อไฟล์ซ้ำกัน
	$numrand = (mt_rand());
	//รับค่าไฟล์จากฟอร์ม

$Cus_id = $_POST['Cus_id'];
$Cus_name = $_POST['Cus_name'];
$Cus_sur = $_POST['Cus_sur'];
$Cus_email = $_POST['Cus_email'];
$Cus_password = $_POST['Cus_password'];
$Cus_address = $_POST['Cus_address'];
$Cus_phone = $_POST['Cus_phone'];
$Cus_profile =(isset($_POST['Cus_profile']) ? $_POST['Cus_profile'] :'');
//img
	$upload=$_FILES['Cus_profile'];
	if($upload <> '') {

	//โฟลเดอร์ที่เก็บไฟล์
	$path="img/customer/";
	//ตัวขื่อกับนามสกุลภาพออกจากกัน
	$type = strrchr($_FILES['Cus_profile']['name'],".");
	//ตั้งชื่อไฟล์ใหม่เป็น สุ่มตัวเลข+วันที่
	$newname ='Cus_profile'.$numrand.$date1.$type;
	$path_copy=$path.$newname;
	$path_link="img/customer/".$newname;
	//คัดลอกไฟล์ไปยังโฟลเดอร์
	move_uploaded_file($_FILES['Cus_profile']['tmp_name'],$path_copy);
	}
	// เพิ่มไฟล์เข้าไปในตาราง uploadfile

    $sql = "INSERT INTO customer
		(
		Cus_id,
		Cus_name,
		Cus_sur,
		Cus_email,
		Cus_password,
		Cus_address,
		Cus_phone,
		Cus_profile
		)
		VALUES
		(
		'$Cus_id',
		'$Cus_name',
		'$Cus_sur',
		'$Cus_email',
		'$Cus_password',
		'$Cus_address',
		'$Cus_phone',
		'$newname')";

    
    $result = mysqli_query($con, $sql) or die ("Error in query: $sql " . mysqli_error());
    mysqli_close($con);
    
    if($result){
        echo "<script type='text/javascript'>";
        echo "alert('Add Succesfuly');";
        echo "window.location = 'customer.php'; ";
        echo "</script>";
        }
        else{
        echo "<script type='text/javascript'>";
        echo "alert('Error back to upload again');";
        echo "window.location = 'customer.php'; ";
        echo "</script>";
        }
        ?>