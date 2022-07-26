<?php
//1. เชื่อมต่อ database:
include('condb.php');  //ไฟล์เชื่อมต่อกับ database 
//2. query ข้อมูลจากตาราง food:
$query = "SELECT * FROM type_food ORDER BY Type_food_id asc" or die("Error:" . mysqli_error());
//3.เก็บข้อมูลที่ query ออกมาไว้ในตัวแปร result .
$result = mysqli_query($con, $query);
//4 . แสดงข้อมูลที่ query ออกมา โดยใช้ตารางในการจัดข้อมูล:
?>
<div class="container">
  <div class="row">
      <form  name="addproduct" action="product_form_add_db.php" method="POST" enctype="multipart/form-data"  class="form-horizontal">
      <div class="form-group">
          <div class="col-sm-9">
            <p> รหัสอาหาร</p>
            <input type="text"  name="Food_id" class="form-control" required placeholder="รหัสอาหาร" />
          </div>
        </div>  
      <div class="form-group">
          <div class="col-sm-9">
            <p> ชื่ออาหาร</p>
            <input type="text"  name="Food_name" class="form-control" required placeholder="ชื่ออาหาร" />
          </div>
        </div>
        <div class="form-group">
          <div class="col-sm-12">
            <p> รายละเอียดอาหาร </p>
             <textarea  name="Food_details" rows="5" cols="60"></textarea>
          </div>
        </div>
        <div class="form-group">
          <div class="col-sm-12">
            <p> ราคาอาหาร </p>
            <input type="text"  name="Food_price" class="form-control" required placeholder="ราคาอาหาร" />
          </div>
        </div>
        <div class="form-group">
          <div class="col-sm-12">
            <p> สถานะอาหาร </p>
            <input type="text"  name="Food_status" class="form-control" required placeholder="สถานะอาหาร" />
          </div>
        </div>
        <div class="form-group">
          <div class="col-sm-8">
            <p> ประเภทอาหาร </p>
            <select name="Type_food_id" class="form-control" required>
              <option value="Type_food_id">ประเภทประเภทอาหาร</option>
              <?php foreach($result as $results){?>
              <option value="<?php echo $results["Type_food_id"];?>">
                <?php echo $results["Type_food_name"]; ?>
              </option>
              <?php } ?>
            </select>
          </div>
        </div>
        
        <div class="form-group">
          
          <div class="col-sm-12">
            <p> รูปอาหาร </p>
            <input type="file" name="Food_img" id="Food_img" class="form-control" />
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