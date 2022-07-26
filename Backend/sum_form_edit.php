<?php
//1. เชื่อมต่อ database:
include('condb.php');  //ไฟล์เชื่อมต่อกับ database ที่เราได้สร้างไว้ก่อนหน้าน้ี
$Sum_id = $_GET["ID"];
//2. query ข้อมูลจากตาราง:
$sql = "SELECT o.*,c.Order_id
FROM summary as o 
INNER JOIN orders as c ON o.Order_id = c.Order_id
WHERE o.Sum_id = '$Sum_id'
ORDER BY o.Order_id asc";
$result2 = mysqli_query($con, $sql) or die ("Error in query: $sql " . mysqli_error());
$row = mysqli_fetch_array($result2);
extract($row);

//2. query ข้อมูลจากตาราง 
$query = "SELECT * FROM Orders ORDER BY Order_id asc" or die("Error:" . mysqli_error());
//3.เก็บข้อมูลที่ query ออกมาไว้ในตัวแปร result .
$result = mysqli_query($con, $query);
//4 . แสดงข้อมูลที่ query ออกมา โดยใช้ตารางในการจัดข้อมูล:
?>
<div class="container">
  <div class="row">
      <form  name="addsummary" action="sum_form_editDB.php" method="POST" enctype="multipart/form-data"  class="form-horizontal">
      <div class="form-group">
          <div class="col-sm-9">
            <p> รหัสสรุปยอดรายเดือน</p>
            <input type="text"  name="Sum_id" class="form-control" required placeholder="รหัสสรุปยอดรายเดือน"  value="<?php echo $Sum_id; ?>">
          </div>
        </div>  
      <div class="form-group">
          <div class="col-sm-9">
            <p> วันเดือนปีที่สรุปยอด</p>
            <input type="text"  name="Sum_date" class="form-control" required placeholder="วันเดือนปีที่สรุปยอด"  value="<?php echo $Sum_date; ?>">
          </div>
        </div>
        <div class="form-group">
          <div class="col-sm-12">
            <p> รวมรายได้ในแต่ละเดือน </p>
            <input type="text"  name="Sum_total" class="form-control" required placeholder="รวมรายได้ในแต่ละเดือน"  value="<?php echo $Sum_total; ?>">
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
            <button type="submit" class="btn btn-success" name="btnadd"> บันทึก </button>
            
          </div>
        </div>
      </form>
    </div>
  </div>