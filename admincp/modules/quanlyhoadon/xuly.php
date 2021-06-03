<?php
	include('../config.php');
	$tenloaisp=$_POST['loaisp'];
	$tinhtrang=$_POST['tinhtrang'];
	$sql_xoa = "delete from loaisp where idloaisp = $_GET[id]";
	mysql_query($sql_xoa);
	header('location:../../index.php?quanly=hoadon&ac=lietke');
?>
