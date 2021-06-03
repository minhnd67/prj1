<!DOCTYPE html PUBLIC >
<html ><head>
<link rel="stylesheet" type="text/css" href="style/css.css" />
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>Trang quản lý website</title>
</head>
<?php
 session_start();
 if(!isset($_SESSION['dangnhap'])){
	 header('location:login.php');
 }
?>
<body>
<div class="wrapper">
	<?php
		include('modules/config.php');
		include('modules/header.php');
		include('modules/menu.php');
		include('modules/content.php');
		include('modules/footer.php');
	?>
</div>
</body>
</html>