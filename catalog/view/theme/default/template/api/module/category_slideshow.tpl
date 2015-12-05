<?php if ($category_data) { ?>
<div class="category-slideshow-container">
  <div class="container">
    <div class="category-slideshow-list none-padding-right">
      <ul class="category-list" style="height: 100%; border: 1px solid #cbf3a1;">
        <?php foreach ($category_data as $category) { ?>
        <?php if ($category['children']) { ?>
        <li class="root-category">
          <a href="<?php echo $category['href']; ?>" class="dropdown-toggle" 
            data-toggle="dropdown" title="<?php echo $category['name']; ?>">
            <i class="fa fa-cart-arrow-down"></i> <?php echo $category['name']; ?>
            </a>
          <div class="sub-category">
            <div class="sub-category-inner">
              <a class="sub-category-header" title="<?php echo $category['name']; ?>" href="<?php echo $category['href']; ?>">
               <?php echo $category['name']; ?>
              </a> 
              <?php foreach (array_chunk($category['children'], ceil(count($category['children']) / $category['column'])) as $children) { ?>
              <ul class="list-unstyled">
                <?php foreach ($children as $child) { ?>
                <li><a href="<?php echo $child['href']; ?>"><?php echo $child['name']; ?></a></li>
                <?php } ?>
              </ul>
              <?php } ?>
            </div>            
          </div>
        </li>
        <?php } else { ?>
        <li class="single-category"><a href="<?php echo $category['href']; ?>">
          <i class="fa fa-shopping-cart"></i> <?php echo $category['name']; ?></a>
        </li>
        <?php } ?>
        <?php } ?>
      </ul>
    </div>
    <div class="category-slideshow-detail none-padding-left">
        <?php if($category_banners) { ?>
        <div id="category_slideshow" class="slideshow-simple">
        <?php foreach ($category_banners as $banner) { ?>
          <div class="item text-center">
            <?php if ($banner['link']) { ?>
            <a href="<?php echo $banner['link']; ?>">
              <img src="<?php echo $banner['image']; ?>" alt="<?php echo $banner['title']; ?>" class="img-responsive" />
            </a>
            <?php } else { ?>
            <img src="<?php echo $banner['image']; ?>" alt="<?php echo $banner['title']; ?>" class="img-responsive" />
            <?php } ?>
          </div>
          <?php } ?>
        </div>
        <?php } ?>
      </div>
  </div>
</div>
<?php } ?>