<?php
	$sql1 = "select* from sanpham where maLoai = '1'";
	$query1 = mysqli_query($conn,$sql1);
     if(isset($_POST["btnSearch"]))
    {               
                $key=isset($_POST['key'])?$_POST['key']:'';
                                     $sql1="SELECT * from sanpham where tenSp like '%$key%' and maLoai = '1'";
                                    $query1=mysqli_query($conn,$sql1);  
                                    while($data1 = mysqli_fetch_array($query1))
                                    {
                                        echo '<div class="col-lg-5 col-md-4 col-sm-6 " style="margin-top:2rem">
                                        <div class="featured__item">
                                            <div class="featured__item__pic set-bg" data-setbg="../img'.$data1["hinh"].'">
                                                <ul class="featured__item__pic__hover">
                                                    <li><a href="#"><i class="fa fa-heart"></i></a></li>
                                                    <li><a href="#"><i class="fa fa-shopping-cart"></i></a></li>
                                                </ul>
                                            </div>
                                            <div class="featured__item__text">
                                                <h6><a href="#">'.$data1["tenSp"].'</a></h6>
                                                <h5>'.$data1["gia"].' vnd</h5>
                                                <a href="ttsanpham.php"><button type="submit" style="margin-top:8px; background-color:#9ACD32;width: 150px; height: 35px; color:white;"><b>MUA</b></button></a>
                                            </div>
                                        </div>
                                    </div>';
                                    } 
                                }
                           
	while($data1 = mysqli_fetch_array($query1))
	{
		  echo '<div class="col-lg-3 col-md-4 col-sm-6 mix tomau">
                    <div class="featured__item">
                        <div class="featured__item__pic set-bg" data-setbg="'.$data1["hinh"].'">
                            <ul class="featured__item__pic__hover">
                                <li><a href="#"><i class="fa fa-heart"></i></a></li>
                                <li><a href="#"><i class="fa fa-shopping-cart"></i></a></li>
                            </ul>
                        </div>
                        <div class="featured__item__text">
                            <h6><a href="#">'.$data1["tenSp"].'</a></h6>
                            <h5>'.$data1["gia"].' vnd</h5>
                            <button type="button" style="margin-top:8px; background-color:#9ACD32;width: 150px; height: 35px; color:white;"><b>MUA</b></button>
                        </div>
                    </div>
                </div>';
	}
 ?>