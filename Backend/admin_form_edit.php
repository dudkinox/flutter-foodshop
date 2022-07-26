<?php
//1. เชื่อมต่อ database:
include('condb.php');  //ไฟล์เชื่อมต่อกับ database ที่เราได้สร้างไว้ก่อนหน้าน้ี
$Admin_id = $_GET["ID"];
//2. query ข้อมูลจากตาราง:
$sql = "SELECT * FROM admin WHERE Admin_id='$Admin_id' ";
$result = mysqli_query($con, $sql) or die ("Error in query: $sql " . mysqli_error());
$row = mysqli_fetch_array($result);
extract($row);
?>
<div class="container">
  <div class="row">
      <form  name="addadmin" action="admin_form_editDB.php" method="POST" enctype="multipart/form-data"  class="form-horizontal">
      <div class="form-group">
          <div class="col-sm-9">
            <p> รหัสผู้ดูแลระบบ</p>
            <input type="text"  name="Admin_id" class="form-control" required placeholder="รหัสผู้ดูแลระบบ"  value="<?php echo $Admin_id; ?>">
          </div>
        </div>  
      <div class="form-group">
          <div class="col-sm-9">
            <p> ชื่อจริง</p>
            <input type="text"  name="Admin_name" class="form-control" required placeholder="ชื่อจริง"  value="<?php echo $Admin_name; ?>">
          </div>
        </div>
        <div class="form-group">
          <div class="col-sm-9">
            <p> นามสกุล</p>
            <input type="text"  name="Admin_sur" class="form-control" required placeholder="นามสกุล"  value="<?php echo $Admin_sur; ?>">
          </div>
        </div>
        <div class="form-group">
          <div class="col-sm-9">
            <p> อีเมล์แอดเดรส</p>
            <input type="text"  name="Admin_email" class="form-control" required placeholder="อีเมล์แอดเดรส"  value="<?php echo $Admin_email; ?>">
          </div>
        </div>
        <div class="form-group">
          <div class="col-sm-9">
            <p> รหัสผ่าน</p>
            <input type="password"  name="Admin_password" class="form-control" required placeholder="รหัสผ่าน"  value="<?php echo $Admin_password; ?>">
          </div>
        </div>
        <div class="form-group">
          <div class="col-sm-12">
            <p> รูปโปรไฟล์ผู้ดูแลระบบ </p>
            <img src="img/admin/<?php echo $row['Admin_profile'];?>" width="100px">
            <br>
            <br>
            <input type="file" name="Admin_profile" id="Admin_profile" class="form-control" />
          </div>
        </div>
        <div class="form-group">
          <div class="col-sm-12">
             <input type="hidden" name="Admin_id" value="<?php echo $Admin_id; ?>" />
             <input type="hidden" name="img2" value="<?php echo $Admin_profile; ?>" />
            <button type="submit" class="btn btn-success" name="btnadd"> บันทึก </button>
            
          </div>
        </div>
      </form>
    </div>
  </div>