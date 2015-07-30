<div class="product-block" id="top-products">
    <h3 class="heading"><?php echo $heading_title; ?></h3>
    <div class="products">
    <?php foreach ($products as $product) { ?>
        <div class="item product">
            <div class="pro-img">
                <a href="<?php echo $product['href']; ?>"> 
                    <img class="img-responsive" src="<?php echo $product['thumb']; ?>" title="<?php echo $product['name']; ?>" alt="<?php echo $product['name']; ?>">
                </a>
            </div>
            <div class="pro-name"><a href="<?php echo $product['href']; ?>"><?php echo $product['name']; ?></a></div>
            <div class="pro-price">
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
        </div>
    <?php } ?>
    </div>                
</div>
<script type="text/javascript">
    $('#top-products .products').owlCarousel({
        items: 5,
        autoPlay: false,
        singleItem: false,
        navigation: true,
        stopOnHover: true,
        rewindNav : false,
        navigationText: ['<i class="fa fa-chevron-left fa-5x"></i>', '<i class="fa fa-chevron-right fa-5x"></i>'],
        pagination: false
    });
</script>