
<div class="row">
	<div class="col-12">

		<?php
			$sql = "select * from khachhang";
			$query = mysqli_query($con, $sql);
			if(isset($_GET['id_delete']))
			{
				$sql = "delete from khachhang where maKh ='$_GET[id_delete]'";
				$query = mysqli_query($con, $sql);
				?>
				<script>
					window.location="index.php?quanly=ql_khachhang";
				</script>
				 <?php
			}
		 ?>
		 <p style="text-align: center">  QUẢN LÍ kHÁCH HÀNG</p>
		 <table border="1" style="text-align: center;width: 90%; margin-left:5%">
		 	<tr>
		 		<td>Mã khách hàng</td>
		 		<td>Tên khách hàng</td>
		 		<td>Giới tính</td>
		 		<td>Ngày sinh</td>
		 		<td>Email</td>
		 		<td>Mật khẩu</td>
		 		<td>Địa chỉ</td>
		 		<td>Số điện thoại</td>
		 		
		 		<td></td>
		 	</tr>
		 	<?php
		 		while($data = mysqli_fetch_array($query))
		 		{
		 			echo '<tr>
		 				<td>'.$data["maKh"].'</td>
		 				<td>'.$data["tenKh"].'</td>
		 				<td>'.$data["gioiTinh"].'</td>
		 				<td>'.$data["ngaySinh"].'</td>
		 				<td>'.$data["emailKh"].'</td>
		 				<td>'.$data["matKhau"].'</td>
		 				<td>'.$data["diaChi"].'</td>
		 				<td>'.$data["soDienThoai"].'</td>
		 				
		 				<td><a href="index.php?sua=edit_khachhang&id='.$data["maKh"].'">Edit</a> | <a href="index.php?quanly=ql_khachhang&id_delete='.$data["maKh"].'">Delete</a> </td>
		 			</tr>';
		 		} 
		 	 ?>
		 	
		 </table>
		 <br/><br/>
		 <a href="index.php?them=add_khachhang"><button>Thêm khách hàng</button></a>
	</div>
</div>