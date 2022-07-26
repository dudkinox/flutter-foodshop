<script type="text/javascript">
        function readURL(input) {
            if (input.files && input.files[0]) {
                var reader = new FileReader();

                reader.onload = function (e) {
                    $('#blah').attr('src', e.target.result);
                }
                
                reader.readAsDataURL(input.files[0]);
            }
        }
</script>
<form action="bank_form_add_db.php" method="post" class="form-horizontal" enctype="multipart/form-data">
  <div class="form-group">
    <div class="col-sm-2 control-label">
      ชื่อธนาคาร :
    </div>
    <div class="col-sm-3">
      <input type="text" name="b_name" required class="form-control">
    </div>
  </div>
    <div class="form-group">
    <div class="col-sm-2 control-label">
      ประเภทธนาคาร :
    </div>
    <div class="col-sm-3">
      <input type="text" name="b_type" required class="form-control">
    </div>
  </div>
 
  <div class="form-group">
    <div class="col-sm-2 control-label">
      เลขที่บัญชี :
    </div>
    <div class="col-sm-3">
      <input type="text" name="b_number" required class="form-control">
    </div>
  </div>
  <div class="form-group">
    <div class="col-sm-2 control-label">
      เจ้าของบัญชี :
    </div>
    <div class="col-sm-3">
      <input type="text" name="b_owner" required class="form-control">
    </div>
  </div>
 <div class="form-group">
    <div class="col-sm-2 control-label">
      สาขา :
    </div>
    <div class="col-sm-3">
      <input type="text" name="bn_name" required class="form-control">
    </div>
  </div>
  <div class="form-group">
    <div class="col-sm-2 control-label">
      โลโก้ธนาคาร :
    </div>
    <div class="col-sm-4">
      <input type="file" name="b_logo" required class="form-control" accept="image/*" onchange="readURL(this);"/>
      <img id="blah" src="#" alt="" width="250" class="img-rounded"/ style="margin-top: 10px;">
    </div>
  </div>
  <div class="form-group">
    <div class="col-sm-2">
    </div>
    <div class="col-sm-3">
      <button type="submit" class="btn btn-success">เพิ่มข้อมูล</button>
      <a href="bank.php" class="btn btn-danger">ยกเลิก</a>
    </div>
  </div>
</form>