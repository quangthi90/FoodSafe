<?php echo $header; ?>
<div class="container">
    <div class="row">
        <?php //echo $column_left; ?>
        <?php //if ($column_left && $column_right) { ?>
        <?php //$class = 'col-sm-6'; ?>
        <?php //} elseif ($column_left || $column_right) { ?>
        <?php //$class = 'col-sm-9'; ?>
        <?php //} else { ?>
        <?php //$class = 'col-sm-12'; ?>
        <?php //} ?>

        <!-- Start Category Slide Show -->
            <?php echo $categories_slideshow; ?>             
        <!-- End Category Slide Show -->
        
        <div id="content" class="col-sm-9">
            <?php echo $content_top; ?>
            <?php echo $categories; ?>          
            <!-- Start Shops Block -->
            <div class="product-block shops-list" id="top-shops-list">
                <h3 class="heading">TOP Gian Hàng</h3>
                <?php for ($j=0; $j < 2; $j++) { ?>
                <div class="row shops">
                    <?php for ($i=0; $i < 6; $i++) { ?>
                        <div class="col-xs-12 col-sm-4 col-md-2 shop">
                            <div class="shop-img" title="Đặc sản Phan Thiết - Công ty TNHH MTV Hải sản Phan Thiết">
                                <img src="http://img4.wikia.nocookie.net/__cb20150308015108/logopedia/images/b/ba/CN_Fridays_logo_2003.svg" class="img-responsive" style="display: inline-block;">
                            </div>
                            <div class="shop-name">
                                <a href="#">Đặc sản Phan Thiết - Công ty TNHH MTV Hải sản Phan Thiết</a>
                            </div>
                        </div>
                    <?php } ?>
                </div>
                <?php } ?>
            </div>
            <!-- End Shops Block -->
            <?php echo $content_bottom; ?>
        </div>
        <?php echo $column_right; ?>
        <div class="col-sm-3">
            <div class="column-box">
                <div class="tabs">
                    <ul class="nav nav-tabs">
                        <li class="active"><a href="#tab-site-support" data-toggle="tab">Hỗ trợ </a></li>
                    </ul>
                    <div class="tab-content">
                        <div class="tab-pane active" id="tab-site-support">
                            <div>
                                Thời gian từ 08h - 17h (thứ 2 - thứ 6); ngoài giờ và thứ 7, CN vui lòng liên hệ số Hotline hoặc gửi mail về: hotro@safefood.vn
                            </div>
                            <div class="small-line"></div>
                            <div class="row">
                                <div class="col-xs-5">Mở gian hàng</div>
                                <div class="col-xs-7"><a href="#"><img alt="gianhang.thitruongnongnghiep" align="middle" border="0" class="" src="http://opi.yahoo.com/online?u=gianhang.thitruongnongnghiep&amp;m=g&amp;t=1&amp;l=us" style="display: inline-block;"></a></div>
                            </div>
                            <div class="small-line"></div>
                            <div class="row">
                                <div class="col-xs-5">Đăng sản phẩm</div>
                                <div class="col-xs-7"><a href="#"><img alt="gianhang.thitruongnongnghiep" align="middle" border="0" class="" src="http://opi.yahoo.com/online?u=gianhang.thitruongnongnghiep&amp;m=g&amp;t=1&amp;l=us" style="display: inline-block;"></a></div>
                            </div>
                            <div class="small-line"></div>
                            <div class="row">
                                <div class="col-xs-5">Hỗ trợ chung</div>
                                <div class="col-xs-7"><a href="#"><img alt="gianhang.thitruongnongnghiep" align="middle" border="0" class="" src="http://opi.yahoo.com/online?u=gianhang.thitruongnongnghiep&amp;m=g&amp;t=1&amp;l=us" style="display: inline-block;"></a></div>
                            </div>
                            <div class="small-line"></div>
                            <div class="row">
                                <div class="col-xs-5">Hotline</div>
                                <div class="col-xs-7">823434343</div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            <div class="column-box">
                <ul class="nav nav-tabs">
                        <li class="active"><a href="#tab-site-adv" data-toggle="tab">Quảng cáo </a></li>
                    </ul>
                    <div class="tab-content">
                        <div class="tab-pane active" id="tab-site-adv">
                            <div class="qcao10"><a href="http://thitruongnongnghiep.vn/chotet/san-pham/dong-nam-duoc" target="_blank"><img class="" src="http://thitruongnongnghiep.vn/Portals/0/QuangCao/nam-linh-chi-j15010909512560.jpg" width="100%" height="100%" alt="Nấm linh chi" border="0" style="display: inline-block;"></a></div><div class="qcao10"><a href="http://thitruongnongnghiep.vn/chotet/san-pham/do-uong-banh-keo" target="_self"><img class="" src="http://thitruongnongnghiep.vn/Portals/0/QuangCao/hongsam-z150109093335456.jpg" width="100%" height="100%" alt="Nước hồng sâm" border="0" style="display: inline-block;"></a></div><div class="clr"></div>
                        </div>
                    </div>
            </div>
            <div id="fb-root"></div>
            <script>(function(d, s, id) {
                  var js, fjs = d.getElementsByTagName(s)[0];
                  if (d.getElementById(id)) return;
                  js = d.createElement(s); js.id = id;
                  js.src = "//connect.facebook.net/en_US/sdk.js#xfbml=1&version=v2.3";
                  fjs.parentNode.insertBefore(js, fjs);
                }(document, 'script', 'facebook-jssdk'));
            </script>
            <div class="column-box">
                <ul class="nav nav-tabs">
                    <li class="active"><a href="#tab-site-community" data-toggle="tab">Cộng đồng </a></li>
                </ul>
                <div class="tab-content">
                    <div class="tab-pane active" id="tab-site-community">
                        <div class="fb-page" data-href="https://www.facebook.com/fsoccongdongtaichinh" data-hide-cover="false" data-show-facepile="true" data-show-posts="false"></div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>
<?php echo $footer; ?>