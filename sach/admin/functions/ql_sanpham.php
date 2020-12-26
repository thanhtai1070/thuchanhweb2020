
<div class="row">
	<div class="col-12">
		<?php
			$sql1 = "select * from sanpham";
			$query1 = mysqli_query($con, $sql1);
			if(isset($_GET['id_delete']))
			{
				$sql = "delete from sanpham where masp ='$_GET[id_delete]'";
				$query = mysqli_query($con, $sql);
				?>
				<script>
					window.location="index.php?quanly=ql_sanpham";
				</script>
				 <?php
			}
		 ?>
		 <p style="text-align: center">  QUẢN LÍ SẢN PHẨM</p>
		 <table border="1" style="text-align: center;width: 90%; margin-left:5%">
		 	<tr>
		 		<td>Mã sản phẩm</td>
		 		<td>Tên sản phẩm</td>
		 		<td>Hình</td>
		 		<td>Giá</td>
		 		<td>Mã nhà cung cấp</td>
		 		<td>Mã loại</td>
		 		<td>Mã Nhà xuất bản</td>
		 		<td>Số trang</td>
		 		<td>Mã tác giả</td>
		 		
		 		
		 		<td>Mô tả</td>
		 		
		 		
		 		<td></td>
		 	</tr>
		 	<?php
		 		while($data = mysqli_fetch_array($query1))
		 		{
		 			echo '<tr>
		 				<td>'.$data["maSp"].'</td>
		 				<td>'.$data["tenSp"].'</td>
		 				<td><img src="../img/'.$data["hinh"].'" width="150" height="120"/></td>
		 				<td>'.$data["gia"].'</td>
		 				<td>'.$data["maNcc"].'</td>
		 				<td>'.$data["maLoai"].'</td>
		 				<td>'.$data["maNxb"].'</td>
		 				<td>'.$data["soTrang"].'</td>
		 				<td>'.$data["maTg"].'</td>
		 				
		 				
		 				<td>'.$data["motaSp"].'</td>
		 				<td><a href="index.php?sua=edit_sanpham&id='.$data["maSp"].'">Edit</a> | <a href="index.php?quanly=ql_sanpham&id_delete='.$data["maSp"].'">Delete</a> </td>
		 			
		 			</tr>';
		 		} 
		 	 ?>
		 	
		 </table>
		  <br/><br/>
		 <a href="index.php?them=add_sanpham"><button>Thêm sản phẩm</button></a>
	</div>
</div>