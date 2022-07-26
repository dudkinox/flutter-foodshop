<?php
    include('h.php');
    //1. เชื่อมต่อ database:
        include('condb.php');  //ไฟล์เชื่อมต่อกับ database ที่เราได้สร้างไว้ก่อนหน้าน้ี
    //2. query ข้อมูลจากตาราง 
    $query = "SELECT * FROM pay as w 
INNER JOIN orders  as z ON w.Order_id=z.Order_id 
ORDER BY w.Pay_id ASC" or die("Error:" . mysqli_error());

$result = mysqli_query($con, $query);
    //3.เก็บข้อมูลที่ query ออกมาไว้ในตัวแปร result .

    echo ' <table width="200%" class="table table-hover">';
    // <-- หัวข้อตาราง -->
    echo "
        <tr bgcolor ='#73C2FB'>
        <td width=20%>รูปหลักฐานธุรกรรมทางการเงิน</td>
        <td>รหัสธุรกรรมทางการเงิน</td>
        <td>วันเดือนปี</td>
        <td>สถานะธุรกรรมทางการเงิน</td>
        <td>รหัสรายการสั่งซื้อ</td>
        <td></td>
        <td></td>
        <td></td>
    </tr>";
    while($row = mysqli_fetch_array($result)) {
    echo "<tr>";
        echo "<td align=center>"."<img src='img/pay/".$row["Pay_slipimg"]."' width='200'>"."</td>";
        echo "<td>" .$row["Pay_id"] .  "</td> ";
        echo "<td>" .$row["Pay_date"] .  "</td> ";
        echo "<td>" ."<font color='red'>".$row["Pay_status"] .  "</td> ";
        echo "<td>" .$row["Order_id"] .  "</td> ";

        //เช็คสลิป/แก้ไขข้อมูล
        echo "<td><a href='pay.php?act=edit&ID=$row[0]' class='btn-success btn-xs'>เช็คสลิป/แก้ไขสลิป</a></td> ";
    
        //ลบข้อมูล
        echo "<td><a href='pay_form_deleteDB.php?ID=$row[0]' onclick=\"return confirm('Do you want to delete this record? !!!')\" class='btn btn-danger btn-xs'>ลบสลิป</a></td> ";
    echo "</tr>";
    }
    echo "</table>";
    //5. close connection
    mysqli_close($con);
?>