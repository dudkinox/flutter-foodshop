<!DOCTYPE html>
<html>
<head>
<?php include('header.php');
    error_reporting( error_reporting() & E_NOTICE );?>
</head>
      <section class="content-header">
      <div style="width: 1660px; height: 900px; overflow-y: scroll; scrollbar-arrow-color:blue; scrollbar-face-color: #e7e7e7; scrollbar-3dlight-color: #a0a0a0; scrollbar-darkshadow-color:#888888"> 
          <div align="center">
            <p></p>
                <div align="right">
                <a href="pay.php?act=add" class="btn-success btn-sm"> เพิ่มข้อมูลการจัดการQR</i></a>
                <p></p>
                </div>
            </div>
                <?php
                $act = $_GET['act'];
                if($act == 'add'){
                include('pay_form_add.php');
                }elseif ($act == 'edit') {
                include('pay_form_edit.php');
                }
                else {
                include('pay_list.php');
                }
                ?>
            
      </section>
    </body>
</html>
