<?php
@session_start();
if(isset($_POST['dangnhap'])){
	$email=$_POST['email'];
	$pass=$_POST['pass'];
	$sql=mysql_query("select * from dangky where email='$email' and matkhau='$pass' limit 1");
	$count=mysql_num_rows($sql);
	if($count>0){
		$tendangnhap=$_SESSION['dangnhap']=$email;
		echo '<p style="text-align:center;width:auto;padding:30px;background:red;color:#fff;font-size:20px;">LOGGED IN SUCCESSFULLY</p>';
		echo '<a href="index.php?quanly=dathang" style="font-size:20px;">BACK PAYMENT</a>';
	}else{
		echo '<p style="text-align:center;width:auto;padding:30px;background:red;color:#fff;font-size:20px;">FALSE LOGIN INFORMATION</p>';
	}
}
?>
<div class="tieude">
	.*MT LUXURY-TOUCH TO SUCCESS*.
</div>
<div class="thongbao">
</div>
<div class="dangky">
	<p style="font-size:18px; color:red;margin:5px;">Items with * are required. Please complete and correct ( ward; commune; district; city)</p>
	<form action="" method="post" enctype="multipart/form-data">
		<table width="100%" border="1" style="border-collapse:collapse;">
			<tr>
				<td width="40%">EMAIL: <strong style="color:red;"> (*)</strong></td>
				<td width="60%"><input type="text" name="email" size="50"></td>
			</tr>
			<td>PASSWORD: <strong style="color:red;"> (*)</strong></td>
			<td width="60%"><input type="password" name="pass" size="50"></td>
		</tr>
		<tr>
			<td colspan="2">
				<p><input type="submit" name="dangnhap" value="SIGN IN" /></p>
			</td>
		</tr>
	</table>
</form>
</div>
<h3><a href="?quanly=dangkymoi" style="text-decoration:none;color:#FFF;margin:10px;border-radius:10px;padding:5px;;background:#F00;float:right;" >SIGN UP</a></h3>

