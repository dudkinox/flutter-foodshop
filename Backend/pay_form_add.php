<?php
//1. เชื่อมต่อ database:
include('condb.php');  //ไฟล์เชื่อมต่อกับ database 
//2. query ข้อมูลจากตาราง food:
$query = "SELECT * FROM orders ORDER BY Order_id asc" or die("Error:" . mysqli_error());
//3.เก็บข้อมูลที่ query ออกมาไว้ในตัวแปร result .
$result = mysqli_query($con, $query);
//4 . แสดงข้อมูลที่ query ออกมา โดยใช้ตารางในการจัดข้อมูล:
?>
<div class="container">
  <div class="row">
      <form  name="addpay" action="pay_form_add_db.php" method="POST" enctype="multipart/form-data"  class="form-horizontal">
      <div class="form-group">
          <div class="col-sm-9">
            <p> รหัสธุรกรรมทางการเงิน</p>
            <input type="text"  name="Pay_id" class="form-control" required placeholder="รหัสธุรกรรมทางการเงิน" />
          </div>
        </div>  
      <div class="form-group">
          <div class="col-sm-9">
            <p> วันเดือนปี</p>
            <input type="date"  name="Pay_date" class="form-control" required placeholder="วันเดือนปี" />
          </div>
        </div>
        <div class="form-group">
          <div class="col-sm-12">
            <p> สถานะธุรกรรมทางการเงิน </p>
            <input type="text"  name="Pay_status" class="form-control" required placeholder="สถานะธุรกรรมทางการเงิน" />
          </div>
        </div>
        <div class="form-group">
          <div class="col-sm-8">
            <p> รหัสรายการสั่งซื้อ </p>
            <select name="Order_id" class="form-control" required>
              <option value="Order_id">รหัสรายการสั่งซื้อ</option>
              <?php foreach($result as $results){?>
              <option value="<?php echo $results["Order_id"];?>">
                <?php echo $results["Order_id"]; ?>
              </option>
              <?php } ?>
            </select>
          </div>
        </div>
        
        <div class="form-group">
          
          <div class="col-sm-12">
            <p> รูปหลักฐานธุรกรรมทางการเงิน </p>
            <input type="file" name="Pay_slipimg" id="Pay_slipimg" class="form-control" />
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