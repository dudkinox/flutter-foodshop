<?php
//1. เชื่อมต่อ database:
include('condb.php');  //ไฟล์เชื่อมต่อกับ database 
//2. query ข้อมูลจากตาราง tb_member:
$query = "SELECT * FROM admin ORDER BY Admin_id asc" or die("Error:" . mysqli_error());
//3.เก็บข้อมูลที่ query ออกมาไว้ในตัวแปร result .
$result = mysqli_query($con, $query);
//4 . แสดงข้อมูลที่ query ออกมา โดยใช้ตารางในการจัดข้อมูล:
?>
<div class="container">
  <div class="row">
      <form  name="addadmin" action="admin_form_addDB.php" method="POST" enctype="multipart/form-data"  class="form-horizontal">
      <div class="form-group">
          <div class="col-sm-9">
            <p> รหัสผู้ดูแลระบบ</p>
            <input type="text"  name="Admin_id" class="form-control" required placeholder="รหัสผู้ดูแลระบบ" />
          </div>
        </div>  
      <div class="form-group">
          <div class="col-sm-9">
            <p> ชื่อจริง</p>
            <input type="text"  name="Admin_name" class="form-control" required placeholder="ชื่อจริง" />
          </div>
        </div>
        <div class="form-group">
          <div class="col-sm-9">
            <p> นามสกุล</p>
            <input type="text"  name="Admin_sur" class="form-control" required placeholder="นามสกุล" />
          </div>
        </div>
        <div class="form-group">
          <div class="col-sm-9">
            <p> อีเมล์แอดเดรส </p>
            <input type="text"  name="Admin_email" class="form-control" required placeholder="อีเมล์แอดเดรส" />
          </div>
        </div>
        <div class="form-group">
          <div class="col-sm-9">
            <p> รหัสผ่าน </p>
            <input type="password"  name="Admin_password" class="form-control" required placeholder="รหัสผ่าน" />
          </div>
        </div>
        
        <div class="form-group">
          
          <div class="col-sm-12">
            <p> รูปโปรไฟล์ผู้ดูแลระบบ </p>
            <input type="file" name="Admin_profile" id="Admin_profile" class="form-control" />
          </div>
        </div>
        <div class="form-group">
          <div class="col-sm-12">
            <button type="submit" class="btn btn-success" name="btnadd"> บันทึก </button>
            
          </div>
        </div>
      </form>
    </div>
  </div>