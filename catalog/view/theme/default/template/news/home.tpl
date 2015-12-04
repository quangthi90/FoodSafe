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
        
        <div id="content" class="col-sm-9">
            <?php echo $content_top; ?>
            <!-- Breadcrumb -->
            <ul class="breadcrumb">
                <?php foreach ($breadcrumbs as $breadcrumb) { ?>
                <li><a href="<?php echo $breadcrumb['href']; ?>"><?php echo $breadcrumb['text']; ?></a></li>
                <?php } ?>
            </ul>
            <!-- Hot news -->
            <div class="nsl">
                <?php $main_news = $hot_news[0]; ?>
                <?php array_shift($hot_news); ?>
                <div class="nsimg">
                    <div class="nsimg1">
                        <a title="<?php echo $main_news['title']; ?>" href="<?php echo $main_news['href']; ?>"><img alt="<?php echo $main_news['title']; ?>" src="<?php echo $main_news['image']; ?>"></a>
                    </div>
                </div>
                <div class="ns0">
                    <div class="ns1">
                        <a title="<?php echo $main_news['title']; ?>" href="<?php echo $main_news['href']; ?>"><?php echo $main_news['title']; ?></a>
                    </div>
                    <div class="ns2">Thứ sáu, ngày 16/10/2015 3:49:00 CH</div>
                    <div class="ns3"><?php echo $main_news['content']; ?></div>
                </div>
                <div class="ds0">
                    <div class="dss">
                        <ul class="hot-news">
                            <?php foreach ($hot_news as $news) { ?>
                            <li>
                                <div class="climg">
                                    <a href="<?php echo $news['href']; ?>" title="<?php echo $news['title']; ?>">
                                        <img width="100%" height="96px" alt="<?php echo $news['title']; ?>" src="<?php echo $news['image']; ?>">
                                    </a>
                                </div>
                                <div class="ds1">
                                    <a title="<?php echo $news['title']; ?>" href="<?php echo $news['href']; ?>"><?php echo $news['title']; ?></a>
                                </div>
                            </li>
                            <?php } ?>
                        </ul>
                        <script type="text/javascript">
                            $('.hot-news').owlCarousel({
                                items: 3,
                                autoPlay: false,
                                singleItem: false,
                                navigation: true,
                                stopOnHover: true,
                                rewindNav : false,
                                navigationText: ['<i class="fa fa-chevron-left fa-5x"></i>', '<i class="fa fa-chevron-right fa-5x"></i>'],
                                pagination: false
                            });
                        </script>
                    </div>
                    <div class="clr"></div>
                </div>
            </div>
            <div class="col-sm-12">
                <!-- Last news -->
                <div id="dnn_NewsArc1" class="NewsArc1">
                    <div class="newG">
                        <div class="lht0">
                            <span class="lht1">Tin tức tổng hợp</span>
                        </div>
                        <div class="lht3">
                            <?php foreach ($hot_news as $news) { ?>
                            <div class="lhoR">
                                <div class="lhoR1"> 
                                    <a title="<?php echo $news['title']; ?>" href="<?php echo $news['href']; ?>">
                                        <img width="130px" height="105px" alt="<?php echo $news['title']; ?>" src="<?php echo $news['image']; ?>"> 
                                    </a>
                                </div>
                                <div class="lhoR2">
                                    <a href="<?php echo $news['href']; ?>" title="<?php echo $news['title']; ?>"><?php echo $news['title']; ?></a>
                                </div>
                                <div class="lhoR3"><?php echo $news['content']; ?></div>
                            </div>
                            <?php } ?>
                        </div>
                    </div>
                </div>
                <!-- News by Categories -->
                <div id="dnn_NewsArc2" class="NewsArc2">
                    <div class="ListTinT">
                        <div class="titleBoxT">
                            <span>Tin theo chuyên mục</span>
                        </div>
                        <?php foreach ($categories as $category) { ?>
                        <div class="divTitleListT"><span class="iconCNN"></span> <?php echo $category['name']; ?> </div>
                        <div class="divContentListT">
                            <?php $first_news = $category['newses'][0]; ?>
                            <?php array_shift($category['newses']); ?>
                            <div class="ContentListTLeft">
                                <a title="<?php echo $first_news['title']; ?>" href="<?php echo $first_news['href']; ?>">
                                    <img src="<?php echo $first_news['image']; ?>">
                                </a>
                            </div>
                            <div class="ContentListTRight">
                                <a class="titleLT" title="<?php echo $first_news['title']; ?>" href="<?php echo $first_news['href']; ?>"><?php echo $first_news['title']; ?></a>
                                <ul>
                                    <?php foreach ($category['newses'] as $news) { ?>
                                    <li>
                                        <a href="<?php echo $news['href']; ?>" title="<?php echo $news['title']; ?>"><?php echo $news['title']; ?></a>
                                    </li>
                                    <?php } ?>
                                </ul>
                            </div>
                        </div>
                        <div class="clear"></div>
                        <?php } ?>
                    </div>
                </div>
            </div>
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