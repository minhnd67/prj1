<?php
$sql_loai="select * from loaisp order by idloaisp asc";
$row_loai=mysql_query($sql_loai);
?>
<div class="box_list">
    <div class="tieude">
       <h3>MERCEDES-BENZ</h3>
   </div>
   <ul class="list">
    <?php
    while($dong_loai=mysql_fetch_array($row_loai)){
        ?>
        <li><a href="index.php?quanly=loaisp&id=<?php echo $dong_loai['idloaisp'] ?>"><?php echo $dong_loai['tenloaisp'] ?></a></li>
        <?php
    }
    ?>
</ul>
</div><!--Ket thuc div box loai phu kien -->
<!--Ket thuc div box thuong hieu -->
<div class="box_list">

 <div class="tieude">
   <h5>NEW PRODUCTS</h5>
</div>
<?php
$sql_banchay=mysql_query("select * from sanpham order by idsanpham desc limit 5");

?>
<ul class="hangbanchay">	
    <?php
    while($dong_banchay=mysql_fetch_array($sql_banchay)){
        ?>
        <li><a href="?quanly=chitietsp&idloaisp=<?php echo $dong_banchay['loaisp'] ?>&id=<?php echo $dong_banchay['idsanpham'] ?>">
           <img src="admincp/modules/quanlysanpham/uploads/<?php echo $dong_banchay['hinhanh'] ?>" width="150" height="150" />
           <p><?php echo $dong_banchay['tensp'] ?></p>
           <p style="color:red;"><?php echo number_format($dong_banchay['giadexuat']).' '.'USD' ?></p>
       </a></li>
       <?php
   }
   ?>
</ul>
</div><!--Ket thuc div box hang ban chay -->
<div class="box_list">
   <?php
   $sql=mysql_query("select * from tintuc");

   ?>
   <div class="tieude">
       <h3>NEWS</h3>
   </div>
   <ul class="tintucsp">	
    <?php
    while($dong_tin=mysql_fetch_array($sql)){
        ?>
        <li><a href="<?php echo $dong_tin['noidung'] ?>">
           <p style="float:left;"><img src="admincp/modules/quanlytintuc/uploads/<?php echo $dong_tin['hinhanh'] ?>" width="40" height="30" /></p>
           <p style="overflow:hidden;padding-left:5px;"><?php echo $dong_tin['tentintuc'] ?></p>
       </a></li>
       <?php
   }
   ?>
</ul>
</div><!--Ket thuc div box tin tức -->