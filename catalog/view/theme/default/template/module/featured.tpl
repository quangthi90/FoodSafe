<div class="product-block">
  <h3 class="heading"><?php echo $heading_title; ?></h3>
  <?php foreach (array_chunk($products, 4) as $subProducts) { ?>
    <div class="row products">
      <?php foreach ($subProducts as $product) { ?>
      <div class="col-lg-3 col-md-3 col-sm-6 col-xs-12 product">
        <div class="pro-img">
            <a href="<?php echo $product['href']; ?>" title="<?php echo $product['name']; ?>"> 
                <img src="<?php echo $product['thumb']; ?>" alt="<?php echo $product['name']; ?>">
            </a>
        </div>
        <?php if ($product['price']) { ?>                                                     
        <div class="pro-price">        
          <?php if (!$product['special']) { ?>
            <?php echo $product['price']; ?>
          <?php } else { ?>
            <span class="price-new"><?php echo $product['special']; ?></span> 
            <span class="price-old"><?php echo $product['price']; ?></span>
          <?php } ?>
        </div>
        <?php } else { ?>
        <div class="pro-price">
          Liên hệ
        </div>
        <?php } ?>
        <div class="pro-name"><a href="<?php echo $product['href']; ?>"><?php echo $product['name']; ?></a></div>
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