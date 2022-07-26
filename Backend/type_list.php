 <?php
      include('h.php');
                //1. เชื่อมต่อ database:
                include('condb.php');  //ไฟล์เชื่อมต่อกับ database ที่เราได้สร้างไว้ก่อนหน้าน้ี
                //2. query ข้อมูลจากตาราง tb_admin:
                $query = "SELECT * FROM type_food ORDER BY Type_food_id ASC" or die("Error:" . mysqli_error());
                //3.เก็บข้อมูลที่ query ออกมาไว้ในตัวแปร result .
                $result = mysqli_query($con, $query);
                //4 . แสดงข้อมูลที่ query ออกมา โดยใช้ตารางในการจัดข้อมูล:
                echo ' <table width=200% class="table table-hover">';
                  //หัวข้อตาราง 
                    echo "
                    <tr bgcolor ='#dc3545'>
                      <td width=40%>รหัสประเภทอาหาร</td>
                      <td width=30%>ชื่อประเภทอาหาร</td>
                      <td></td>
                      <td></td>                 
                    </tr>";
                
                  while($row = mysqli_fetch_array($result)) {
                  echo "<tr>";
                    echo "<td>" .$row["Type_food_id"] .  "</td> ";
                    echo "<td>" .$row["Type_food_name"] .  "</td> ";
                    //แก้ไขข้อมูล
                    echo "<td><a href='type.php?act=edit&ID=$row[0]' class='btn btn-warning btn-xs'>แก้ไขข้อมูล</a></td> ";  
                    //ลบข้อมูล
                    echo "<td><a href='type_form_deleteDB.php?ID=$row[0]' onclick=\"return confirm('Do you want to delete this record? !!!')\" class='btn btn-danger btn-xs'>ลบข้อมูล</a></td> ";
                  echo "</tr>";
                  }
                echo "</table>";
                //5. close connection
mysqli_close($con);
?>