<?php echo $header; ?>
<div class="container">
    <div class="menu_link" id="menu_link">
        <div class="container_width">
            <a target="_blank" rel="nofollow" href="#" class="hot" title="Miễn phí tạo website chuyên nghiệp">Đặt hàng iPhone 6S chính hãng FPT</a>
            <a rel="nofollow" target="_blank" href="#" class="hot" title="Miễn phí tạo website chuyên nghiệp">Mở gian hàng miễn phí</a>
            <a target="_blank" rel="nofollow" href="#" class="hot" title="Miễn phí tạo website chuyên nghiệp">Giờ vàng mua iphone 6: 99,000đ</a>
        </div>
    </div>
    <div id="menu">
        <div class="container_width" id="menu_list">
            <div class="wrapper">
                <h2>Toàn bộ danh mục</h2>
                    <ul class="menu_root" id="menu_home_root">
                    <?php foreach ($categories_data as $key => $category) { ?>
                        <li data-category="cat-<?php echo $key; ?>">
                            <a href="<?php echo $category['href']; ?>" title="<?php echo $category['name']; ?>"><?php echo $category['name']; ?><b class="arrow_down"></b></a>
                        </li>
                    <?php } ?>
                    </ul>
                    <ul id="menu_home_navigate" style="display: none;">
                    <?php foreach ($categories_data as $key => $category) { ?>
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
                    }, function() {
                        $(this).removeClass('hover');
                        $('#menu_home_navigate').hide().find('li').hide();
                    });
                    </script>
    </div>
    </div>
    <div class="menu_content effects" id="menu_content_1300" style="display: none;"><div style="background: #d0d0d8;">
    <div class="container_width">
    <div class="wrapper">
    <a target="_blank" href="/home/redirect_banner.php?iData=350&amp;ip=712253882&amp;time=1450326620&amp;security_code=f3796ef36a7abcd74a17c389f814dbe7&amp;nEst=mobilethanhngan" class="banner">
    <img src="http://media.vatgia.vn/banners/lxd1420428599.png" class="text_banner">
    <img src="http://media.vatgia.vn/banners/pdw1449030966.jpg" class="main_banner">
    </a>
    <div class="small_banner">
    <a target="_blank" href="/home/redirect_banner.php?iData=618&amp;ip=712253882&amp;time=1450326620&amp;security_code=8fc54826e7150710f3e694bf0e7b8d1b&amp;nEst=phukienthuycuong"><img src="http://media.vatgia.vn/banners/ien1448620490.png" class="translateX"></a><a target="_blank" href="/home/redirect_banner.php?iData=617&amp;ip=712253882&amp;time=1450326620&amp;security_code=b4c31506eeed13bdefa73be27249b22b&amp;nEst=phukienthuycuong"><img src="http://media.vatgia.vn/banners/qor1446436528.png" class="translateX"></a></div>
    </div>
    </div>
    </div>
    </div><div class="menu_content effects" id="menu_content_392" style="display: none;"><div style="background: #fbfbfb;">
    <div class="container_width">
    <div class="wrapper">
    <a target="_blank" href="/home/redirect_banner.php?iData=366&amp;ip=712253882&amp;time=1450326625&amp;security_code=51af98d5446b15249351b2adfd32852c&amp;nEst=vietdeal" class="banner">
    <img src="http://media.vatgia.vn/banners/lxd1420428599.png" class="text_banner">
    <img src="http://media.vatgia.vn/banners/gxa1447651969.jpg" class="main_banner">
    </a>
    <div class="small_banner">
    <a target="_blank" href="/home/redirect_banner.php?iData=620&amp;ip=712253882&amp;time=1450326625&amp;security_code=a781bfd7c2e14be97e50039a3693c821&amp;nEst=nhatminhtech"><img src="http://media.vatgia.vn/banners/hio1448620534.png" class="translateX"></a><a target="_blank" href="/home/redirect_banner.php?iData=619&amp;ip=712253882&amp;time=1450326625&amp;security_code=1709a7127867aa72d5f26d506bad29b3&amp;nEst=nhatminhtech"><img src="http://media.vatgia.vn/banners/cgv1446436663.png" class="translateX"></a></div>
    </div>
    </div>
    </div>
    </div><div class="menu_content effects" id="menu_content_331" style="display: none;"><div style="background: #9e9488;">
    <div class="container_width">
    <div class="wrapper">
    <a target="_blank" href="/home/redirect_banner.php?iData=723&amp;ip=712253882&amp;time=1450326626&amp;security_code=6680beab1c66f4654fe892754d250732&amp;nEst=sieunet" class="banner">
    <img src="http://media.vatgia.vn/banners/lxd1420428599.png" class="text_banner">
    <img src="http://media.vatgia.vn/banners/udf1450251026.jpg" class="main_banner">
    </a>
    <div class="small_banner">
    <a target="_blank" href="/home/redirect_banner.php?iData=555&amp;ip=712253882&amp;time=1450326626&amp;security_code=e788f91673284cfcc08aedc2fa215914&amp;nEst=muachungtb"><img src="http://media.vatgia.vn/banners/epq1448936663.jpg" class="translateX"></a><a target="_blank" href="/home/redirect_banner.php?iData=554&amp;ip=712253882&amp;time=1450326626&amp;security_code=010b51d6270be6306abbbff5263c8300&amp;nEst=muachungtb"><img src="http://media.vatgia.vn/banners/tue1446451245.png" class="translateX"></a></div>
    </div>
    </div>
    </div>
    </div><div class="menu_content effects" id="menu_content_405" style="display: none;"><div style="background: #FAEC07;">
    <div class="container_width">
    <div class="wrapper">
    <a target="_blank" href="/home/redirect_banner.php?iData=28&amp;ip=712253882&amp;time=1450326694&amp;security_code=0ba95e9de111c3abca272ff1c6ebc8b4&amp;nEst=khanhlongcamera" class="banner">
    <img src="http://media.vatgia.vn/banners/lxd1420428599.png" class="text_banner">
    <img src="http://media.vatgia.vn/banners/sct1435733328.jpg" class="main_banner">
    </a>
    <div class="small_banner">
    <a target="_blank" href="/home/redirect_banner.php?iData=561&amp;ip=712253882&amp;time=1450326694&amp;security_code=58372a5427fe4cda988f96dd0f7e0048"><img src="http://media.vatgia.vn/banners/xgw1448620621.png" class="translateX"></a><a target="_blank" href="/home/redirect_banner.php?iData=560&amp;ip=712253882&amp;time=1450326694&amp;security_code=56d943632a43d571d5f297170ca6f487&amp;nEst=thegioitinhoc"><img src="http://media.vatgia.vn/banners/gfw1446436929.png" class="translateX"></a></div>
    </div>
    </div>
    </div>
    </div><div class="menu_content effects" id="menu_content_3544" style="display: none;"><div style="background: #100732;">
    <div class="container_width">
    <div class="wrapper">
    <a target="_blank" href="/home/redirect_banner.php?iData=35&amp;ip=712253882&amp;time=1450326700&amp;security_code=50a4b3b4bb06852acf54ec8d808f09a5&amp;nEst=bigahn" class="banner">
    <img src="http://media.vatgia.vn/banners/lxd1420428599.png" class="text_banner">
    <img src="http://media.vatgia.vn/banners/mjy1446794631.png" class="main_banner">
    </a>
    <div class="small_banner">
    <a target="_blank" href="/home/redirect_banner.php?iData=40&amp;ip=712253882&amp;time=1450326700&amp;security_code=1c99df567ab78a866baba3c40753620c&amp;nEst=xedapnimbus"><img src="http://media.vatgia.vn/banners/gfe1448620645.png" class="translateX"></a><a target="_blank" href="/home/redirect_banner.php?iData=39&amp;ip=712253882&amp;time=1450326700&amp;security_code=dfd9a53f310ceee0f0625a25d21bdd91&amp;nEst=sieuthimaivang"><img src="http://media.vatgia.vn/banners/uwk1446437038.png" class="translateX"></a></div>
    </div>
    </div>
    </div>
    </div><div class="menu_content effects" id="menu_content_640" style="display: none;"><div style="background: #C8A88F;">
    <div class="container_width">
    <div class="wrapper">
    <a target="_blank" href="/home/redirect_banner.php?iData=452&amp;ip=712253882&amp;time=1450326705&amp;security_code=5ae9640de2906cc7d9d6b46a3cf2a65b" class="banner">
    <img src="http://media.vatgia.vn/banners/lxd1420428599.png" class="text_banner">
    <img src="http://media.vatgia.vn/banners/vas1450173416.jpg" class="main_banner">
    </a>
    <div class="small_banner">
    <a target="_blank" href="/home/redirect_banner.php?iData=624&amp;ip=712253882&amp;time=1450326705&amp;security_code=c054d9870ddee625c9181ba6608c9f92&amp;nEst=VIETDEAL"><img src="http://media.vatgia.vn/banners/qho1448620682.png" class="translateX"></a><a target="_blank" href="/home/redirect_banner.php?iData=623&amp;ip=712253882&amp;time=1450326705&amp;security_code=724ffe3ca518807fb67424ee947f88a0&amp;nEst=TuiDepShop"><img src="http://media.vatgia.vn/banners/fck1446722861.png" class="translateX"></a></div>
    </div>
    </div>
    </div>
    </div><div class="menu_content effects" id="menu_content_586" style="display: none;"><div style="background: #229af0;">
    <div class="container_width">
    <div class="wrapper">
    <a target="_blank" href="/home/redirect_banner.php?iData=292&amp;ip=712253882&amp;time=1450326710&amp;security_code=1c018f1cb1fb249861ec30178688a21b&amp;nEst=bqvietnam" class="banner">
    <img src="http://media.vatgia.vn/banners/lxd1420428599.png" class="text_banner">
    <img src="http://media.vatgia.vn/banners/azc1449112364.jpg" class="main_banner">
    </a>
    <div class="small_banner">
    <a target="_blank" href="/home/redirect_banner.php?iData=628&amp;ip=712253882&amp;time=1450326710&amp;security_code=a9aebe8fdb8915f8c14151a5ba06b42e&amp;nEst=muachungtb"><img src="http://media.vatgia.vn/banners/pbc1448620710.png" class="translateX"></a><a target="_blank" href="/home/redirect_banner.php?iData=627&amp;ip=712253882&amp;time=1450326710&amp;security_code=99d0028b7e1ed081e05f9c2e438f9462&amp;nEst=muachungtb"><img src="http://media.vatgia.vn/banners/qxg1446437630.png" class="translateX"></a></div>
    </div>
    </div>
    </div>
    </div><div class="menu_content effects" id="menu_content_2434" style="display: none;"><div style="background: #597cfe;">
    <div class="container_width">
    <div class="wrapper">
    <a target="_blank" href="/home/redirect_banner.php?iData=482&amp;ip=712253882&amp;time=1450326715&amp;security_code=28ad51d176b981b28a3a69e13230528e" class="banner">
    <img src="http://media.vatgia.vn/banners/lxd1420428599.png" class="text_banner">
    <img src="http://media.vatgia.vn/banners/lfq1449563459.png" class="main_banner">
    </a>
    <div class="small_banner">
    <a target="_blank" href="/home/redirect_banner.php?iData=552&amp;ip=712253882&amp;time=1450326715&amp;security_code=bc1734d11aa11c803070983b1cc07bd6&amp;nEst=VIETDEAL"><img src="http://media.vatgia.vn/banners/atj1448620737.png" class="translateX"></a><a target="_blank" href="/home/redirect_banner.php?iData=547&amp;ip=712253882&amp;time=1450326715&amp;security_code=dc861665966635e8991287eec9879091&amp;nEst=fashion19shop"><img src="http://media.vatgia.vn/banners/skz1446437726.png" class="translateX"></a></div>
    </div>
    </div>
    </div>
    </div><div class="menu_content effects" id="menu_content_912" style="display: none;"><div style="background: #ff490a;">
    <div class="container_width">
    <div class="wrapper">
    <a target="_blank" href="/home/redirect_banner.php?iData=57&amp;ip=712253882&amp;time=1450326721&amp;security_code=1b69fba37baa083de58810bf596ac8d6" class="banner">
    <img src="http://media.vatgia.vn/banners/lxd1420428599.png" class="text_banner">
    <img src="http://media.vatgia.vn/banners/tot1449566572.png" class="main_banner">
    </a>
    <div class="small_banner">
    <a target="_blank" href="/home/redirect_banner.php?iData=626&amp;ip=712253882&amp;time=1450326721&amp;security_code=e18326ee38e556bf4a42011f64d453dc&amp;nEst=VIETDEAL"><img src="http://media.vatgia.vn/banners/ggb1448620767.png" class="translateX"></a><a target="_blank" href="/home/redirect_banner.php?iData=625&amp;ip=712253882&amp;time=1450326721&amp;security_code=ad23b2eef6dcb47b511cf070652df7ce&amp;nEst=muachungtb"><img src="http://media.vatgia.vn/banners/kxm1446437803.png" class="translateX"></a></div>
    </div>
    </div>
    </div>
    </div><div class="menu_content effects" id="menu_content_779" style="display: none;"><div style="background: #a9080e;">
    <div class="container_width">
    <div class="wrapper">
    <a target="_blank" href="/home/redirect_banner.php?iData=19&amp;ip=712253882&amp;time=1450326726&amp;security_code=3e83b4f26f08e5810254469089b82600&amp;nEst=muachungtb" class="banner">
    <img src="http://media.vatgia.vn/banners/lxd1420428599.png" class="text_banner">
    <img src="http://media.vatgia.vn/banners/qzf1450255249.png" class="main_banner">
    </a>
    <div class="small_banner">
    <a target="_blank" href="/home/redirect_banner.php?iData=508&amp;ip=712253882&amp;time=1450326726&amp;security_code=7daa1ca33d75e1b7ffe57349851bfa6a&amp;nEst=VIETDEAL"><img src="http://media.vatgia.vn/banners/edj1448620795.png" class="translateX"></a><a target="_blank" href="/home/redirect_banner.php?iData=507&amp;ip=712253882&amp;time=1450326726&amp;security_code=c2e2778720375e8488d5d368ede3409c&amp;nEst=bqvietnam"><img src="http://media.vatgia.vn/banners/vbi1446547209.png" class="translateX"></a></div>
    </div>
    </div>
    </div>
    </div><div class="menu_content effects" id="menu_content_923" style="display: none;"><div style="background: #ea5d71;">
    <div class="container_width">
    <div class="wrapper">
    <a target="_blank" href="/home/redirect_banner.php?iData=249&amp;ip=712253882&amp;time=1450326731&amp;security_code=4c2a7dc3d01e332342455daac1edf356" class="banner">
    <img src="http://media.vatgia.vn/banners/lxd1420428599.png" class="text_banner">
    <img src="http://media.vatgia.vn/banners/qlz1447924813.jpg" class="main_banner">
    </a>
    <div class="small_banner">
    <a target="_blank" href="/home/redirect_banner.php?iData=320&amp;ip=712253882&amp;time=1450326731&amp;security_code=b9ba82b2caf3b094d4a4c23cc4d1b19e"><img src="http://media.vatgia.vn/banners/rhj1448620824.png" class="translateX"></a><a target="_blank" href="/home/redirect_banner.php?iData=319&amp;ip=712253882&amp;time=1450326731&amp;security_code=58df1254243c2b362642db9a8865d2e4&amp;nEst=muachungtb"><img src="http://media.vatgia.vn/banners/wsh1447995230.jpg" class="translateX"></a></div>
    </div>
    </div>
    </div>
    </div><div class="menu_content effects" id="menu_content_927" style="display: none;"><div style="background: #fcd300;">
    <div class="container_width">
    <div class="wrapper">
    <a target="_blank" href="/home/redirect_banner.php?iData=499&amp;ip=712253882&amp;time=1450326736&amp;security_code=c659c8412bbd77ff5f1736d96f62480a" class="banner">
    <img src="http://media.vatgia.vn/banners/nfp1420249341.png" class="text_banner">
    <img src="http://media.vatgia.vn/banners/fcd1448939905.jpg" class="main_banner">
    </a>
    <div class="small_banner">
    <a target="_blank" href="/home/redirect_banner.php?iData=506&amp;ip=712253882&amp;time=1450326736&amp;security_code=c075842a209f2bc1098d9931fd556160&amp;nEst=muachungtb"><img src="http://media.vatgia.vn/banners/jfo1448620849.png" class="translateX"></a><a target="_blank" href="/home/redirect_banner.php?iData=505&amp;ip=712253882&amp;time=1450326736&amp;security_code=4ddfab173bd3d8ce57e231955077c77d&amp;nEst=muachungtb"><img src="http://media.vatgia.vn/banners/pmz1446438232.png" class="translateX"></a></div>
    </div>
    </div>
    </div>
    </div><div class="menu_content effects" id="menu_content_768" style="display: none;"><div style="background: #fba105;">
    <div class="container_width">
    <div class="wrapper">
    <a target="_blank" href="/home/redirect_banner.php?iData=44&amp;ip=712253882&amp;time=1450326741&amp;security_code=2dbc0d85eb8a027044393c7f6348908c&amp;nEst=bqvietnam" class="banner">
    <img src="http://media.vatgia.vn/banners/lxd1420428599.png" class="text_banner">
    <img src="http://media.vatgia.vn/banners/qcj1446111531.png" class="main_banner">
    </a>
    <div class="small_banner">
    <a target="_blank" href="/home/redirect_banner.php?iData=559&amp;ip=712253882&amp;time=1450326741&amp;security_code=e6c274bd745e9970e59573a7b86909a7&amp;nEst=cuahangthanhloi"><img src="http://media.vatgia.vn/banners/ydu1448620880.png" class="translateX"></a><a target="_blank" href="/home/redirect_banner.php?iData=558&amp;ip=712253882&amp;time=1450326741&amp;security_code=e91fd5786aecf2a532d34e1a6850553f&amp;nEst=truonghoangyen90"><img src="http://media.vatgia.vn/banners/juo1446438508.png" class="translateX"></a></div>
    </div>
    </div>
    </div>
    </div><div class="menu_content effects" id="menu_content_561" style="display: none;"><div style="background: #5f4d29;">
    <div class="container_width">
    <div class="wrapper">
    <a target="_blank" href="/home/redirect_banner.php?iData=53&amp;ip=712253882&amp;time=1450326746&amp;security_code=548583a2ed489bf58fa2831324781f14&amp;nEst=hopchieuphimthanky" class="banner">
    <img src="http://media.vatgia.vn/banners/lxd1420428599.png" class="text_banner">
    <img src="http://media.vatgia.vn/banners/ozp1449827438.png" class="main_banner">
    </a>
    <div class="small_banner">
    <a target="_blank" href="/home/redirect_banner.php?iData=559&amp;ip=712253882&amp;time=1450326746&amp;security_code=65272b221e53358278e0d628515fea60&amp;nEst=cuahangthanhloi"><img src="http://media.vatgia.vn/banners/ydu1448620880.png" class="translateX"></a><a target="_blank" href="/home/redirect_banner.php?iData=317&amp;ip=712253882&amp;time=1450326746&amp;security_code=34335ee667c0df283b1d8269115071c7&amp;nEst=mphukiencongnghe"><img src="http://media.vatgia.vn/banners/owl1446438673.png" class="translateX"></a></div>
    </div>
    </div>
    </div>
    </div><div class="menu_content effects" id="menu_content_913" style="display: none;"><div style="background: #8E5331;">
    <div class="container_width">
    <div class="wrapper">
    <a target="_blank" href="/home/redirect_banner.php?iData=322&amp;ip=712253882&amp;time=1450326751&amp;security_code=1c9e2cd0eb0580028a44a582ee6df0a0" class="banner">
    <img src="http://media.vatgia.vn/banners/lxd1420428599.png" class="text_banner">
    <img src="http://media.vatgia.vn/banners/xxq1425983732.jpg" class="main_banner">
    </a>
    <div class="small_banner">
    <a target="_blank" href="/home/redirect_banner.php?iData=543&amp;ip=712253882&amp;time=1450326751&amp;security_code=5478537e5e7b50bcb50f097d141d0792&amp;nEst=suabimvn"><img src="http://media.vatgia.vn/banners/hnv1448620935.png" class="translateX"></a><a target="_blank" href="/home/redirect_banner.php?iData=542&amp;ip=712253882&amp;time=1450326751&amp;security_code=d907bf845a2fe3e124d039dcd2d823c8"><img src="http://media.vatgia.vn/banners/ybl1446438743.png" class="translateX"></a></div>
    </div>
    </div>
    </div>
    </div><div class="menu_content effects" id="menu_content_6623" style="display: block;"><div style="background: #121328;">
    <div class="container_width">
    <div class="wrapper">
    <a target="_blank" href="/home/redirect_banner.php?iData=4&amp;ip=712253882&amp;time=1450326756&amp;security_code=1ea39375e29c875bdfa1a71b671b1a75" class="banner">
    <img src="http://media.vatgia.vn/banners/jzo1415933056.png" class="text_banner">
    <img src="http://media.vatgia.vn/banners/scx1415933117.jpg" class="main_banner">
    </a>
    <div class="small_banner">
    <a target="_blank" href="/home/redirect_banner.php?iData=316&amp;ip=712253882&amp;time=1450326756&amp;security_code=88b7f75deeef5038f035e873b64b6f6b"><img src="http://media.vatgia.vn/banners/nwi1448620968.png" class="translateX"></a><a target="_blank" href="/home/redirect_banner.php?iData=315&amp;ip=712253882&amp;time=1450326756&amp;security_code=b7bce94a24163c2aaf8841bfdb80775d"><img src="http://media.vatgia.vn/banners/vsx1446438888.png" class="translateX"></a></div>
    </div>
    </div>
    </div>
    </div><style>
    /* Event menu */
    #menu_event_promotions{
    background: rgba(255, 255, 255, .8);
    background: #F2F2F2\9;
    box-shadow: inset -1px -1px 2px 0 rgba(0,0,0,0.4), inset 2px 0 4px -2px rgba(0,0,0,0.4);
    min-height: 480px;
    left: 0;
    position: absolute;
    top: 0;
    width: 152px;
    z-index: 1;
    }
    #menu_event_promotions ul{
    padding: 0 9px;
    }
    #menu_event_promotions ul li{
    border-bottom: dotted 1px #D7D5D2;
    padding: 9px 0;
    z-index: 3;
    }
    #menu_event_promotions ul li.new{
    background: url(http://static.vatgia.com/20151110/cache/css/v4/new.gif) no-repeat right top;
    }
    #menu_event_promotions ul li a{
    display: block;
    font-size: 12px;
    max-height: 28px;
    overflow: hidden;
    position: relative;
    }
    #menu_event_promotions ul li:last-child a{
    border-bottom: none;
    }

    /* Event carousel */
    #carousel_event_promotions .carousel-indicators{
    bottom: 10px;
    font-size: 12px;
    left: 50%;
    transform: translateX(-50%);
    *margin-left: -200px;
    text-align: center;
    }
    #carousel_event_promotions .carousel-indicators li{
    background-color: #000;
    border-radius: 12px;
    box-shadow: none;
    color: #FFF;
    height: 12px;
    padding: 5px;
    text-indent: 0;
    width: 12px;
    }
    #carousel_event_promotions .carousel-indicators li.active{
    background-color: #C40000;
    }
    #carousel_event_promotions .carousel-inner .effects .main_banner{
    opacity: 1;
    }
    /*
    #carousel_event_promotions .carousel-inner .effects .main_banner{
    -webkit-transform: scale(1,1);
    -webkit-transition: 0 4s linear;
    transform: scale(1,1);
    transition: transform 4s linear;
    }
    */
    </style>
    <div style="display: none; background-color: rgb(226, 221, 215);" class="menu_content ab-dark" id="menu_content_event" data-ab-yaq="58.171">
    <div class="container_width">
    <div class="wrapper">
    <div class="hidden" id="menu_event_promotions"></div>
    <div class="carousel carousel-fade slide" id="carousel_event_promotions">
    <ol class="carousel-indicators">
    <li data-slide-to="0" data-target="#carousel_event_promotions" class="">1</li><li data-slide-to="1" data-target="#carousel_event_promotions" class="">2</li><li data-slide-to="2" data-target="#carousel_event_promotions" class="">3</li><li data-slide-to="3" data-target="#carousel_event_promotions" class="">4</li><li data-slide-to="4" data-target="#carousel_event_promotions" class="">5</li><li data-slide-to="5" data-target="#carousel_event_promotions" class="active">6</li>
    </ol>
    <div class="carousel-inner">
    <div class="item ab-dark" style="background-color: rgb(1, 58, 209);" data-ab-yaq="58.171"><a rel="nofollow" target="_blank" href="/home/redirect.php?url=L2Uvc2FuLXBoYW0taG90LWdpYS1zaG9jay1raG9uZy1kYXUtcmUtYmFuZy5odG1sP3Zncz10aF9ub2lib19naHBuc19Ib21ldHVuZ2J1bmdtdWFzYW04MTB4NDgwX2doY3Bh" data-ptsp-kpi-action-name="Trang chủ" data-ptsp-kpi-action-label="Banner TOP - seasons"><img data-ab-parent=".item,#menu_content_event" data-adaptive-background="1" src="/event_pictures/anp1450250332.jpg" alt="SẢN PHẨM HOT GIÁ SHOCK - KHÔNG ĐÂU RẺ BẰNG" class="main_banner" data-ab-color="rgb(1,58,209)"></a></div><div class="item ab-light" style="background-color: rgb(249, 199, 112);" data-ab-yaq="204.032"><a rel="nofollow" target="_blank" href="/home/redirect.php?url=L2UvZG8tdHJhbmctdHJpLWRlcC1uZW4tbXVhLW8tZGF1Lmh0bWw/dmdzPXRjX25vaWJvX2doYnRfZHBodW9uZ19kb3RyYW5ndHJp" data-ptsp-kpi-action-name="Trang chủ" data-ptsp-kpi-action-label="Banner TOP - seasons"><img data-ab-parent=".item" data-adaptive-background="1" src="/event_pictures/pdp1450229978.jpg" alt="Đồ trang trí đẹp nên mua ở đâu" class="main_banner" data-ab-color="rgb(249,199,112)"></a></div><div class="item ab-dark" style="background-color: rgb(21, 93, 213);" data-ab-yaq="85.152"><a rel="nofollow" target="_blank" href="/home/redirect.php?url=aHR0cDovL3d3dy52YXRnaWEuY29tL2UvZnB0LWhhbmctY2hpbmgtaGFuZy85ODguaHRtbD92Z3M9dGNfcHJlbWl1bXN0b3JlX3RodXloYW5nX2ZwdGNoaW5oaGFuZw==" data-ptsp-kpi-action-name="Trang chủ" data-ptsp-kpi-action-label="Banner TOP - seasons"><img data-ab-parent=".item" data-adaptive-background="1" src="/event_pictures/umk1450257535.png" alt="FPT-Hàng chính hãng" class="main_banner" data-ab-color="rgb(21,93,213)"></a></div><div class="item ab-light" style="background-color: rgb(242, 240, 243);" data-ab-yaq="240.94"><a rel="nofollow" target="_blank" href="/home/redirect.php?url=aHR0cDovL3d3dy52YXRnaWEuY29tL2UvbWVycnkteG1hcy1naWFuZy1zaW5oLXRoYXQtdnVpLzk4Ny5odG1sP3Zncz10Y19ub2lib19naHBuc190aHV5aGFuZ19tZXJyeXhtYXM=" data-ptsp-kpi-action-name="Trang chủ" data-ptsp-kpi-action-label="Banner TOP - seasons"><img data-ab-parent=".item" data-adaptive-background="1" src="/event_pictures/umh1449806849.png" alt="Merry X'Mas - Giáng sinh thật vui!" class="main_banner" data-ab-color="rgb(242,240,243)"></a></div><div class="item ab-dark" style="background-color: rgb(255, 66, 0);" data-ab-yaq="114.987"><a rel="nofollow" target="_blank" href="/home/redirect.php?url=aHR0cDovL3d3dy52YXRnaWEuY29tL2UvaG90LXdlZWtlbmQvOTc5Lmh0bWw/dmdzPXRjX25vaWJvX2docG5zX3RodXloYW5nX211YWdpdHVhbm5heQ==" data-ptsp-kpi-action-name="Trang chủ" data-ptsp-kpi-action-label="Banner TOP - seasons"><img data-ab-parent=".item" data-adaptive-background="1" src="/event_pictures/koc1449463955.png" alt="MUA GÌ TUẦN NÀY" class="main_banner" data-ab-color="rgb(255,66,0)"></a></div><div class="item ab-light effects active" style="background-color: rgb(226, 221, 215);" data-ab-yaq="221.811"><a rel="nofollow" target="_blank" href="/home/redirect.php?url=L2UvY2hhbi1nYS1nb2ktZGVtLWNoby1naWFjLW5ndS10cm9uLXZlbi5odG1sP3Zncz10aF9ub2lib19naHBuc19Ib21ldHVuZ2J1bmdtdWFzYW04MTA0ODBfbWFudG9zaG9w" data-ptsp-kpi-action-name="Trang chủ" data-ptsp-kpi-action-label="Banner TOP - seasons"><img data-ab-parent=".item" data-adaptive-background="1" src="/event_pictures/ged1448350132.jpg" alt="Chăn ga gối đệm - Cho giấc ngủ trọn vẹn" class="main_banner" data-ab-color="rgb(226,221,215)"></a></div></div>
    </div>
    <div class="small_banner"><div class="translateX" id="vatgia_new_home_190x480"><div id="myadBan_18105" style="width:190px;height:480px;background: none;position: relative;font-size: 0;text-align: center;overflow:hidden;" class="first " onmouseout="" onmouseover=""><a href="http://ad.vatgia.com/a/b_click.php?data=eyJiYW5faWQiOiIxODEwNSIsInBvc19pZCI6IjE0NiIsIndlYl9pZCI6MywiYmFuX2xpbmsiOiJodHRwOlwvXC92YXRnaWEuY29tXC8iLCJjYXRfaWQiOjB9" target="_blank" style="" title=""><img src="http://media.myad.vn/photo/users_b_upload/2015/12/qim1449656003.jpg" style="width : auto;"></a></div></div></div>
    </div>
    </div>
    </div>
    <script src="http://static.vatgia.com/20151110/cache/js/jquery.adaptive.backgrounds.js?v=20151110" type="text/javascript"></script>
    <script type="text/javascript">
    // Lay color theo anh lam background
    $.adaptiveBackground.run({coordinate: {x: 1, y: 1}});

    $(function(){
    if(menuEventConfig.menuDomEle.find('.new').length) menuHLinkConfig.eventDomEle.addClass('new')

    var time_change_slide = 5000;

    // Neu di chuyen vao khu vuc event menu thi event carousel chay theo vong tron
    elem_on = '.a_event_promotions, #menu_event_promotions';
    $(document)
    .on('mouseenter', elem_on, function(){
    menuEventConfig.menuDomEle.show();
    menuHLinkConfig.eventDomEle.addClass('active');
    menuHomeConfig.eventCtDomEle.show(); // Hien slide event
    slideEventConfig.index_change = -1;
    slideEventConfig.slideDomEle.carousel('cycle');
    menuHomeConfig.rootListDomEle.removeClass("hover selected");
    menuHomeConfig.autoInterval &amp;&amp; clearInterval(menuHomeConfig.autoInterval); // Dung slide menu root
    })
    .on('mouseleave', elem_on, function(e){
    if(!$(e.relatedTarget).is('.a_event_promotions') &amp;&amp; !$(e.relatedTarget).parents().is('#menu_event_promotions')) menuHLinkConfig.eventDomEle.removeClass('active');
    menuEventConfig.menuDomEle.hide();
    // Slide phai chay den index nay truoc khi chuyen sang slide menu root
    slideEventConfig.index_change = parseInt(slideEventConfig.pageDomEle.find('.active').attr('data-slide-to'));
    })

    // Them hieu ung vao slide dau tien
    slideEventConfig.itemDomEle.eq(0).addClass('effects');

    // Cau hinh cho carousel - co cai nay phai bo data-ride trong html
    slideEventConfig.slideDomEle.carousel({ interval: time_change_slide, pause: 'hover', wrap: true });

    // Khi hover chuot vao phan trang carousel
    slideEventConfig.pageListDomEle.hoverIntent(
    function (e) {
       var slideIndex = parseInt($(this).attr('data-slide-to')) || 0;
       slideEventConfig.slideDomEle.carousel(slideIndex);
       slideEventConfig.slideDomEle.carousel('pause');
       slideEventConfig.index_change = -1; // Khong tu chay slide menu root
    }
    )

    // Slide xong
    $(document).on('slide.bs.carousel', '#carousel_event_promotions', function (e) {

    // Item hien tai
    var item_index = $(e.relatedTarget).index();

    // Thay doi background noi dung
    var background = slideEventConfig.itemDomEle.eq(item_index).css('background-color');
    menuHomeConfig.eventCtDomEle.css('background-color', background);

    // Them hieu ung cho item carousel
    setTimeout(function(){
    slideEventConfig.itemDomEle.removeClass('effects')
    slideEventConfig.itemDomEle.eq(item_index).addClass('effects')
    }, 100); // Dung event carousel

    // Kiem tra khi den index nao thi chuyen sang slide menu
    var item_index_change = slideEventConfig.index_change ? slideEventConfig.index_change : slideEventConfig.pageListDomEle.length - 1;

    // Chuyen sang slide menu
    if(item_index == item_index_change){
    slideEventConfig.index_change = null;
    slideEventConfig.slideDomEle.carousel('pause'); // Dung event carousel
    setTimeout(function(){
    autoChangeMenu(); // Load slide menu root
    menuHomeConfig.autoInterval &amp;&amp; clearInterval(menuHomeConfig.autoInterval); // Dung slide menu root
    menuHomeConfig.autoInterval = setInterval(autoChangeMenu, time_change_slide); // Tu dong chay slide menu root
    }, time_change_slide);
    }
    })

    })
    </script>
    </div>
</div>
<?php echo $footer; ?>