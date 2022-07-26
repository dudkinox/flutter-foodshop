<?php
//1. เชื่อมต่อ database:
include('condb.php');  //ไฟล์เชื่อมต่อกับ database 
//2. query ข้อมูลจากตาราง tb_member:
$query = "SELECT * FROM customer ORDER BY Cus_id asc" or die("Error:" . mysqli_error());
//3.เก็บข้อมูลที่ query ออกมาไว้ในตัวแปร result .
$result = mysqli_query($con, $query);
//4 . แสดงข้อมูลที่ query ออกมา โดยใช้ตารางในการจัดข้อมูล:
?>
<div class="container">
  <div class="row">
      <form  name="addcustomer" action="customer_form_addDB.php" method="POST" enctype="multipart/form-data"  class="form-horizontal">
      <div class="form-group">
          <div class="col-sm-5">
            <p> รหัสผู้ใช้งานทั่วไป</p>
            <input type="text"  name="Cus_id" class="form-control" required placeholder="รหัสผู้ใช้งานทั่วไป" />
          </div>
        </div>  
      <div class="form-group">
          <div class="col-sm-7">
            <p> ชื่อจริง</p>
            <input type="text"  name="Cus_name" class="form-control" required placeholder="ชื่อจริง" />
          </div>
        </div>
        <div class="form-group">
          <div class="col-sm-7">
            <p> นามสกุล</p>
            <input type="text"  name="Cus_sur" class="form-control" required placeholder="นามสกุล" />
          </div>
        </div>
        <div class="form-group">
          <div class="col-sm-9">
            <p> อีเมล์แอดเดรส </p>
            <input type="text"  name="Cus_email" class="form-control" required placeholder="อีเมล์แอดเดรส" />
          </div>
        </div>
        <div class="form-group">
          <div class="col-sm-9">
            <p> รหัสผ่าน </p>
            <input type="password"  name="Cus_password" class="form-control" required placeholder="รหัสผ่าน" />
          </div>
        </div>
        <div class="form-group">
          <div class="col-sm-12">
            <p> ข้อมูลที่อยู่ </p>
             <textarea  name="Cus_address" rows="5" cols="60"></textarea>
          </div>
        </div>
        <div class="form-group">
          <div class="col-sm-9">
            <p> เบอร์โทรศัพท์ </p>
            <input type="text"  name="Cus_phone" class="form-control" required placeholder="เบอร์โทรศัพท์" />
          </div>
        </div>
        
        <div class="form-group">
          
          <div class="col-sm-12">
            <p> รูปโปรไฟล์ลูกค้า </p>
            <input type="file" name="Cus_profile" id="Cus_profile" class="form-control" />
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