<!DOCTYPE html>
<html>
<head>
<?php include('header.php');
    error_reporting( error_reporting() & E_NOTICE );?>
</head>
        <section class="content-header">
        <div style="width: 1660px; height: 1000px; overflow-y: scroll; scrollbar-arrow-color:blue; scrollbar-face-color: #e7e7e7; scrollbar-3dlight-color: #a0a0a0; scrollbar-darkshadow-color:#888888"> 
            <div align="center">
            <p></p>
                <div align="right">
                <a href="product.php?act=add" class="btn-success btn-sm"><i class="fa fa-user-plus"> เพิ่มข้อมูลรายการอาหาร</i></a>
                <p></p>
                </div>
            </div>
                <?php
                $act = $_GET['act'];
                if($act == 'add'){
                include('product_form_add.php');
                }elseif ($act == 'edit') {
                include('product_form_edit.php');
                }
                else {
                include('product_list.php');
                }
                ?>
        </div>
        </section>
    </body>
</html>

