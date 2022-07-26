<?php include('h.php');?>
<div class="container">
  <div class="row">
      <form  name="addtype" action="type_form_addDB.php" method="POST" enctype="multipart/form-data"  class="form-horizontal">
      <div class="form-group">
          <div class="row">
            <p> รหัสประเภทอาหาร</p>
            <input type="text"  name="Type_food_id" class="form-control" required placeholder="รหัสประเภทอาหาร" />
          </div>
        </div>  
      <div class="form-group">
          <div class="row">
            <p> ชื่อประเภทอาหาร</p>
            <input type="text" name="Type_food_name" class="form-control" required placeholder="ชื่อประเภทอาหาร" />
          </div>
      </div>
      <div class="form-group">
          <div class="col">
            <button type="submit" class="btn btn-success" name="btnadd"> บันทึก </button>
            
      </div>
  </form>
  </div>
</div>

