<!DOCTYPE html>
<html>
<head>
<?php include('header.php');
    error_reporting( error_reporting() & E_NOTICE );?>
</head>
        <section class="content-header">
            <div align="center">
            <p></p>
                <div align="left">
                <a href="bank.php?act=add" class="btn-info btn-sm"> เพิ่ม   </a>
                <p></p>
                </div>
            </div>
                <?php
                $act = $_GET['act'];
                if($act == 'add'){
                include('bank_form_add.php');
                }elseif ($act == 'edit') {
                include('bank_form_edit.php');
                }
                else {
                include('bank_list.php');
                }
                ?>
            
        </section>
    </body>
</html>
