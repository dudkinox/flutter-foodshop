<?php 
include('h.php');
$conn= mysqli_connect("localhost","root","454531","dbjoke_sam_kai") 
or die("Error: " . mysqli_error($conn));
mysqli_query($conn, "SET NAMES 'utf8' ");

$query=mysqli_query($conn,"SELECT COUNT(Sum_id) FROM `summary` ");
	$row = mysqli_fetch_row($query);
 
	$rows = $row[0];
 
	$page_rows = 3;  //จำนวนข้อมูลที่ต้องการให้แสดงใน 1 หน้า  ตย. 5 record / หน้า 
 
	$last = ceil($rows/$page_rows);
 
	if($last < 1){
		$last = 1;
	}
 
	$pagenum = 1;
 
	if(isset($_GET['pn'])){
		$pagenum = preg_replace('#[^0-9]#', '', $_GET['pn']);
	}
 
	if ($pagenum < 1) {
		$pagenum = 1;
	}
	else if ($pagenum > $last) {
		$pagenum = $last;
	}
 
	$limit = 'LIMIT ' .($pagenum - 1) * $page_rows .',' .$page_rows;
 
	$nquery=mysqli_query($conn,"SELECT * FROM summary as w 
    INNER JOIN orders  as x ON w.Order_id=x.Order_id
    ORDER BY w.Sum_id ASC $limit");
 
	$paginationCtrls = '';
 
	if($last != 1){
 
	if ($pagenum > 1) {
$previous = $pagenum - 1;
		$paginationCtrls .= '<a href="'.$_SERVER['PHP_SELF'].'?pn='.$previous.'" class="btn btn-info">Previous</a> &nbsp; &nbsp; ';
 
		for($i = $pagenum-4; $i < $pagenum; $i++){
			if($i > 0){
		$paginationCtrls .= '<a href="'.$_SERVER['PHP_SELF'].'?pn='.$i.'" class="btn btn-primary">'.$i.'</a> &nbsp; ';
			}
	}
}
 
	$paginationCtrls .= ''.$pagenum.' &nbsp; ';
 
	for($i = $pagenum+1; $i <= $last; $i++){
		$paginationCtrls .= '<a href="'.$_SERVER['PHP_SELF'].'?pn='.$i.'" class="btn btn-primary">'.$i.'</a> &nbsp; ';
		if($i >= $pagenum+4){
			break;
		}
	}
 
if ($pagenum != $last) {
$next = $pagenum + 1;
$paginationCtrls .= ' &nbsp; &nbsp; <a href="'.$_SERVER['PHP_SELF'].'?pn='.$next.'" class="btn btn-info">Next</a> ';
}
	}
?>





<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
<title>Untitled Document</title>
<meta name="viewport" content="width=device-width, initial-scale=1">
<!-- Latest compiled and minified CSS -->


<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0-beta.2/css/bootstrap.min.css">


<link href="css/cite.css" rel="stylesheet">
 
<!-- jQuery library -->
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>

<!-- Popper JS -->
<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.6/umd/popper.min.js"></script>

<!-- Latest compiled JavaScript -->
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0-beta.2/js/bootstrap.min.js"></script>

 <link rel="stylesheet" href="css/font-awesome.min.css">

	<!-- Add jQuery library -->
	<script type="text/javascript" src="lib/jquery-1.10.1.min.js"></script>
</head>

<body>

</br>
</br>




<div class="container">

	





<div class="row">


		<div class="col-md-2">

		</div>
		<div class="col-md-12">


<table width="250%" class="table table-striped table-bordered table-hover">
						
						<thead>
							<tr bgcolor ='#FFF200' class="info">  
							<th rowspan="2">รหัสสรุปยอดรายเดือน</th>
							<th rowspan="2">วันเดือนปีที่สรุปยอด</th>
							<th rowspan="2">รวมรายได้ในแต่ละเดือน</th>
                            <th rowspan="2">รหัสรายการสั่งซื้อ</th>
							<th rowspan="2"></th>
							<th rowspan="2"></th>
                            </tr>
							
						</thead>
					
						<tbody>
							<?php
								while($crow = mysqli_fetch_array($nquery)){
							?>

							<?php @$num++;?>
							<tr>
								<td><?php echo $crow['Sum_id']; ?></td>
								<td><?php echo $crow['Sum_date']; ?></td>
								


								</td>
								<td><?php echo $crow['Sum_total']; ?></td>
                                <td><?php echo $crow['Order_id']; ?></td>
								<td><?php echo "<a href='sum.php?act=edit&ID=$crow[0]' class='btn btn-warning btn-xs'>แก้ไขข้อมูล</a>"; ?></td>
    							<td><?php echo "<a href='sum_form_deleteDB.php?ID=$crow[0]' onclick=\"return confirm('Do you want to delete this record? !!!')\" class='btn btn-danger btn-xs'>ลบข้อมูล</a>";?></td>
    
							</tr>
							<?php
									}
							?>
						</tbody>
					</table> 
							<center><div id="pagination_controls"><?php echo $paginationCtrls; ?></div></center>
				
		</div>
		<div class="col-md-2">
			
		</div>


</div>



</div>
 

</body>
</html>

