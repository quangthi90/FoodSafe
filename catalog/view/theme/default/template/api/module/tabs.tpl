<div class="tabs product-block" id="product-tabs">
    <ul class="nav nav-tabs">
    <?php $i = 0; foreach ($modules as $module) { ?>
        <li <?php if ($i++ == 0) { ?>class="active"<?php } ?>><a href="#<?php echo $module['code']; ?>" data-toggle="tab" aria-expanded="<?php if ($key == 0) echo 'true'; else echo 'false'; ?>"><?php echo $module['heading_title']; ?></a></li>
    <?php } ?>
    </ul>
    <div class="tab-content">
    <?php $i = 0; foreach ($modules as $module) { ?>
        <div class="tab-pane <?php if ($i++ == 0) {?>active<?php } ?>" id="<?php echo $module['code']; ?>">
            <div class="row products">
            <?php foreach (array_chunk($module['products'], 4) as $block_products) { ?>
                <div class="row products">
                <?php foreach ($block_products as $product) { ?>
                    <div class="col-xs-12 col-sm-6 col-md-3 col-lg-3 product">
                        <div class="pro-img">
                            <a href="<?php echo $product['href']; ?>"> 
                                <img class="img-responsive" src="<?php echo $product['thumb']; ?>" title="<?php echo $product['name']; ?>" alt="<?php echo $product['name']; ?>" style="display: inline-block;">
                            </a>
                        </div>
                        <div class="pro-price">
                            Giá: 
                            <?php if ($product['price']) { ?>
                                <?php if (!$product['special']) { ?>
                                    <?php echo $product['price']; ?>
                                <?php } else { ?>
                                    <span class="price-new"><?php echo $product['special']; ?></span> <span class="price-old"><?php echo $product['price']; ?></span>
                                <?php } ?>
                                <?php if ($product['tax']) { ?>
                                    <span class="price-tax"><?php echo $text_tax; ?> <?php echo $product['tax']; ?></span>
                                <?php } ?>
                            <?php } else { ?>
                            Liên hệ
                            <?php } ?>
                        </div>
                        <div class="pro-name">
                            <a href="<?php echo $product['href']; ?>"><?php echo $product['name']; ?></a>
                        </div>
                        <div class="pro-sta">
                            <div class="row">
                                <div class="col-xs-4 s-item">
                                    <i class="fa fa-shopping-cart"></i> 
                                    <span class="pro-number">212</span>
                                </div>
                                <div class="col-xs-4 s-item">
                                    <i class="fa fa-eye"></i> 
                                    <span class="pro-number">3k</span>
                                </div>
                                <div class="col-xs-4 s-item">
                                    <i class="fa fa-user"></i>
                                    <span class="pro-number">20</span>
                                </div>
                            </div>
                        </div>
                    </div>
                <?php } ?>
                </div>
            <?php } ?>
            </div>
        </div>
    <?php } ?>
    </div>
</div>