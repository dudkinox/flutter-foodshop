<?php
//1. เชื่อมต่อ database:
include('condb.php');  //ไฟล์เชื่อมต่อกับ database ที่เราได้สร้างไว้ก่อนหน้าน้ี
$Food_id = $_GET["ID"];
//2. query ข้อมูลจากตาราง:
$sql = "SELECT p.*,t.Type_Food_name
FROM food as p 
INNER JOIN type_food as t ON p.Type_food_id = t.Type_food_id
WHERE p.Food_id = '$Food_id'
ORDER BY p.Type_food_id asc";
$result2 = mysqli_query($con, $sql) or die ("Error in query: $sql " . mysqli_error());
$row = mysqli_fetch_array($result2);
extract($row);

//2. query ข้อมูลจากตาราง 
$query = "SELECT * FROM type_food ORDER BY Type_food_id asc" or die("Error:" . mysqli_error());
//3.เก็บข้อมูลที่ query ออกมาไว้ในตัวแปร result .
$result = mysqli_query($con, $query);
//4 . แสดงข้อมูลที่ query ออกมา โดยใช้ตารางในการจัดข้อมูล:
?>
<div class="container">
  <div class="row">
      <form  name="addproduct" action="product_form_editDB.php" method="POST" enctype="multipart/form-data"  class="form-horizontal">
      <div class="form-group">
          <div class="col-sm-9">
            <p> รหัสอาหาร</p>
            <input type="text"  name="Food_id" class="form-control" required placeholder="รหัสอาหาร"  value="<?php echo $Food_id; ?>">
          </div>
        </div>  
      <div class="form-group">
          <div class="col-sm-9">
            <p> ชื่ออาหาร</p>
            <input type="text"  name="Food_name" class="form-control" required placeholder="ชื่ออาหาร"  value="<?php echo $Food_name; ?>">
          </div>
        </div>
        <div class="form-group">
          <div class="col-sm-12">
            <p> รายละเอียดอาหาร </p>
             <textarea  name="Food_details" rows="5" cols="60"><?php echo $Food_details; ?>
             </textarea>
          </div>
        <div class="form-group">
          <div class="col-sm-9">
            <p> ราคาอาหาร</p>
            <input type="text"  name="Food_price" class="form-control" required placeholder="ราคาอาหาร"  value="<?php echo $Food_price; ?>">
          </div>
        </div>
        <div class="form-group">
          <div class="col-sm-9">
            <p> สถานะอาหาร</p>
            <input type="text"  name="Food_status" class="form-control" required placeholder="สถานะอาหาร"  value="<?php echo $Food_status; ?>">
          </div>
        </div>
         <div class="form-group">
          <div class="col-sm-6">
            <p> ประเภทอาหาร </p>
            <select name="Type_food_id" class="form-control" required>
              <option value="<?php echo $row["Type_food_id"];?>">
                <?php echo $row["Type_food_name"]; ?>
              </option>
              <option value="Type_food_id">ประเภทอาหาร</option>
              <?php foreach($result as $results){?>
              <option value="<?php echo $results["Type_food_id"];?>">
                <?php echo $results["Type_food_name"]; ?>
              </option>
              <?php } ?>
            </select>
          </div>
        </div>
        </div>
            <div class="form-group">
          <div class="col-sm-12">
            <p> รูปอาหาร </p>
            <img src="img/food/<?php echo $row['Food_img'];?>" width="100px">
            <br>
            <br>
            <input type="file" name="Food_img" id="Food_img" class="form-control" />
          </div>
        </div>
        <div class="form-group">
          <div class="col-sm-12">
             <input type="hidden" name="Food_id" value="<?php echo $Food_id; ?>" />
             <input type="hidden" name="img2" value="<?php echo $Food_img; ?>" />
            <button type="submit" class="btn btn-success" name="btnadd"> บันทึก </button>
            
          </div>
        </div>
      </form>
    </div>
  </div>