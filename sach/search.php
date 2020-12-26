 <?php
        require_once("includes/connection.php");
         include ("header.php"); 

?>
 <section class="categories">
        <div class="container">
            
            <div class="row justify-content-around">
                <div class="hero__search__form">
                    
                            <form action="" method="POST">
                                     <select name="type_search">
                                         <option value="none">
                                        <div class="hero__search__categories">
                                       
                                    Danh Mục
                                    <span class="arrow_carrot-down"></span>
                                          </div>
                                   </option>
                                        <?php
                                            $sql="select * from loai ";
                                            $query = mysqli_query($conn,$sql);
                                             while($data = mysqli_fetch_array($query))
                                             { ?>
                                                <option value="<?php echo $data["maLoai"] ?>"><?php echo $data["tenLoai"] ?></option>
                                          <?php   } ?>
                                         
                                    </select>
                                    <input type="text" name="key" placeholder="Tu khoa">
                                <button type="submit" class="site-btn" name="btnSearch">SEARCH</button>
                            </form>
                            <br/><br/><br/><br/>
                            <div class="row">
                                 <?php
                            if(isset($_POST["btnSearch"]))
                            {
                              
                                $type_search = $_POST["type_search"];
                               
                                $key=isset($_POST['key'])?$_POST['key']:'';

                                if($type_search=="none")
                                {
                                     $sql1="SELECT * from sanpham where tenSp like '%$key%'";
                                    $query1=mysqli_query($conn,$sql1);  
                                    while($data1 = mysqli_fetch_array($query1))
                                    {
                                        echo '<div class="col-lg-5 col-md-4 col-sm-6 " style="margin-top:2rem">
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
                                                <a href="ttsanpham.php"><button type="submit" style="margin-top:8px; background-color:#9ACD32;width: 150px; height: 35px; color:white;"><b>MUA</b></button></a>
                                            </div>
                                        </div>
                                    </div>';
                                    } 
                                }     
                                
                                else
                                // if( $type_search != "")
                                {
                                    $sql1 = "select * from sanpham where maLoai = '$type_search'"; 
                                    $query1 = mysqli_query($conn,$sql1);
                                    while($data1 = mysqli_fetch_array($query1))
                                    {
                                        echo '<div class="col-lg-5 col-md-4 col-sm-6 " style="margin-top:2rem">
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
                                                <a href="ttsanpham.php"><button type="submit" style="margin-top:8px; background-color:#9ACD32;width: 150px; height: 35px; color:white;"><b>MUA</b></button></a>
                                            </div>
                                        </div>
                                    </div>';
                                    } 
                                }
                                 

                                }
                            
                    ?>
                           
                             
                           
                        </div>
                        </div>
                    </div>
              
            </div>
       
    </section>
    <br/><br/>

   <!-- Js Plugins -->
    <script src="js/jquery-3.3.1.min.js"></script>
    <script src="js/bootstrap.min.js"></script>
    <script src="js/jquery.nice-select.min.js"></script>
    <script src="js/jquery-ui.min.js"></script>
    <script src="js/jquery.slicknav.js"></script>
    <script src="js/mixitup.min.js"></script>
    <script src="js/owl.carousel.min.js"></script>
    <script src="js/main.js"></script>
</body>
</html>
<?php 


?>