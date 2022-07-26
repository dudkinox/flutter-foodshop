<?php
    include('h.php');
        // <!-- เชื่อมต่อกับ database -->
        include('condb.php');
        // <!-- query ข้อมูลจากตาราง admin -->
        $query = "SELECT * FROM admin ORDER BY Admin_id ASC" or die("Error:" . mysqli_error());
        // <!-- เก็บข้อมูลที่ query ออกมาไว้ในตัวแปร result -->
        $result = mysqli_query($con, $query);
        // <!-- แสดงข้อมูลที่ query ออกมา โดยใช้ตารางในการจัดข้อมูล -->
        echo ' <table width="200%" class="table table-hover">';
            // <-- หัวข้อตาราง -->
            echo "
                <tr bgcolor ='#AED6F1'>
                <td width=20%>รูปโปรไฟล์ผู้ดูแลระบบ</td>
                <td>รหัสผู้ดูแลระบบ</td>
                <td>ชื่อจริง</td>
                <td>นามสกุล</td>
                <td>อีเมล์แอดเดรส</td>
                <td>รหัสผ่าน</td>
                <td></td>
                <td></td>
            </tr>";
                
            while($row = mysqli_fetch_array($result)) {
            echo "<tr>";
                echo "<td align=center>"."<img src='img/admin/".$row["Admin_profile"]."' width='100'>"."</td>";
                echo "<td>" .$row["Admin_id"] .  "</td> ";
                echo "<td>" .$row["Admin_name"] .  "</td> ";
                echo "<td>" .$row["Admin_sur"] .  "</td> ";
                echo "<td>" .$row["Admin_email"] .  "</td> ";
                echo "<td>" .$row["Admin_password"] .  "</td> ";
                //แก้ไขข้อมูล
                echo "<td><a href='admin.php?act=edit&ID=$row[0]' class='btn btn-warning btn-xs'>แก้ไขข้อมูล</a></td> ";
                    
                //ลบข้อมูล
                echo "<td><a href='admin_form_deleteDB.php?ID=$row[0]' onclick=\"return confirm('Do you want to delete this record? !!!')\" class='btn btn-danger btn-xs'>ลบข้อมูล</a></td> ";
            echo "</tr>";
            }
            echo "</table>";
            //close connection
            mysqli_close($con);
?>