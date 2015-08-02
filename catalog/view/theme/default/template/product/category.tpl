<?php echo $header; ?>
<div class="container">
  <ul class="breadcrumb">
    <?php foreach ($breadcrumbs as $breadcrumb) { ?>
    <li><a href="<?php echo $breadcrumb['href']; ?>"><?php echo $breadcrumb['text']; ?></a></li>
    <?php } ?>
  </ul>
  <div class="row"><?php echo $column_left; ?>
    <?php if ($column_left && $column_right) { ?>
    <?php $class = 'col-sm-6'; ?>
    <?php } elseif ($column_left || $column_right) { ?>
    <?php $class = 'col-sm-9'; ?>
    <?php } else { ?>
    <?php $class = 'col-sm-12'; ?>
    <?php } ?>
    <div id="content" class="<?php echo $class; ?>">
    <?php echo $content_top; ?>
      <h2><?php echo $heading_title; ?></h2>
      <?php if ($categories) { ?>
      <div class="search-filter">
        <h3><?php echo $text_refine; ?></h3>
        <?php if (count($categories) <= 5) { ?>
        <div class="row">
          <div class="col-sm-12">
            <ul>
              <?php foreach ($categories as $category) { ?>
              <li><a href="<?php echo $category['href']; ?>"><?php echo $category['name']; ?></a></li>
              <?php } ?>
            </ul>
          </div>
        </div>
        <?php } else { ?>
        <div class="row">
          <?php foreach (array_chunk($categories, ceil(count($categories) / 4)) as $categories) { ?>
          <div class="col-sm-3">
            <ul>
              <?php foreach ($categories as $category) { ?>
              <li><a href="<?php echo $category['href']; ?>"><?php echo $category['name']; ?></a></li>
              <?php } ?>
            </ul>
          </div>
          <?php } ?>
        </div>
        <?php } ?>
        <hr>
      </div>
      <?php } ?>        
      <?php if ($products) { ?>
      <p class="compare-tool"><a href="<?php echo $compare; ?>" id="compare-total"><?php echo $text_compare; ?></a></p>
      <div class="row product-view-options">
        <div class="col-md-2">
          <div class="btn-group hidden-xs">
            <button type="button" id="list-view" class="btn btn-default" data-toggle="tooltip" title="<?php echo $button_list; ?>"><i class="fa fa-th-list"></i></button>
            <button type="button" id="grid-view" class="btn btn-default" data-toggle="tooltip" title="<?php echo $button_grid; ?>"><i class="fa fa-th"></i></button>
          </div>
        </div>
        <div class="col-md-3 text-right padding-right-0">
          <label class="control-label margin-top-5x" for="input-sort"><?php echo $text_sort; ?></label>
        </div>
        <div class="col-md-3 text-right">
          <select id="input-sort" class="form-control" onchange="location = this.value;">
            <?php foreach ($sorts as $sorts) { ?>
            <?php if ($sorts['value'] == $sort . '-' . $order) { ?>
            <option value="<?php echo $sorts['href']; ?>" selected="selected"><?php echo $sorts['text']; ?></option>
            <?php } else { ?>
            <option value="<?php echo $sorts['href']; ?>"><?php echo $sorts['text']; ?></option>
            <?php } ?>
            <?php } ?>
          </select>
        </div>
        <div class="col-md-2 text-right padding-right-0">
          <label class="control-label margin-top-5x" for="input-limit"><?php echo $text_limit; ?></label>
        </div>
        <div class="col-md-2 text-right">
          <select id="input-limit" class="form-control" onchange="location = this.value;">
            <?php foreach ($limits as $limits) { ?>
            <?php if ($limits['value'] == $limit) { ?>
            <option value="<?php echo $limits['href']; ?>" selected="selected"><?php echo $limits['text']; ?></option>
            <?php } else { ?>
            <option value="<?php echo $limits['href']; ?>"><?php echo $limits['text']; ?></option>
            <?php } ?>
            <?php } ?>
          </select>
        </div>
      </div>
      <br />
      <div class="product-block">
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
      <div class="row pagination-wrapper">
        <div class="col-sm-6 text-left"><?php echo $pagination; ?></div>
        <div class="col-sm-6 text-right"><?php echo $results; ?></div>
      </div>
      <?php } ?>
      <?php if (!$categories && !$products) { ?>
      <p><?php echo $text_empty; ?></p>
      <div class="buttons">
        <div class="pull-right"><a href="<?php echo $continue; ?>" class="btn btn-primary"><?php echo $button_continue; ?></a></div>
      </div>
      <?php } ?>
      <?php echo $content_bottom; ?></div>
    <?php echo $column_right; ?></div>
</div>
<?php echo $footer; ?>
