<?php
    include('h.php');
        // <!-- เชื่อมต่อกับ database -->
        include('condb.php');
        // <!-- query ข้อมูลจากตาราง customer -->
        $query = "SELECT * FROM customer ORDER BY Cus_id ASC" or die("Error:" . mysqli_error());
        // <!-- เก็บข้อมูลที่ query ออกมาไว้ในตัวแปร result -->
        $result = mysqli_query($con, $query);
        // <!-- แสดงข้อมูลที่ query ออกมา โดยใช้ตารางในการจัดข้อมูล -->
        echo ' <table width="200%" class="table table-hover">';
            // <-- หัวข้อตาราง -->
            echo "
                <tr bgcolor ='#20c997'>
                <td width=20%>รูปโปรไฟล์ลูกค้า</td>
                <td>รหัสผู้ใช้งานทั่วไป</td>
                <td>ชื่อจริง</td>
                <td>นามสกุล</td>
                <td>อีเมล์แอดเดรส</td>
                <td>รหัสผ่าน</td>
                <td>ข้อมูลที่อยู่</td>
                <td>เบอร์โทรศัพท์</td>
                <td></td>
                <td></td>
            </tr>";
                
            while($row = mysqli_fetch_array($result)) {
            echo "<tr>";
                echo "<td align=center>"."<img src='img/customer/".$row["Cus_profile"]."' width='100'>"."</td>";
                echo "<td>" .$row["Cus_id"] .  "</td> ";
                echo "<td>" .$row["Cus_name"] .  "</td> ";
                echo "<td>" .$row["Cus_sur"] .  "</td> ";
                echo "<td>" .$row["Cus_email"] .  "</td> ";
                echo "<td>" .$row["Cus_password"] .  "</td> ";
                echo "<td>" .$row["Cus_address"] .  "</td> ";
                echo "<td>" .$row["Cus_phone"] .  "</td> ";
                // <-- แก้ไขข้อมูล -->
                echo "<td><a href='customer.php?act=edit&ID=$row[0]' class='btn btn-warning btn-xs'>แก้ไขข้อมูล</a></td> ";
                    
                // <-- ลบข้อมูล -->
                echo "<td><a href='customer_form_deleteDB.php?ID=$row[0]' onclick=\"return confirm('Do you want to delete this record? !!!')\" class='btn btn-danger btn-xs'>ลบข้อมูล</a></td> ";
            echo "</tr>";
            }
            echo "</table>";
            // <-- close connection -->
            mysqli_close($con);
?>