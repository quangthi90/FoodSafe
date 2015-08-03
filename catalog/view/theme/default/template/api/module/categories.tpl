<?php $i = 0; foreach ($modules as $module) { ?>
<div class="product-block product-in-category-block" id="category-<?php echo $module['code']; ?>">    
    <div class="category-header">
        <i class="fa fa-shopping-cart category-icon"></i>
        <a class="category-name" href="#"><?php echo $module['heading_title']; ?></a>        
    </div>
    <div class="row">
        <div class="col-sm-3">
            <div class="sub-categories">
                <ul class="list-unstyled">
                    <?php for($i = 0; $i  < 5; $i ++) { ?>
                    <li>
                        <a href="#">Sub Product Category <?php echo $i; ?></a>
                    </li>
                    <?php } ?>
                </ul>
            </div>
            <div class="category-images hidden">
                <img class="img-responsive" src="http://media.vatgia.vn/banners/ujj1438596142.jpg" alt="ad1">
                <img class="img-responsive" src="http://media.vatgia.vn/banners/tgh1437551895.jpg" alt="ad1">
                <img class="img-responsive" src="http://media.vatgia.vn/banners/hwt1437619104.jpg" alt="ad1">
            </div>
        </div>
        <div class="col-sm-9">
            <?php foreach (array_chunk($module['products'], 3) as $block_products) { ?>
                <div class="row products">
                <?php foreach ($block_products as $product) { ?>
                    <div class="col-xs-12 col-sm-6 col-md-4 col-lg-4 product">
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
                    </div>
                <?php } ?>
                </div>
            <?php } ?>
        </div>
    </div>
</div>
<?php } ?>

<script type="text/javascript">
    $(document).ready(function(){
        $(".product-in-category-block .category-images")
        .removeClass("hidden")
        .owlCarousel({
            autoPlay: true,
            singleItem: true,
            navigation: true,
            stopOnHover: true,
            rewindNav : false,
            navigationText: ['<i class="fa fa-chevron-left"></i>', '<i class="fa fa-chevron-right"></i>'],
            pagination: false
        });
    });    
</script>