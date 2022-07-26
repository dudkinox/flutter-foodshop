<?php
//1. เชื่อมต่อ database:
include('condb.php');  //ไฟล์เชื่อมต่อกับ database ที่เราได้สร้างไว้ก่อนหน้าน้ี
$Order_id = $_GET["ID"];
//2. query ข้อมูลจากตาราง:
$sql = "SELECT o.*,c.Cus_id
FROM orders as o 
INNER JOIN customer as c ON o.Cus_id = c.Cus_id
WHERE o.Order_id = '$Order_id'
ORDER BY o.Cus_id asc";
$result2 = mysqli_query($con, $sql) or die ("Error in query: $sql " . mysqli_error());
$row = mysqli_fetch_array($result2);
extract($row);

//2. query ข้อมูลจากตาราง 
$query = "SELECT * FROM customer ORDER BY Cus_id asc" or die("Error:" . mysqli_error());
//3.เก็บข้อมูลที่ query ออกมาไว้ในตัวแปร result .
$result = mysqli_query($con, $query);
//4 . แสดงข้อมูลที่ query ออกมา โดยใช้ตารางในการจัดข้อมูล:
?>
<div class="container">
  <div class="row">
      <form  name="addorder" action="order_form_editDB.php" method="POST" enctype="multipart/form-data"  class="form-horizontal">
      <div class="form-group">
          <div class="col-sm-9">
            <p> รหัสรายการสั่งซื้อ</p>
            <input type="text"  name="Order_id" class="form-control" required placeholder="รหัสรายการสั่งซื้อ"  value="<?php echo $Order_id; ?>">
          </div>
        </div>  
      <div class="form-group">
          <div class="col-sm-9">
            <p> วันเดือนปี ที่สั่งซื้อ</p>
            <input type="date"  name="Order_date" class="form-control" required placeholder="วันเดือนปี ที่สั่งซื้อ"  value="<?php echo $Order_date; ?>">
          </div>
        </div>
        <div class="form-group">
          <div class="col-sm-12">
            <p> จำนวนการสั่งซื้ออาหาร </p>
            <input type="text"  name="Order_Quantity" class="form-control" required placeholder="วันเดือนปี ที่สั่งซื้อ"  value="<?php echo $Order_Quantity; ?>">
          </div>
        <div class="form-group">
          <div class="col-sm-9">
            <p> ราคารวมของรายการสั่งอาหาร</p>
            <input type="text"  name="Order_total" class="form-control" required placeholder="ราคารวมของรายการสั่งอาหาร"  value="<?php echo $Order_total; ?>">
          </div>
        </div>
        <div class="form-group">
          <div class="col-sm-9">
            <p> รายละเอียดเพิ่มเติม</p>
            <input type="text"  name="Order_details" class="form-control" required placeholder="รายละเอียดเพิ่มเติม"  value="<?php echo $Order_details; ?>">
          </div>
        </div>
        <div class="form-group">
          <div class="col-sm-9">
            <p> สถานะการสั่งซื้อ</p>
            <input type="text"  name="Order_status" class="form-control" required placeholder="สถานะการสั่งซื้อ"  value="<?php echo $Order_status; ?>">
          </div>
        </div>
         <div class="form-group">
          <div class="col-sm-6">
            <p> รหัสผู้ใช้งานทั่วไป </p>
            <select name="Cus_id" class="form-control" required>
              <option value="<?php echo $row["Cus_id"];?>">
                <?php echo $row["Cus_id"]; ?>
              </option>
              <option value="Cus_id">รหัสผู้ใช้งานทั่วไป</option>
              <?php foreach($result as $results){?>
              <option value="<?php echo $results["Cus_id"];?>">
                <?php echo $results["Cus_id"]; ?>
              </option>
              <?php } ?>
            </select>
          </div>
        </div>
        </div>
        <div class="form-group">
          <div class="col-sm-9">
            <p> รหัสอาหาร</p>
            <input type="textarea"  name="Food_id" class="form-control" required placeholder="รหัสอาหาร"  value="<?php echo $Food_id; ?>">
          </div>
        </div>
            <button type="submit" class="btn btn-success" name="btnadd"> บันทึก </button>
            
          </div>
        </div>
      </form>
    </div>
  </div>