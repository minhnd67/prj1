<?php

	$tenmaychu='localhost';
	$tentaikhoan='root';
	$pass='';
	$csdl='webmerc';
	$conn=mysql_connect($tenmaychu,$tentaikhoan,$pass,$csdl) or die('Ko kết nối được');
	mysql_select_db($csdl,$conn);
?>