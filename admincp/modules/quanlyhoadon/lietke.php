<?php
$sql_lietkehd="select * from cart c ,cart_detail cd, sanpham sp,dangky dk
where c.id=cd.cart_id and cd.product_id = sp.idsanpham and c.fullname = dk.email ";
$row_lietkehd=mysql_query($sql_lietkehd);
 //select id,fullname,product_id,tensp,price   from cart c,cart_detail cd,sanpham s    where c.id = cd.cart_id and cd.product_id = s.idsanpham
?>
<table width="100%" border="1">
  <tr>
    <td>ID</td>
    <td>Khách hàng</td>
    <td>Điện thoại</td>
    <td>ID sản phẩm</td>
    <td>Tên sản phẩm</td>
    <td>Giá</td>
    <td >Ngày</td>
  </tr>
  <?php
  while($dong=mysql_fetch_array($row_lietkehd)){
    ?>
    <tr>
      <td><?php  echo $dong['id'];?></td>
      <td><?php echo $dong['tenkhachhang'] ?></td>
      <td><?php echo $dong['dienthoai'] ?></td>
      <td><?php  echo $dong['product_id'];?></td>
      <td><?php  echo $dong['tensp'];?></td>
      <td><?php  echo $dong['price'];?></td>
      <td><?php  echo $dong['createdate'];?></td>
      <!--  <td><a href="modules/quanlyloaisp/xuly.php?id=<?php echo $dong['id']?>" class="delete_link"><center><img src="../imgs/delete.png" width="30" height="30" /></center></a></td> -->
    </tr>
    <?php
  }
  ?>
</table>
