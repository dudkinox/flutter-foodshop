<!DOCTYPE html>
<html>
<head>
<?php include('header.php');
    error_reporting( error_reporting() & E_NOTICE );?>
</head>
      <section class="content-header">
          <div align="center">
            <p></p>
                <div align="right">
                <a href="index.php?act=add" class="btn-success btn-sm"> เพิ่มข้อมูลรายการออเดอร์</i></a>
                <p></p>
                </div>
            </div>
                <?php
                $act = $_GET['act'];
                if($act == 'add'){
                include('order_form_add.php');
                }elseif ($act == 'edit') {
                include('order_form_edit.php');
                }
                else {
                include('order_list.php');
                }
                ?>
            
      </section>
    </body>
</html>
