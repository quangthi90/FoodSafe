<?php
    function random_color_part() {
        return str_pad( dechex( mt_rand( 0, 255 ) ), 2, '0', STR_PAD_LEFT);
    }

    function random_color() {
        return random_color_part() . random_color_part() . random_color_part();
    }
?>
<?php foreach ($categories as $key => $category) { ?>
<?php $bg_color = random_color(); ?>
<div class="category_homepage">
    <div class="wrapper" id="category_floor_0">
        <div class="category">
            <div style="background-color: #<?php echo $bg_color; ?>; border-bottom: 1px solid #<?php echo $bg_color; ?>;" class="title">
                <span style="background-color: #<?php echo $bg_color; ?>;" class="floor"><?php echo $key + 1; ?>F<b style="border-left-color: #<?php echo $bg_color; ?>;" class="arrow"></b></span>
                <span class="label"><?php echo $category['name']; ?></span>
            </div>
            <div style="background-color: #<?php echo $bg_color; ?>;" class="icon icon_2">
                <a href="<?php echo $category['href']; ?>" title="<?php echo $category['name']; ?>"><i class="<?php echo $category['icon']; ?>"></i><br><?php echo $category['name']; ?></a>
                <div class="sep"></div>
                <a href="<?php echo $category['href']; ?>" title="<?php echo $category['name']; ?>"><i class="<?php echo $category['icon']; ?>"></i><br><?php echo $category['name']; ?></a>
            </div>
            <ul class="list">
            <?php foreach ($category['children'] as $child) { ?>
                <li>
                    <a href="<?php echo $child['href']; ?>" title="<?php echo $child['name']; ?>"><?php echo $child['name']; ?></a>
                </li>
            <?php } ?>
            </ul>
            <div data-ride="carousel" class="carousel slide" id="carousel_1">
                <a data-slide="prev" href="#carousel_1" class="carousel-control left"></a>
                <a data-slide="next" href="#carousel_1" class="carousel-control right"></a>
                <ul class="carousel-inner">
                    <li class="item active left">
                        <a target="_blank" href="/home/apple.spvg">
                            <img data-original="http://media.vatgia.vn/banners/jph1407689910.png" alt="Apple" class="lazy" src="http://media.vatgia.vn/banners/jph1407689910.png" style="display: block;">
                        </a>
                    </li>
                </ul>
            </div>
        </div>
        <a rel="nofollow" target="_blank" href="/home/redirect_banner.php?iData=526&amp;ip=712253882&amp;time=1450607654&amp;security_code=47f93e15acd08a49e7723f9e60623343&amp;nEst=thoitrang_dienthoai" class="main_banner" data-ptsp-kpi-action-name="Trang chủ" data-ptsp-kpi-action-label="Banner tầng">
            <img data-original="http://media.vatgia.vn/banners/avq1450403004.jpg" class="lazy" src="http://media.vatgia.vn/banners/avq1450403004.jpg" style="display: inline;">
        </a>
        <div class="other_banner">
            <a rel="nofollow" target="_blank" href="/home/redirect_banner.php?iData=588&amp;ip=712253882&amp;time=1450607654&amp;security_code=ea02baf1adb431f0884b75c9393e61ea&amp;nEst=nguyenhoamobile" class="big" data-ptsp-kpi-action-name="Trang chủ" data-ptsp-kpi-action-label="Banner tầng">
                <img data-original="http://media.vatgia.vn/banners/qzr1449470748.jpg" class="lazy" src="http://media.vatgia.vn/banners/qzr1449470748.jpg" style="display: inline;">
            </a>
        </div>
    </div>
</div>
<?php } ?>