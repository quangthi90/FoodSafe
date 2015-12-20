<div id="menu">
    <div class="container_width" id="menu_list">
        <div class="wrapper">
            <h2>Toàn bộ danh mục</h2>
            <ul class="menu_root" id="menu_home_root">
            <?php foreach ($categories as $key => $category) { ?>
                <li data-category="cat-<?php echo $key; ?>">
                    <a href="<?php echo $category['href']; ?>" title="<?php echo $category['name']; ?>"><?php echo $category['name']; ?><b class="arrow_down"></b></a>
                </li>
            <?php } ?>
            </ul>
            <ul id="menu_home_navigate" style="display: none;">
            <?php foreach ($categories as $key => $category) { ?>
                <?php $count = count($category['children']) % 2 == 1 ? (count($category['children']) + 1) / 2 : count($category['children']) / 2; ?>
                <li id="cat-<?php echo $key; ?>" class="navigate" style="display: none;">
                    <?php foreach ($category['children'] as $key1 => $child) { ?>
                    <?php if ($key1 == 0) { ?>
                    <div class="fl">
                    <?php } ?>
                        <div style="background-image: url();" class="root">
                            <a target="_blank" href="<?php echo $child['href']; ?>" title="<?php echo $child['name']; ?>"><?php echo $child['name']; ?></a>
                        </div>
                        <!--div class="sub">
                            <a target="_blank" href="/319/may-anh-so.html" data-ptsp-kpi-action-name="Trang chủ" data-ptsp-kpi-action-label="Danh mục cấp 2 trở lên">Máy ảnh số</a>
                        </div>
                        <div class="more"><a target="_blank" href="/405/may-anh-may-quay.html" data-ptsp-kpi-action-name="Trang chủ" data-ptsp-kpi-action-label="Danh mục cấp 2 trở lên">Xem tất cả danh mục<b class="arrow_right"></b></a></div-->
                    <?php if ($key1 == $count - 1) { ?>
                    </div>
                    <div class="fr">
                    <?php } ?>
                    <?php } ?>
                    </div>
                </li>
            <?php } ?>
            </ul>
            <script type="text/javascript">
            $('#menu_home_root li').hover(function() {
                $(this).parent().find('li').removeClass('hover selected');
                $(this).addClass('hover selected');
                $('#menu_home_navigate').show().find('li').hide();
                $('#' + $(this).data('category')).show();
            });
            $('#menu_list').mouseleave(function() {
                $(this).find('li').removeClass('hover');
                $('#menu_home_navigate').hide().find('li').hide();
            });
            </script>
        </div>
    </div>
    <div class="menu_content effects" id="menu_content_1300" style="display: block;">
        <div style="background: #d0d0d8;">
            <div class="container_width">
                <div class="wrapper">
                    <a target="_blank" href="/home/redirect_banner.php?iData=350&amp;ip=712253882&amp;time=1450326620&amp;security_code=f3796ef36a7abcd74a17c389f814dbe7&amp;nEst=mobilethanhngan" class="banner">
                        <img src="http://media.vatgia.vn/banners/lxd1420428599.png" class="text_banner">
                        <img src="http://media.vatgia.vn/banners/pdw1449030966.jpg" class="main_banner">
                    </a>
                    <div class="small_banner">
                        <a target="_blank" href="/home/redirect_banner.php?iData=618&amp;ip=712253882&amp;time=1450326620&amp;security_code=8fc54826e7150710f3e694bf0e7b8d1b&amp;nEst=phukienthuycuong"><img src="http://media.vatgia.vn/banners/ien1448620490.png" class="translateX"></a><a target="_blank" href="/home/redirect_banner.php?iData=617&amp;ip=712253882&amp;time=1450326620&amp;security_code=b4c31506eeed13bdefa73be27249b22b&amp;nEst=phukienthuycuong"><img src="http://media.vatgia.vn/banners/qor1446436528.png" class="translateX"></a>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>