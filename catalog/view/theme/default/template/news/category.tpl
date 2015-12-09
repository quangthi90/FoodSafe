<?php echo $header; ?>
<div class="container">
    <div class="row">
        <div class="col-sm-12">
            <!-- Breadcrumb -->
            <ul class="breadcrumb">
                <?php foreach ($breadcrumbs as $breadcrumb) { ?>
                <li><a href="<?php echo $breadcrumb['href']; ?>"><?php echo $breadcrumb['text']; ?></a></li>
                <?php } ?>
            </ul>
        </div>
    </div>
    <div class="row">
        <?php //echo $column_left; ?>
        <?php //if ($column_left && $column_right) { ?>
        <?php //$class = 'col-sm-6'; ?>
        <?php //} elseif ($column_left || $column_right) { ?>
        <?php //$class = 'col-sm-9'; ?>
        <?php //} else { ?>
        <?php //$class = 'col-sm-12'; ?>
        <?php //} ?>
        
        <div id="content" class="col-sm-9">
            <?php echo $content_top; ?>
            
            <h1 class="page-title"><?php echo $cat_info['name'] ?></h1>

            <?php if(count($cat_news) > 0) { ?>
                <?php 
                    $main_news = $cat_news[0];
                    array_shift($cat_news);
                ?>    
                <!-- Top news -->
                <div class="cat-top-news">
                    <div class="news-item">
                        <div class="news-img-wrapper">
                            <a href="<?php echo $main_news['href']; ?>">
                                <img class="img-responsive" src="<?php echo $main_news['image']; ?>">
                            </a>
                        </div>
                        <div class="news-title">
                            <a class="news-link" href="<?php echo $main_news['href']; ?>" title="<?php echo $main_news['title']; ?>"><?php echo $main_news['title']; ?>
                            </a>
                            <div class="news-meta">
                                <span class="news-date">16/10/2015 3:49 CH </span> | 
                                <span class="news-stats">
                                    <i class="fa fa-eye"></i> <span class="view-count">100k</span>
                                </span>
                            </div>
                            <div class="news-des"><?php echo $main_news['content']; ?></div>
                        </div>
                    </div>                    
                </div>            
            <?php } ?>            

            <!-- List news -->
            <?php if(count($cat_news) > 0) { ?>
                <div class="divider-line"></div>
                <div class="category-news-list">
                    <?php foreach ($cat_news as $news) { ?>
                        <div class="row news-item">
                            <div class="col-xs-5">
                                <a title="<?php echo $news['title']; ?>" href="<?php echo $news['href']; ?>">
                                    <img class="img-responsive news-img" alt="<?php echo $news['title']; ?>" src="<?php echo $news['image']; ?>"> 
                                </a>
                            </div>
                            <div class="col-xs-7">
                                <a class="news-link" href="<?php echo $news['href']; ?>" title="<?php echo $news['title']; ?>"><?php echo $news['title']; ?></a>
                                <div class="news-des"><?php echo $news['content']; ?></div>
                            </div>
                        </div>
                    <?php } ?>          
                </div>
            <?php } ?>  
            <?php echo $content_bottom; ?>
        </div>
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
                                <div class="col-xs-7">Mở gian hàng</div>
                                <div class="col-xs-5"><a href="#"><img alt="gianhang.thitruongnongnghiep" align="middle" border="0" class="" src="http://opi.yahoo.com/online?u=gianhang.thitruongnongnghiep&amp;m=g&amp;t=1&amp;l=us" style="display: inline-block;"></a></div>
                            </div>
                            <div class="small-line"></div>
                            <div class="row">
                                <div class="col-xs-7">Đăng sản phẩm</div>
                                <div class="col-xs-5"><a href="#"><img alt="gianhang.thitruongnongnghiep" align="middle" border="0" class="" src="http://opi.yahoo.com/online?u=gianhang.thitruongnongnghiep&amp;m=g&amp;t=1&amp;l=us" style="display: inline-block;"></a></div>
                            </div>
                            <div class="small-line"></div>
                            <div class="row">
                                <div class="col-xs-7">Hỗ trợ chung</div>
                                <div class="col-xs-5"><a href="#"><img alt="gianhang.thitruongnongnghiep" align="middle" border="0" class="" src="http://opi.yahoo.com/online?u=gianhang.thitruongnongnghiep&amp;m=g&amp;t=1&amp;l=us" style="display: inline-block;"></a></div>
                            </div>
                            <div class="small-line"></div>
                            <div class="row">
                                <div class="col-xs-7">Hotline</div>
                                <div class="col-xs-5">823434343</div>
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
                        <div class="fb-page" data-href="https://www.facebook.com/suckhoe1967" data-hide-cover="false" data-show-facepile="true" data-show-posts="false"></div>
                    </div>
                </div>
            </div>
        </div>
        <?php //echo $column_right; ?>
    </div>
</div>
<?php echo $footer; ?>