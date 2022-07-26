<?php
//1. เชื่อมต่อ database:
include('condb.php');  //ไฟล์เชื่อมต่อกับ database ที่เราได้สร้างไว้ก่อนหน้าน้ี
$Cus_id = $_GET["ID"];
//2. query ข้อมูลจากตาราง:
$sql = "SELECT * FROM customer WHERE Cus_id='$Cus_id' ";
$result = mysqli_query($con, $sql) or die ("Error in query: $sql " . mysqli_error());
$row = mysqli_fetch_array($result);
extract($row);
?>
<div class="container">
  <div class="row">
      <form  name="addcustomer" action="customer_form_editDB.php" method="POST" enctype="multipart/form-data"  class="form-horizontal">
      <div class="form-group">
          <div class="col-sm-5">
            <p> รหัสผู้ใช้งานทั่วไป</p>
            <input type="text"  name="Cus_id" class="form-control" required placeholder="รหัสผู้ใช้งานทั่วไป"  value="<?php echo $Cus_id; ?>">
          </div>
        </div>  
      <div class="form-group">
          <div class="col-sm-7">
            <p> ชื่อจริง</p>
            <input type="text"  name="Cus_name" class="form-control" required placeholder="ชื่อจริง"  value="<?php echo $Cus_name; ?>">
          </div>
        </div>
        <div class="form-group">
          <div class="col-sm-7">
            <p> นามสกุล</p>
            <input type="text"  name="Cus_sur" class="form-control" required placeholder="นามสกุล"  value="<?php echo $Cus_sur; ?>">
          </div>
        </div>
        <div class="form-group">
          <div class="col-sm-9">
            <p> อีเมล์แอดเดรส</p>
            <input type="text"  name="Cus_email" class="form-control" required placeholder="อีเมล์แอดเดรส"  value="<?php echo $Cus_email; ?>">
          </div>
        </div>
        <div class="form-group">
          <div class="col-sm-9">
            <p> รหัสผ่าน</p>
            <input type="password"  name="Cus_password" class="form-control" required placeholder="รหัสผ่าน"  value="<?php echo $Cus_password; ?>">
          </div>
        </div>
        <div class="form-group">
          <div class="col-sm-12">
            <p> ข้อมูลที่อยู่</p>
            <input type="text"  name="Cus_address" class="form-control" required placeholder="ข้อมูลที่อยู่"  value="<?php echo $Cus_address; ?>">
          </div>
        </div>
        <div class="form-group">
          <div class="col-sm-9">
            <p> เบอร์โทรศัพท์</p>
            <input type="text"  name="Cus_phone" class="form-control" required placeholder="เบอร์โทรศัพท์"  value="<?php echo $Cus_phone; ?>">
          </div>
        </div>
        <div class="form-group">
          <div class="col-sm-12">
            <p> รูปโปรไฟล์ผู้ใช้งาน </p>
            <img src="img/customer/<?php echo $row['Cus_profile'];?>" width="100px">
            <br>
            <br>
            <input type="file" name="Cus_profile" id="Cus_profile" class="form-control" />
          </div>
        </div>
        <div class="form-group">
          <div class="col-sm-12">
             <input type="hidden" name="Cus_id" value="<?php echo $Cus_id; ?>" />
             <input type="hidden" name="img2" value="<?php echo $Cus_profile; ?>" />
            <button type="submit" class="btn btn-success" name="btnadd"> บันทึก </button>
            
          </div>
        </div>
      </form>
    </div>
  </div>