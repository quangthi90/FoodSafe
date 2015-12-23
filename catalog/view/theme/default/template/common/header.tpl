<!DOCTYPE html>
<!--[if IE]><![endif]-->
<!--[if IE 8 ]><html dir="<?php echo $direction; ?>" lang="<?php echo $lang; ?>" class="ie8"><![endif]-->
<!--[if IE 9 ]><html dir="<?php echo $direction; ?>" lang="<?php echo $lang; ?>" class="ie9"><![endif]-->
<!--[if (gt IE 9)|!(IE)]><!-->
<html dir="<?php echo $direction; ?>" lang="<?php echo $lang; ?>">
<!--<![endif]-->
<head>
<meta charset="UTF-8" />
<meta name="viewport" content="width=device-width, initial-scale=1">
<title><?php echo $title; ?></title>
<base href="<?php echo $base; ?>" />
<?php if ($description) { ?>
<meta name="description" content="<?php echo $description; ?>" />
<?php } ?>
<?php if ($keywords) { ?>
<meta name="keywords" content= "<?php echo $keywords; ?>" />
<?php } ?>
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<?php if ($icon) { ?>
<link href="<?php echo $icon; ?>" rel="icon" />
<?php } ?>
<?php foreach ($links as $link) { ?>
<link href="<?php echo $link['href']; ?>" rel="<?php echo $link['rel']; ?>" />
<?php } ?>
<script src="catalog/view/javascript/jquery/jquery-2.1.1.min.js" type="text/javascript"></script>
<!--link href="catalog/view/javascript/bootstrap/css/bootstrap.min.css" rel="stylesheet" media="screen" /-->
<script src="catalog/view/javascript/bootstrap/js/bootstrap.min.js" type="text/javascript"></script>
<link href="catalog/view/javascript/font-awesome/css/font-awesome.min.css" rel="stylesheet" type="text/css" />
<!--link href="catalog/view/theme/default/stylesheet/stylesheet_green.css" rel="stylesheet">
<link href="catalog/view/javascript/jquery/owl-carousel/owl.carousel.css" rel="stylesheet"-->
<?php foreach ($styles as $style) { ?>
<link href="<?php echo $style['href']; ?>" type="text/css" rel="<?php echo $style['rel']; ?>" media="<?php echo $style['media']; ?>" />
<?php } ?>
<script src="catalog/view/javascript/common.js" type="text/javascript"></script>
<script src="catalog/view/javascript/jquery/owl-carousel/owl.carousel.js" type="text/javascript"></script>
<?php foreach ($scripts as $script) { ?>
<script src="<?php echo $script; ?>" type="text/javascript"></script>
<?php } ?>
<?php echo $google_analytics; ?>
</head>
<body class="<?php echo $class; ?>" style="margin: 0;">
<header>
  <div class="arfix">
    <div class="menuarc">
      <div class="titleMm unnoneTk">Thành viên liên kết cấp quốc gia liên minh hợp tác xã Việt Nam</div>
      <div class="PanenRight">
        <div id="wrapper">
          <ul>
            <li>
              <span class="cut_menu"></span>
              <a href="<?php echo $login; ?>" title="Đăng nhập" rel="nofollow" class="cuta">Đăng nhập</a>
            </li>
            <li class="">
              <span class="cut_menu"></span>
              <a href="<?php echo $register; ?>" title="Đăng ký" rel="nofollow" class="cuta">Đăng ký</a>
            </li>
          </ul>
        </div>
      </div>
      <div class="PanenLeft">
        <div id="navigation-wrapper">
          <ul>
            <!--li>
              <span class="cut_menu"></span>
              <a title="Gian hàng">Gian hàng</a>
            </li-->
            <li>
              <span class="cut_menu"></span>
              <a title="Tin tức" href="<?php echo $news; ?>">Tin tức</a>
            </li>
            <li>
              <span class="cut_menu"></span>
              <a title="Liên hệ" href="<?php echo $contact; ?>">Liên hệ</a>
            </li>
          </ul>
        </div>
      </div>
    </div>
    <div class="clrs"></div>
  </div>
  <div class="clr"></div>
  <div class="arcontents">
    <div>
      <div class="arc0">
        <div class="Msrs">
          <div class="Menu0">
            <div class="ViewMenu0">
              <?php if ($logo) { ?>
              <a href="<?php echo $home; ?>"><img src="<?php echo $logo; ?>" title="<?php echo $name; ?>" alt="<?php echo $name; ?>" class="img-responsive img-logo" /></a>
              <?php } else { ?>
              <h1><a href="<?php echo $home; ?>"><?php echo $name; ?></a></h1>
              <?php } ?>
            </div>
          </div>
        </div>
      </div>
      <div class="arc1">
        <div class="FindTop">
          <div class="SearchContainer">
            <div class="SearchBorder">
              <div class="ccm1 searchDown">
                <div style="display: none;">
                  <input type="text" value="Sản phẩm" class="MenuSearch" id="dnn_dnnSEARCH_MenuSearch" name="dnn$dnnSEARCH$MenuSearch">
                </div>
                <span class="MenuSearch valueSearch" onclick="$('#search-options').slideToggle();" id="search-options-label">Sản phẩm</span>
                <span class="searchDownicon"></span>
                <ul class="searulvalue" id="search-options">
                  <li>Sản phẩm</li>
                  <li>Tin tức</li>
                  <li>Rao vặt</li>
                  <li>Gian hàng</li>
                </ul>
                <script type="text/javascript">
                  $('#search-options').on('click', 'li', function() {
                    $('#search-options-label').html($(this).html());
                    $('#search-options').hide();
                  });
                </script>
              </div>
              <?php echo $search; ?>
            </div>
          </div>
        </div>
      </div>
    </div>
    <div class="arc2">
      <?php echo $cart; ?>
    </div>
  </div>
</header>