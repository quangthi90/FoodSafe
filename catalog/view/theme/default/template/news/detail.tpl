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
            <!-- News Detail -->
            <div id="rd1">
                <h1 class="fh1">
                    <?php echo $news['title']; ?>
                </h1>
                <div class="ns1">Thứ ba, ngày 13/10/2015 10:19:00 SA</div>
                <div class="clr bd"></div>
                <h2 class="fh2">
                    <span style="text-align: start; letter-spacing: normal; color: #222222; background-color: #ffffff;"></span>
                    <span style="text-align: start; letter-spacing: normal; color: #222222; background-color: #ffffff;"><?php echo $news['summary']; ?></span>
                </h2>
                <div itemprop="articleBody" class="rd2">
                    <?php echo $news['content']; ?>
                </div>
                <div class="rd3"></div>
            </div>
            <div class="tags">
                <div class="tag0">
                    <div class="tag2"><i class="fa fa-tag"></i> Tags:</div>
                </div>
                <?php foreach ($news['tags'] as $tag) { ?>
                <div class="tag1">
                    <a href="#" class="lTag"><?php echo $tag; ?></a>
                </div>
                <?php } ?>
            </div>
            <div class="tinKhac">
                <div class="tieuDe"><h5 class="fh5">Tin khác</h5></div>
                <table>
                <?php foreach ($related_news as $news) { ?>
                    <tr>
                        <td>
                            <div class="tinTuc">
                                <a title="<?php echo $news['title']; ?>" href="<?php echo $news['href']; ?>">
                                    <?php echo $news['title']; ?>
                                </a>
                                <span class="ngayt"> (22/07/2014 10:43:00 SA)</span></div>
                        </td>
                    </tr>
                <?php } ?>
                </table>
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