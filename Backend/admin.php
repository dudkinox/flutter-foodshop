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
                <a href="admin.php?act=add" class="btn-success btn-sm"><i class="fa fa-user-plus"> เพิ่มผู้ดูแลระบบ</i></a>
                <p></p>
                </div>
            </div>
                <?php
                $act = $_GET['act'];
                if($act == 'add'){
                include('admin_form_add.php');
                }elseif ($act == 'edit') {
                include('admin_form_edit.php');
                }
                else {
                include('admin_list.php');
                }
                ?>
            
        </section>
    </body>
</html>
