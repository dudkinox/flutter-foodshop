<?php
    include('h.php');
    //1. เชื่อมต่อ database:
        include('condb.php');  //ไฟล์เชื่อมต่อกับ database ที่เราได้สร้างไว้ก่อนหน้าน้ี
    //2. query ข้อมูลจากตาราง 
        $query = "SELECT * FROM orders as o 
    INNER JOIN customer  as c ON o.Cus_id=c.Cus_id
    ORDER BY o.Order_id ASC" or die("Error:" . mysqli_error());
       
       $result = mysqli_query($con, $query);

    echo ' <table width="200%" class="table table-hover">';
    // <-- หัวข้อตาราง -->
    echo "
        <tr bgcolor ='#FA8072'>
        <td>รหัสรายการสั่งซื้อ</td>
        <td>วันเดือนปี ที่สั่งซื้อ</td>
        <td>จำนวนการสั่งซื้ออาหาร</td>
        <td>ราคารวมของรายการสั่งอาหาร</td>
        <td>รายละเอียดเพิ่มเติม</td>
        <td>สถานะการสั่งซื้อ</td>
        <td>รหัสผู้ใช้งานทั่วไป</td>
        <td>รหัสอาหาร</td>
        <td></td>
        <td></td>
        <td></td>
    </tr>";
    while($row = mysqli_fetch_array($result)) {
    echo "<tr>";
        echo "<td>" .$row["Order_id"] .  "</td> ";
        echo "<td>" .$row["Order_date"] .  "</td> ";
        echo "<td>" .$row["Order_Quantity"] .  "</td> ";
        echo "<td>" .$row["Order_total"] .  "</td> ";
        echo "<td>" .$row["Order_details"] .  "</td> ";
        echo "<td>" .$row["Order_status"] .  "</td> ";
        echo "<td>" .$row["Cus_id"] .  "</td> ";
        echo "<td>" .$row["Food_id"] .  "</td> ";
        //เช็คสลิป
        echo "<td><a href='pay.php?&ID=$row[0]' class='btn-success btn-xs'>เช็คออเดอร์</a></td> ";
        //แก้ไขข้อมูล
        echo "<td><a href='index.php?act=edit&ID=$row[0]' class='btn btn-warning btn-xs'>แก้ไขออเดอร์</a></td> ";
        //ลบข้อมูล
        echo "<td><a href='order_form_deleteDB.php?ID=$row[0]' onclick=\"return confirm('Do you want to delete this record? !!!')\" class='btn btn-danger btn-xs'>ลบออเดอร์</a></td> ";
    echo "</tr>";
    }
    echo "</table>";
    //5. close connection
    mysqli_close($con);
?>