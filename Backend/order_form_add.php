<?php
//1. เชื่อมต่อ database:
include('condb.php');  //ไฟล์เชื่อมต่อกับ database 
//2. query ข้อมูลจากตาราง customer:
$query = "SELECT * FROM customer ORDER BY Cus_id asc" or die("Error:" . mysqli_error());
//3.เก็บข้อมูลที่ query ออกมาไว้ในตัวแปร result .
$result = mysqli_query($con, $query);
//4 . แสดงข้อมูลที่ query ออกมา โดยใช้ตารางในการจัดข้อมูล:
?>
<div class="container">
  <div class="row">
      <form  name="addorder" action="order_form_addDB.php" method="POST" enctype="multipart/form-data"  class="form-horizontal">
      <div class="form-group">
          <div class="col-sm-13">
            <p> รหัสรายการสั่งซื้อ</p>
            <input type="text"  name="Order_id" class="form-control" required placeholder="รหัสรายการสั่งซื้อ" />
          </div>
        </div>  
      <div class="form-group">
          <div class="col-sm-13">
            <p> วันเดือนปี ที่สั่งซื้อ</p>
            <input type="date"  name="Order_date" class="form-control" required placeholder="วันเดือนปี ที่สั่งซื้อ" />
          </div>
        </div>
        <div class="form-group">
          <div class="col-sm-13">
            <p> จำนวนการสั่งซื้ออาหาร </p>
            <input type="text"  name="Order_Quantity" class="form-control" required placeholder="จำนวนการสั่งซื้ออาหาร" />
          </div>
        </div>
        <div class="form-group">
          <div class="col-sm-13">
            <p> ราคารวมของรายการสั่งอาหาร </p>
            <input type="text"  name="Order_total" class="form-control" required placeholder="ราคารวมของรายการสั่งอาหาร" />
          </div>
        </div>
        <div class="form-group">
          <div class="col-sm-13">
            <p> รายละเอียดเพิ่มเติม </p>
            <input type="text"  name="Order_details" class="form-control" required placeholder="รายละเอียดเพิ่มเติม" />
          </div>
        </div>
        <div class="form-group">
          <div class="col-sm-13">
            <p> สถานะการสั่งซื้อ </p>
            <input type="text"  name="Order_status" class="form-control" required placeholder="สถานะการสั่งซื้อ" />
          </div>
        </div>
        <div class="form-group">
          <div class="col-sm-13">
            <p> รหัสผู้ใช้งานทั่วไป </p>
            <select name="Cus_id" class="form-control" required>
              <option value="Cus_id">รหัสผู้ใช้งานทั่วไป</option>
              <?php foreach($result as $results){?>
              <option value="<?php echo $results["Cus_id"];?>">
                <?php echo $results["Cus_id"]; ?>
              </option>
              <?php } ?>
            </select>
          </div>
        </div>
        <div class="form-group">
          <div class="col-sm-12">
            <p> รหัสอาหาร</p>
             <textarea  name="Food_id" rows="5" cols="60"></textarea>
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
