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
<body class="<?php echo $class; ?>">
<div class="arfix"><div class="menuarc"><div class="titleMm unnoneTk" id="lmhtx">Thành viên liên kết cấp quốc <a href="https://plus.google.com/110823742127041646770?rel=author" style="color: #5A5752">g</a>ia liên minh hợp tác xã Việt Nam</div><div class="noneTk" id="ftk"><div class="SearchContainer" id="dnn_ArcMenu_SEARCH1_DropDownSearch"><div class="SearchBorder"><div class="ccm1 searchDown1"><div style="display: none;"><input type="text" value="Sản phẩm" class="MenuSearch1" id="dnn_ArcMenu_SEARCH1_MenuSearch1" name="dnn$ArcMenu$SEARCH1$MenuSearch1"></div><span class="MenuSearch1 valueSearch1">Sản phẩm</span><span class="searchDownicon1"></span><ul class="searulvalue1"><li onclick="getView('Sản phẩm')">Sản phẩm</li><li onclick="getView('Tin tức')">Tin tức</li><li onclick="getView('Rao vặt')">Rao vặt</li><li onclick="getView('Gian hàng')">Gian hàng</li></ul></div><div class="ccm2"><input type="text" onkeydown="return __dnn_KeyDown('13', 'javascript:__doPostBack(%27dnn$ArcMenu$SEARCH1$cmdSearchNew%27,%27%27)', event);" placeholder=" Tìm kiếm" class="SearchTextBox csf" id="txtSearchNew1" maxlength="255" name="dnn$ArcMenu$SEARCH1$txtSearchNew1">&nbsp;<ul class="searchchoices"><li class=".searchiconsite">Site</li></ul><div class="seF"><a href="javascript:__doPostBack('dnn$ArcMenu$SEARCH1$cmdSearchNew','')" class="ServerSkinWidget" id="dnn_ArcMenu_SEARCH1_cmdSearchNew" onclick="return checkSearch1();"><img border="0" alt="Search" src="/Portals/_default/Skins/ARC/images/tk.png"></a></div></div></div></div></div><div class="PanenRight"><div id="wrapper"><ul><li class=""><span class="cut_menu"></span><a onclick="GetPopupLogin()" title="Đăng nhập" rel="nofollow" class="cuta">Đăng nhập</a></li><li class=""><span class="cut_menu"></span><a onclick="GetPopup()" title="Đăng ký" rel="nofollow" class="cuta">Đăng ký</a></li></ul></div></div><div class="PanenLeft"><div id="navigation-wrapper"><ul><li class=""><a href="http://thitruongnongnghiep.vn/thuong-mai-hoa-sang-che">Thương mại hóa sáng chế</a></li><li class=""><span class="cut_menu"></span><a title="Gian hàng" href="http://thitruongnongnghiep.vn/gian-hang">Gian hàng</a></li><li class=""><span class="cut_menu"></span><a title="Tin tức" href="http://thitruongnongnghiep.vn/tin-tuc">Tin tức</a></li><li class=""><span class="cut_menu"></span><a title="Rao vặt" href="http://thitruongnongnghiep.vn/rao-vat">Rao vặt</a></li><li class=""><span class="cut_menu"></span><a title="Liên hệ" href="http://thitruongnongnghiep.vn/lien-he">Liên hệ</a></li></ul></div></div></div><div class="clrs"></div></div>
<nav id="top">
  <div class="container">
    <?php //echo $currency; ?>
    <?php //echo $language; ?>
    <div class="row">
      <div class="col-xs-7">
        <div class="row header-logo">
          <div class="col-sm-4">
            <div id="logo">
              <?php if ($logo) { ?>
              <a href="<?php echo $home; ?>"><img src="<?php echo $logo; ?>" title="<?php echo $name; ?>" alt="<?php echo $name; ?>" class="img-responsive img-logo" /></a>
              <?php } else { ?>
              <h1><a href="<?php echo $home; ?>"><?php echo $name; ?></a></h1>
              <?php } ?>
            </div>
          </div>
          <div class="col-sm-7 col-sm-offset-1"><?php echo $search; ?>
          </div>          
        </div>
      </div>
      <div class="col-xs-5">
        <div class="row">
          <div class="col-xs-9">
            <div id="top-links" class="nav pull-right">
              <ul class="list-inline">
                <li><a href="<?php echo $wishlist; ?>" id="wishlist-total" title="<?php echo $text_wishlist; ?>"><i class="fa fa-heart"></i> <span class="hidden-xs hidden-sm hidden-md"><?php echo $text_wishlist; ?></span></a></li>
                <?php if ($logged) { ?>
                <li class="dropdown"><a href="<?php echo $account; ?>" title="<?php echo $text_account; ?>" class="dropdown-toggle" data-toggle="dropdown"><i class="fa fa-user"></i> <span class="hidden-xs hidden-sm hidden-md"><?php echo $text_account; ?></span> <span class="caret"></span></a>
                  <ul class="dropdown-menu dropdown-menu-right">
                    <li><a href="<?php echo $account; ?>"><?php echo $text_account; ?></a></li>
                    <li><a href="<?php echo $order; ?>"><?php echo $text_order; ?></a></li>
                    <li><a href="<?php echo $transaction; ?>"><?php echo $text_transaction; ?></a></li>
                    <li><a href="<?php echo $download; ?>"><?php echo $text_download; ?></a></li>
                  </ul>
                </li>
                <?php } ?>
                <?php if (!$logged) { ?>
                <li><a href="<?php echo $register; ?>" title="<?php echo $text_register; ?>"><i class="fa fa-user-plus"></i> <span class="hidden-xs hidden-sm hidden-md"><?php echo $text_register; ?></span></a></li>
                <li><a href="<?php echo $login; ?>" title="<?php echo $text_login; ?>"><i class="fa fa-sign-in"></i> <span class="hidden-xs hidden-sm hidden-md"><?php echo $text_login; ?></span></a></li>
                <?php } else { ?>
                <li><a href="<?php echo $logout; ?>" title="<?php echo $text_logout; ?>"><i class="fa fa-sign-out"></i> <span class="hidden-xs hidden-sm hidden-md"><?php echo $text_logout; ?></span></a></li>
                <?php } ?>       
              </ul>          
            </div>
          </div>
          <div class="col-xs-3">
            <div class="cart-wrapper pull-right"><?php echo $cart; ?></div>
          </div>
        </div>
      </div>
    </div>
    
  </div>
