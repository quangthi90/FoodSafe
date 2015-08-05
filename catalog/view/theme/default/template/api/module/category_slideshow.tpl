<?php if ($category_data) { ?>
<div class="category-slideshow-container">
  <div class="container">
    <div class="category-slideshow-list none-padding-right">
      <nav class="navbar">
        <ul class="nav navbar-nav">
            <?php foreach ($category_data as $category) { ?>
            <?php if ($category['children']) { ?>
            <li class="dropdown">
              <a href="<?php echo $category['href']; ?>" class="dropdown-toggle" data-toggle="dropdown"><?php echo $category['name']; ?></a>
              <div class="dropdown-menu" style="width: 965px;">
                <div class="dropdown-inner">
                  <a class="dropdown-inner-header" href="<?php echo $category['href']; ?>"><?php echo $category['name']; ?></a> 
                  <?php foreach (array_chunk($category['children'], ceil(count($category['children']) / $category['column'])) as $children) { ?>
                  <ul class="list-unstyled">
                    <?php foreach ($children as $child) { ?>
                    <li><a href="<?php echo $child['href']; ?>"><?php echo $child['name']; ?></a></li>
                    <?php } ?>
                  </ul>
                  <?php } ?>
                </div>
                <div class="category-ads">
                  <a href="#" class="ad-item">
                    <img src="http://thitruongnongnghiep.vn/Portals/0/SanPham/cai-xanh-con-sach-j141110172052910.jpg">
                  </a>
                  <a href="#" class="ad-item">
                    <img src="http://thitruongnongnghiep.vn/Portals/0/SanPham/dua-sap-hqs-02616461626.jpg">
                  </a>
                </div>               
              </div>
            </li>
            <?php } else { ?>
            <li><a href="<?php echo $category['href']; ?>"><?php echo $category['name']; ?></a></li>
            <?php } ?>
            <?php } ?>
          </ul>
      </nav>
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