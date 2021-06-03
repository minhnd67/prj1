<!DOCTYPE html PUBLIC >
<html >
<head>
	<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
	<link rel="stylesheet" type="text/css" href="style-login.css" />
	<title>Đăng nhập vào trang admin</title>
</head>
<?php
session_start();
include('modules/config.php');
if(isset($_POST['login'])){
	$username = $_POST['username'];
	$password = $_POST['password'];
	$sql="select * from admin where username='$username' and password='$password' limit 1 ";
	$row=mysql_query($sql);
	$count=mysql_num_rows($row);
	if($count>0){
		$_SESSION['dangnhap']=$username;
		header('location:index.php');
	}else{
		echo 'Thông tin đăng nhập sai';
		header('location:login.php');
	}
}
?>
<body>
	<div id="login">
		<form action="login.php" method="post" enctype="multipart/form-data">
			<h2>Đăng nhập</h2>
			<input type="text" name="username" id="username" placeholder="Enter username..." required="required" />
			<input type="password" name="password" id="password" placeholder="Enter password..." required="required" />
			<input type="submit" name="login" id="button" value="Sign in"/>
		</form>
	</div>
</div>
</body>
</html>