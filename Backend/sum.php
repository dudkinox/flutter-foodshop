<!DOCTYPE html>
<html>
<head>
<?php include('header.php');
    error_reporting( error_reporting() & E_NOTICE );?>
</head>
      <section class="content-header">
      <div style="width: 1660px; height: 930px; overflow-y: scroll; scrollbar-arrow-color:blue; scrollbar-face-color: #e7e7e7; scrollbar-3dlight-color: #a0a0a0; scrollbar-darkshadow-color:#888888">
          <div align="center">
            <p></p>
                <div align="right">
                <a href="sum.php?act=add" class="btn-success btn-sm"> เพิ่มข้อมูลสรุปยอดรายเดือน</i></a>
                <p></p>
                </div>
            </div>
<?php
//เชื่อมต่อฐานข้อมูล
$condb= mysqli_connect("localhost","root","454531","dbjoke_sam_kai") or die("Error: " . mysqli_error($condb));
mysqli_query($condb, "SET NAMES 'utf8' ");
 // คิวรี่ข้อมูลจากตาราง
$query = "SELECT Sum_date, SUM(Sum_total) as total FROM summary GROUP BY Sum_id ASC";
$result = mysqli_query($condb, $query);

    //นำข้อมูลที่ได้จากคิวรี่มากำหนดรูปแบบข้อมุลให้ถูกโครงสร้างของกราฟที่ใช้ *อ่าน docs เพิ่มเติม
    $datax = array();
    foreach ($result as $k) {
      $datax[] = "['".$k['Sum_date']."'".", ".$k['total']."]";
    }

    //cut last commar
    $datax = implode(",", $datax);
    //แสดงข้อมูลก่อนนำไปแสดงบนกราฟ 
     //ถ้าอยากเอาออก ก็ใส่ double slash ข้างหน้าครับ
?>
<html>
  <head>
    <!-- เรียก js มาใช้งาน -->
    <script type="text/javascript" src="https://www.gstatic.com/charts/loader.js"></script>
    <script type="text/javascript">
      google.charts.load('current', {'packages':['corechart']});
      google.charts.setOnLoadCallback(drawChart);

      function drawChart() {

        var data = google.visualization.arrayToDataTable([
          ['Task', 'Summary per Sum_date'], 
          <?php echo $datax;?>
        ]);

        var options = {
          title: 'สรุปยอดรายเดือน ***คิดเป็นเปอร์เซ็นต์ยอดการขายแต่ละเดือน***'
        };

        var chart = new google.visualization.PieChart(document.getElementById('piechart'));

        chart.draw(data, options);
      }
    </script>
  </head>
  <body>
      <div align="center">
    <div id="piechart" style="width: 900px; height: 500px;"></div>
    </div>
  </body>
</html>
                <?php
                $act = $_GET['act'];
                if($act == 'add'){
                include('sum_form_add.php');
                }elseif ($act == 'edit') {
                include('sum_form_edit.php');
                }
                else {
                include('sum_list.php');
                }
                ?>
            
      </section>
    </body>
</html>
