<?php
//1. เชื่อมต่อ database:
include('condb.php');  //ไฟล์เชื่อมต่อกับ database 
//2. query ข้อมูลจากตาราง customer:
$query = "SELECT * FROM orders ORDER BY Order_id asc" or die("Error:" . mysqli_error());
//3.เก็บข้อมูลที่ query ออกมาไว้ในตัวแปร result .
$result = mysqli_query($con, $query);
//4 . แสดงข้อมูลที่ query ออกมา โดยใช้ตารางในการจัดข้อมูล:
?>
<div class="container">
  <div class="row">
      <form  name="addsummary" action="sum_form_addDB.php" method="POST" enctype="multipart/form-data"  class="form-horizontal">
      <div class="form-group">
          <div class="col-sm-13">
            <p> รหัสสรุปยอดรายเดือน</p>
            <input type="text"  name="Sum_id" class="form-control" required placeholder="รหัสสรุปยอดรายเดือน" />
          </div>
        </div>  
      <div class="form-group">
          <div class="col-sm-13">
            <p> วันเดือนปีที่สรุปยอด</p>
            <input type="text"  name="Sum_date" class="form-control" required placeholder="วันเดือนปีที่สรุปยอด" />
          </div>
        </div>
        <div class="form-group">
          <div class="col-sm-13">
            <p> รวมรายได้ในแต่ละเดือน </p>
            <input type="text"  name="Sum_total" class="form-control" required placeholder="รวมรายได้ในแต่ละเดือน" />
          </div>
        </div>
        <div class="form-group">
          <div class="col-sm-12">
            <p> รหัสรายการสั่งซื้อ</p>
             <textarea  name="Order_id" rows="5" cols="60"></textarea>
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