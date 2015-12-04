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
            <!-- List news -->
            <div class="nsl">
                <div class="newTop">
                    <table>
                    <?php foreach ($cat_news as $news) { ?>
                        <tr>
                            <td>
                                <div class="lhoR">
                                    <div class="lhoR10">
                                        <a title="<?php echo $news['title']; ?>" href="<?php echo $news['href']; ?>">
                                            <img width="260px" height="170px" alt="<?php echo $news['title']; ?>" src="<?php echo $news['image']; ?>">
                                        </a>
                                    </div>
                                    <div class="lhoR20">
                                        <a href="<?php echo $news['href']; ?>" title="<?php echo $news['title']; ?>">
                                            <?php echo $news['title']; ?>
                                        </a>
                                    </div>
                                    <div class="lhoR30">
                                        <?php echo $news['content']; ?>
                                    </div>
                                    <div class="clrHot"></div>
                                </div>
                            </td>
                        </tr>
                    <?php } ?>
                    </table>
                    <div class="row">
                        <div class="col-sm-6 text-left"><?php echo $pagination; ?></div>
                        <div class="col-sm-6 text-right"><?php echo $results; ?></div>
                      </div>
                </div>
            </div>
            <?php echo $content_bottom; ?>
        </div>
        <div class="col-sm-3">
            <div class="column-box">
                <div class="tabs">
                    <ul class="nav nav-tabs">
                        <li class="active"><a href="#tab-new-nofication" data-toggle="tab">Thông báo</a></li>
                        <li class=""><a href="#tab-new-news" data-toggle="tab">Tin tức mới</a></li>
                    </ul>
                    <div class="tab-content">
                        <div class="tab-pane active" id="tab-new-nofication">
                            <ul class="list-unstyled news-list"><li><a title="Hội thao văn nghệ chào Xuân 2015" href="http://thitruongnongnghiep.vn/news/hoi-thao-van-nghe-chao-xuan-2015">Hội thao văn nghệ chào Xuân 2015<span class="iView"><img src="http://thitruongnongnghiep.vn/DesktopModules/News/Module_HotNew//images/new.gif" alt="Tin có ảnh"></span></a></li><li><a title="Thúc đẩy hợp tác phát triển thị trường công nghệ và doanh nghiệp KH&amp;CN" href="http://thitruongnongnghiep.vn/news/thuc-day-hop-tac-phat-trien-thi-truong-cong-nghe-va-doanh-nghiep-khcn">Thúc đẩy hợp tác phát triển thị trường công nghệ và doanh nghiệp KH&amp;CN<span class="iView"><img src="http://thitruongnongnghiep.vn/DesktopModules/News/Module_HotNew//images/new.gif" alt="Tin có ảnh"></span></a></li><li><a title="“Xuân ấm vùng cao” - Chương trình từ thiện Yên Bái 26/01/2014" href="http://thitruongnongnghiep.vn/news/xuan-am-vung-cao-chuong-trinh-tu-thien-yen-bai-26-01-2014">“Xuân ấm vùng cao” - Chương trình từ thiện Yên Bái 26/01/2014<span class="iView"><img src="http://thitruongnongnghiep.vn/DesktopModules/News/Module_HotNew//images/new.gif" alt="Tin có ảnh"></span></a></li><li><a title="THÔNG BÁO NGHỈ TẾT DƯƠNG LỊCH 2015" href="http://thitruongnongnghiep.vn/news/thong-bao-nghi-tet-duong-lich-2015">THÔNG BÁO NGHỈ TẾT DƯƠNG LỊCH 2015<span class="iView"><img src="http://thitruongnongnghiep.vn/DesktopModules/News/Module_HotNew//images/new.gif" alt="Tin có ảnh"></span></a></li><li><a title="Tuyển dụng nhân viên kinh doanh" href="http://thitruongnongnghiep.vn/news/tuyen-dung-nhan-vien-kinh-doanh">Tuyển dụng nhân viên kinh doanh<span class="iView"><img src="http://thitruongnongnghiep.vn/DesktopModules/News/Module_HotNew//images/new.gif" alt="Tin có ảnh"></span></a></li><li><a title="Thitruongnongnghiep.vn “luồng gió mới” tại Agroviet 2014" href="http://thitruongnongnghiep.vn/news/thitruongnongnghiepvn-luong-gio-moi-tai-agroviet-2014">Thitruongnongnghiep.vn “luồng gió mới” tại Agroviet 2014<span class="iView"><img src="http://thitruongnongnghiep.vn/DesktopModules/News/Module_HotNew//images/new.gif" alt="Tin có ảnh"></span></a></li><li><a title="Agricare Việt Nam bắt tay VECOM xây dựng mô hình đào tạo nhân lực TMĐT" href="http://thitruongnongnghiep.vn/news/agricare-viet-nam-bat-tay-vecom-xay-dung-mo-hinh-dao-tao-nhan-luc-tmdt">Agricare Việt Nam bắt tay VECOM xây dựng mô hình đào tạo nhân lực TMĐT</a></li></ul>
                        </div>
                        <div class="tab-pane" id="tab-new-news">
                            <ul class="list-unstyled news-list"><li><a title="Nông dân Khmer khấm khá nhờ ngô giống" href="/news/nong-dan-khmer-kham-kha-nho-ngo-giong">Nông dân Khmer khấm khá nhờ ngô giống</a><span class="iView"></span></li><li><a title="Đồng Nai: Cung cấp cho thị trường 30 triệu con gà giống" href="/news/dong-nai-cung-cap-cho-thi-truong-30-trieu-con-ga-giong">Đồng Nai: Cung cấp cho thị trường 30 triệu con gà giống</a><span class="iView"></span></li><li><a title="Diện tích lúa Italia 2015 dự đoán tăng nhẹ" href="/news/dien-tich-lua-italia-2015-du-doan-tang-nhe">Diện tích lúa Italia 2015 dự đoán tăng nhẹ</a><span class="iView"></span></li><li><a title="Dưa Kim Cô Nương không lo đầu ra." href="/news/dua-kim-co-nuong-khong-lo-dau-ra">Dưa Kim Cô Nương không lo đầu ra.</a><span class="iView"></span></li><li><a title="Tín hiệu vui trên cánh đồng muối" href="/news/tin-hieu-vui-tren-canh-dong-muoi">Tín hiệu vui trên cánh đồng muối</a><span class="iView"></span></li><li><a title="“Sốt” đu đủ cảnh giá gần 10 triệu đồng" href="/news/sot-du-du-canh-gia-gan-10-trieu-dong">“Sốt” đu đủ cảnh giá gần 10 triệu đồng</a><span class="iView"></span></li><li><a title="Đặc sản Tết sớm " cháy="" hàng""="" href="/news/dac-san-tet-som-chay-hang">Đặc sản Tết sớm "cháy hàng"</a><span class="iView"></span></li></ul>
                        </div>
                    </div>
                </div>
            </div>
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
        <?php //echo $column_right; ?>
    </div>
</div>
<?php echo $footer; ?>