<?php
if(isset($_POST['gui'])){
  $tenkh=$_POST['hoten'];
  $email=$_POST['email'];
  $diachi=$_POST['diachi'];
  $pass=$_POST['pass'];
  $dienthoai=$_POST['dienthoai'];
  $sql_dangky=mysql_query("insert into dangky (tenkhachhang,email,matkhau,dienthoai,diachinhan) value('$tenkh','$email','$pass','$dienthoai','$diachi')");
  if($sql_dangky){
    echo '<h3 style="margin-left:5px;">YOU HAVE SUCCESSFULLY REGISTERED!</h3>';
    echo '<a href="?quanly=dangnhap" style="margin:20px;text-decoration:none;">BACK TO LOG IN';
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
      <td width="40%">NAME: <strong style="color:red;"> (*)</strong></td>
      <td width="60%"><input type="text" name="hoten" size="50"></td>
    </tr>
    <tr>
      <td>EMAIL: <strong style="color:red;"> (*)</strong></td>
      <td width="60%"><input type="text" name="email" size="50"></td>
    </tr>
    <tr>
      <td>PASSWORD  <strong style="color:red;"> (*)</strong></td>
      <td width="60%"><input type="password" name="pass" size="50"></td>
    </tr>
    <tr>
      <td>PHONE NUMBER: <strong style="color:red;"> (*)</strong></td>
      <td width="60%"><input type="text" name="dienthoai" size="50"></td>
    </tr>
    <tr>
      <td>ADDRESS: <strong style="color:red;"> (*)</strong></td>
      <td width="60%"><input type="text" name="diachi" size="50"></td>
    </tr>
    <tr>
      <td colspan="2">
       <p><input type="submit" name="gui" value="SIGN UP" /></p>
     </td>
   </tr>
 </table>
</form>
<div class="ghichu">
	<p>NOTE:</p>
	<textarea name="ghichu">

  </textarea>

