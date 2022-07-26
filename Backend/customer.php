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
                <a href="customer.php?act=add" class="btn-success btn-sm"><i class="fa fa-user-plus"> เพิ่มข้อมูลลูกค้า</i></a>
                <p></p>
                </div>
            </div>
                <?php
                $act = $_GET['act'];
                if($act == 'add'){
                include('customer_form_add.php');
                }elseif ($act == 'edit') {
                include('customer_form_edit.php');
                }
                else {
                include('customer_list.php');
                }
                ?>
            
        </section>
    </body>
</html>
