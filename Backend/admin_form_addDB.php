<meta charset="UTF-8">
<?php
    include('condb.php');
    date_default_timezone_set('Asia/Bangkok');
	//สร้างตัวแปรวันที่เพื่อเอาไปตั้งชื่อไฟล์ที่อัพโหลด
	$date1 = date("Ymd_His");
	//สร้างตัวแปรสุ่มตัวเลขเพื่อเอาไปตั้งชื่อไฟล์ที่อัพโหลดไม่ให้ชื่อไฟล์ซ้ำกัน
	$numrand = (mt_rand());
	//รับค่าไฟล์จากฟอร์ม

$Admin_id = $_POST['Admin_id'];
$Admin_name = $_POST['Admin_name'];
$Admin_sur = $_POST['Admin_sur'];
$Admin_email = $_POST['Admin_email'];
$Admin_password = $_POST['Admin_password'];
$Admin_profile =(isset($_POST['Admin_profile']) ? $_POST['Admin_profile'] :'');
//img
	$upload=$_FILES['Admin_profile'];
	if($upload <> '') {

	//โฟลเดอร์ที่เก็บไฟล์
	$path="img/admin/";
	//ตัวขื่อกับนามสกุลภาพออกจากกัน
	$type = strrchr($_FILES['Admin_profile']['name'],".");
	//ตั้งชื่อไฟล์ใหม่เป็น สุ่มตัวเลข+วันที่
	$newname ='Admin_profile'.$numrand.$date1.$type;
	$path_copy=$path.$newname;
	$path_link="img/admin/".$newname;
	//คัดลอกไฟล์ไปยังโฟลเดอร์
	move_uploaded_file($_FILES['Admin_profile']['tmp_name'],$path_copy);
	}
	// เพิ่มไฟล์เข้าไปในตาราง uploadfile

    $sql = "INSERT INTO admin
		(
		Admin_id,
		Admin_name,
		Admin_sur,
		Admin_email,
		Admin_password,
		Admin_profile
		)
		VALUES
		(
		'$Admin_id',
		'$Admin_name',
		'$Admin_sur',
		'$Admin_email',
		'$Admin_password',
		'$newname')";

    
    $result = mysqli_query($con, $sql) or die ("Error in query: $sql " . mysqli_error());
    mysqli_close($con);
    
    if($result){
        echo "<script type='text/javascript'>";
        echo "alert('Add Succesfuly');";
        echo "window.location = 'admin.php'; ";
        echo "</script>";
        }
        else{
        echo "<script type='text/javascript'>";
        echo "alert('Error back to upload again');";
        echo "window.location = 'admin.php'; ";
        echo "</script>";
        }
        ?>