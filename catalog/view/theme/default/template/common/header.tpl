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
<link href="catalog/view/javascript/bootstrap/css/bootstrap.min.css" rel="stylesheet" media="screen" />
<script src="catalog/view/javascript/bootstrap/js/bootstrap.min.js" type="text/javascript"></script>
<link href="catalog/view/javascript/font-awesome/css/font-awesome.min.css" rel="stylesheet" type="text/css" />
<link href="catalog/view/theme/default/stylesheet/stylesheet_green.css" rel="stylesheet">
<link href="catalog/view/javascript/jquery/owl-carousel/owl.carousel.css" rel="stylesheet">
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
<body class="<?php echo $class; ?>">
  <div class="header_bar">
    <div class="container_width" style="z-index: 2;">
      <div class="fl">
        <a href="#" title="Gian hàng bán">Gian hàng bán</a>
        <a href="<?php echo $news; ?>" title="Tin tức">Tin tức</a>
      </div>
      <div class="fr">
        <a href="<?php echo $register; ?>" class="simple_tip icon register" title="Đăng ký"><i class="fa fa-user-plus"></i> Đăng ký</a>
        <a type="button" href="#" onclick="showLoginForm($(this))" class="simple_tip icon user"><i class="fa fa-user"></i> Đăng nhập</a>
        <a type="button" href="#" onclick="$('#header_login').slideToggle(); return;" class="simple_tip icon user"><i class="fa fa-question-circle"></i> Hỗ trợ</a>
        <script type="text/javascript">
        function showLoginForm($this) {
          if (!$this.hasClass('active')) {
            $this.addClass('active'); 
            $('#header_login').show(); 
          } else { 
            $this.removeClass('active');
            $('#header_login').hide(); 
          }
        }
        </script>
      </div>
      <div class="clear"></div>
    </div>
  </div>
  <div id="header_login" style="display: none; position: absolute; right: 157px; z-index: 1;">
    <div class="simple_tip_wrapper header_bar_simple_tip">
      <div id="simple_tip_content">
        <form class="header_login" method="post" action="<?php echo $login; ?>">
          <div class="login_other"><a title="Đăng nhập từ Facebook" rel="nofollow" class="facebook"></a></div>
          <div class="login_other"><a title="Đăng nhập từ Google" class="google" rel="nofollow"></a></div>
          <div class="text or">Hoặc đăng nhập bằng <span class="icon_sprite icon_sprite_idvg" style="vertical-align: text-bottom;"></span></div>
          <div class="floginname"><i class="icon_sprite icon_sprite_floginname"></i> <input class="form_control" name="loginname" autocomplete="off" placeholder="Tên đăng nhập" type="text"></div>
          <div class="fpassword"><i class="icon_sprite icon_sprite_fpassword"></i> <input class="form_control" name="password" placeholder="Mật khẩu" type="password"></div>
          <div style="white-space: normal;">
            <input name="remember_password" value="1" type="checkbox" style="vertical-align: text-bottom;"><span class="text">Nhớ mật khẩu</span>
            <a class="text_link fr" href="https://id.vatgia.com/quen-mat-khau/" target="_blank" rel="nofollow">Quên mật khẩu?</a>
            <span class="clear"></span>
          </div>
          <div><input data-ptsp-kpi-action-label="Đăng nhập ID Vật Giá" data-ptsp-kpi-action-name="Navigation (neo trên cùng)" class="form_button" value="Đăng nhập" type="submit"></div>
        </form>
      </div>
    </div>
  </div>
  <header>
    <div class="container">
      <?php //echo $currency; ?>
      <?php //echo $language; ?>
      <div style="overflow: visible;" class="header_content container_width">
        <div class="logo">
          <?php if ($logo) { ?>
          <a href="<?php echo $home; ?>"><img src="<?php echo $logo; ?>" title="<?php echo $name; ?>" alt="<?php echo $name; ?>" class="img-responsive img-logo" /></a>
          <?php } else { ?>
          <h1><a href="<?php echo $home; ?>"><?php echo $name; ?></a></h1>
          <?php } ?>
        </div>
        <div class="banner" id="banner_190x50" title="Banner liên hệ quảng cáo">
          <div id="myadBan_14308" style="width:190px;height:50px;display:inline-block;background: none;position: relative;font-size: 0;text-align: center;overflow:hidden;" class="first">
            <a href="#" title="Liên hệ quảng cáo"><img src="http://media.myad.vn/photo/users_b_upload/2015/12/zbn1449656040.jpg" style="width : auto;"></a>
          </div>
        </div>
        <div class="search">
          <?php echo $search; ?>
        </div>
        <div class="clear"></div>
      </div>
    </div>
  </header>