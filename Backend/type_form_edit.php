<?php
//1. เชื่อมต่อ database:
include('condb.php');  //ไฟล์เชื่อมต่อกับ database ที่เราได้สร้างไว้ก่อนหน้านี้
$Type_food_id = $_REQUEST["ID"];
//2. query ข้อมูลจากตาราง:
$sql = "SELECT * FROM type_food WHERE Type_food_id='$Type_food_id' ";
$result = mysqli_query($con, $sql) or die ("Error in query: $sql " . mysqli_error());
$row = mysqli_fetch_array($result);
extract($row);
?>
<?php include('h.php');?>
<div class="container">
  <p> </p>
    <div class="row">
      <div class="col-md-12">
        <form  name="addtype" action="type_form_editDB.php" method="POST" id="type" class="form-horizontal">
          <input type="hidden" name="Type_food_id" value="<?php echo $Type_food_id; ?>" />
          <div class="form-group">
            <div class="col-sm-6" align="left">
              <input  name="Type_food_id" type="text" required class="form-control" id="Type_food_id" value="<?=$Type_food_id;?>" placeholder="รหัสประเภทอาหาร"/>
            </div>
          </div>
          <div class="form-group">
            <div class="col-sm-6" align="left">
              <input  name="Type_food_name" type="text" required class="form-control" id="Type_food_name" value="<?=$Type_food_name;?>" placeholder="ชื่อประเภทอาหาร"/>
            </div>
          </div>

          <div class="form-group">
            <div class="col-sm-6" align="right">
              <button type="submit" class="btn btn-success btn-sm" id="btn"> บันทึกข้อมูล </button>      
            </div> 
          </div>
        </form>
      </div>
    </div>
</div>