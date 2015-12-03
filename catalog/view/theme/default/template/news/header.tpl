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
  <div class="menutopNew">
    <ul>
        <?php foreach ($categories as $category) { ?>
        <li class="lisroot lihome">
          <a title="<?php echo $category['name']; ?>" href="<?php echo $category['href']; ?>"><?php echo $category['name']; ?></a>
          <?php if (!empty($category['children'])) { ?>
          <ul class="ulchild">
            <?php foreach ($category['children'] as $child) { ?>
            <li><a title="<?php echo $child['name']; ?>" href="<?php echo $child['href']; ?>"><?php echo $child['name']; ?></a></li>
            <?php } ?>
          </ul>
          <?php } ?>
        </li>
        <?php } ?>
        <li class="SearchNew">
            <div>
                <input type="text" style="border-style:None;" placeholder="Nhập từ khóa" class="txtSearch" id="txtSearchnew" name="dnn$ctr2659$View$txtSearchnew">
                <input type="submit" style="border-style:None;" class="btnSearch" id="dnn_ctr2659_View_btnsearch" onclick="return CheckSearch();" value="Tìm kiếm" name="dnn$ctr2659$View$btnsearch">
            </div>
        </li>
    </ul>
    <div class="clr"></div>
</div>