</nav>
<nav id="top-float">
  <div class="container">
      <div class="row">
        <div class="col-sm-3">
          <button type="button" class="btn btn-primary btn-lg btn-navbar" id="btn-category-trigger">
          <i class="fa fa-bars"></i> Sản phẩm
          </button>
        </div>
        <div class="col-sm-5">
          <?php echo $search; ?>
        </div>
        <div class="col-sm-2">
          <?php echo $cart; ?>
        </div>
        <div class="col-sm-2">
          <ul class="list-inline user-menu">
            <?php if (!$logged) { ?>
              <li><a href="<?php echo $register; ?>" title="<?php echo $text_register; ?>"><i class="fa fa-user-plus"></i> <span class="hidden-xs hidden-sm hidden-md"><?php echo $text_register; ?></span></a></li>
              <li><a href="<?php echo $login; ?>" title="<?php echo $text_login; ?>"><i class="fa fa-sign-in"></i> <span class="hidden-xs hidden-sm hidden-md"><?php echo $text_login; ?></span></a></li>
              <?php } else { ?>
              <li><a href="<?php echo $logout; ?>" title="<?php echo $text_logout; ?>"><i class="fa fa-sign-out"></i> <span class="hidden-xs hidden-sm hidden-md"><?php echo $text_logout; ?></span></a></li>
            <?php } ?>
          </ul>
        </div>
      </div>
  </div>
</nav>
<header>
  <div class="container">    
    <div class="row header-category">
      <div class="col-md-2" style="padding-right: 0;">
        <a id="category" class="btn btn-primary btn-lg block"><i class="fa fa-bars"></i> Sản phẩm</a>
      </div>
      <div class="col-md-10" style="padding-left: 0;">
        <div class="row">
          <div class="col-sm-9">
            <ul class="list-inline links">
              <li><a href="<?php echo $news; ?>" title="<?php echo $text_news; ?>"><i class="fa fa-newspaper-o"></i> <span class="hidden-xs hidden-sm hidden-md"><?php echo $text_news; ?></span></a></li>
              <li><a href="#" title="<?php echo $text_contact; ?>"><i class="fa fa-shopping-cart"></i> <span class="hidden-xs hidden-sm hidden-md"><?php echo $text_shops; ?></span></a></li>
              <li><a href="<?php echo $contact; ?>" title="<?php echo $text_contact; ?>"><i class="fa fa-phone"></i> <span class="hidden-xs hidden-sm hidden-md"><?php echo $text_contact; ?></span></a></li>
            </ul>
          </div>
          <div class="col-sm-3">
            <a href="#" class="btn btn-primary btn-lg text-uppercase block"><i class="fa fa-plus"></i> Khởi tạo gian hàng</a>
          </div>
        </div>
      </div>
    </div>
  </div>
</header>