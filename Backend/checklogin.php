<?php
session_start();
    if(isset($_POST['Admin_email'])){
        include("condb.php");
        $Admin_email = $_POST['Admin_email'];
        $Admin_password = $_POST['Admin_password'];
    
        $sql="SELECT * FROM admin WHERE Admin_email='".$Admin_email."' AND Admin_password='".$Admin_password."' ";
        $result = mysqli_query($con,$sql);  

        if(mysqli_num_rows($result)==1){
            $row = mysqli_fetch_array($result);
        
            $_SESSION["Admin_email"] = $row["Admin_email"];
            $_SESSION["Admin_password"] = $row["Admin_password"];
        
            Header("Location: index.php");
        }else{
            echo "<script>";
                echo "alert(\" email หรือ password ไม่ถูกต้อง\");";
                echo "window.history.back()";
            echo "</script>";
        }
    }else{
        Header("Location: login.php");
    }
