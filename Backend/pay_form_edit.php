<?php
//1. เชื่อมต่อ database:
include('condb.php');  //ไฟล์เชื่อมต่อกับ database ที่เราได้สร้างไว้ก่อนหน้าน้ี
$Pay_id = $_GET["ID"];
//2. query ข้อมูลจากตาราง:
$sql = "SELECT p.*,i.Order_id
FROM pay as p 
INNER JOIN orders as i ON p.Order_id = i.Order_id
WHERE p.Pay_id = '$Pay_id'
ORDER BY p.Order_id asc";
$result2 = mysqli_query($con, $sql) or die ("Error in query: $sql " . mysqli_error());
$row = mysqli_fetch_array($result2);
extract($row);

//2. query ข้อมูลจากตาราง 
$query = "SELECT * FROM pay ORDER BY pay_id asc" or die("Error:" . mysqli_error());
//3.เก็บข้อมูลที่ query ออกมาไว้ในตัวแปร result .
$result = mysqli_query($con, $query);
//4 . แสดงข้อมูลที่ query ออกมา โดยใช้ตารางในการจัดข้อมูล:
?>
<div class="container">
  <div class="row">
      <form  name="addpay" action="pay_form_editDB.php" method="POST" enctype="multipart/form-data"  class="form-horizontal">
      <div class="form-group">
          <div class="col-sm-9">
            <p> รหัสธุรกรรมทางการเงิน</p>
            <input type="text"  name="Pay_id" class="form-control" required placeholder="รหัสธุรกรรมทางการเงิน"  value="<?php echo $Pay_id; ?>">
          </div>
        </div>  
      <div class="form-group">
          <div class="col-sm-9">
            <p> วันเดือนปี</p>
            <input type="date"  name="Pay_date" class="form-control" required placeholder="วันเดือนปี"  value="<?php echo $Pay_date; ?>">
          </div>
        </div>
        <div class="form-group">
          <div class="col-sm-12">
            <p> สถานะธุรกรรมทางการเงิน </p>
            <input type="text"  name="Pay_status" class="form-control" required placeholder="สถานะธุรกรรมทางการเงิน"  value="<?php echo $Pay_status; ?>">
          </div>
         <div class="form-group">
          <div class="col-sm-6">
            <p> รหัสรายการสั่งซื้อ </p>
            <select name="Order_id" class="form-control" required>
              <option value="<?php echo $row["Order_id"];?>">
                <?php echo $row["Order_id"]; ?>
              </option>
              <option value="Order_id">รหัสรายการสั่งซื้อ</option>
              <?php foreach($result as $results){?>
              <option value="<?php echo $results["Order_id"];?>">
                <?php echo $results["Order_id"]; ?>
              </option>
              <?php } ?>
            </select>
          </div>
        </div>
        </div>
            <div class="form-group">
          <div class="col-sm-12">
            <p> รูปหลักฐานธุรกรรมทางการเงิน </p>
            <img src="img/pay/<?php echo $row['Pay_slipimg'];?>" width="400px">
            <br>
            <br>
            <input type="file" name="Pay_slipimg" id="Pay_slipimg" class="form-control" />
          </div>
        </div>
        <div class="form-group">
          <div class="col-sm-12">
             <input type="hidden" name="Pay_slipimg" value="<?php echo $Pay_slipimg; ?>" />
             <input type="hidden" name="img2" value="<?php echo $Pay_slipimg; ?>" />
            <button type="submit" class="btn btn-success" name="btnadd"> บันทึก </button>
          </div>
        </div>
      </form>
    </div>
  </div>