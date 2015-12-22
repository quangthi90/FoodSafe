<?php
    function random_color_part() {
        return str_pad( dechex( mt_rand( 0, 255 ) ), 2, '0', STR_PAD_LEFT);
    }

    function random_color() {
        return random_color_part() . random_color_part() . random_color_part();
    }
?>
<?php foreach ($categories as $key => $category) { ?>
<?php $bg_color = random_color(); ?>
<div class="category_homepage">
    <div class="wrapper" id="category_floor_0">
        <div class="category">
            <div style="background-color: #<?php echo $bg_color; ?>; border-bottom: 1px solid #<?php echo $bg_color; ?>;" class="title">
                <span style="background-color: #<?php echo $bg_color; ?>;" class="floor"><?php echo $key + 1; ?>F<b style="border-left-color: #<?php echo $bg_color; ?>;" class="arrow"></b></span>
                <span class="label"><?php echo $category['name']; ?></span>
            </div>
            <div style="background-color: #<?php echo $bg_color; ?>;" class="icon icon_2">
                <a href="<?php echo $category['href']; ?>" title="<?php echo $category['name']; ?>"><i class="<?php echo $category['icon']; ?>"></i><br><?php echo $category['name']; ?></a>
                <div class="sep"></div>
                <a href="<?php echo $category['href']; ?>" title="<?php echo $category['name']; ?>"><i class="<?php echo $category['icon']; ?>"></i><br><?php echo $category['name']; ?></a>
            </div>
            <ul class="list">
            <?php foreach ($category['children'] as $child) { ?>
                <li>
                    <a href="<?php echo $child['href']; ?>" title="<?php echo $child['name']; ?>"><?php echo $child['name']; ?></a>
                </li>
            <?php } ?>
            </ul>
            <!--div data-ride="carousel" class="carousel slide" id="carousel_1">
                <a data-slide="prev" href="#carousel_1" class="carousel-control left"></a>
                <a data-slide="next" href="#carousel_1" class="carousel-control right"></a>
                <ul class="carousel-inner">
                    <li class="item active left">
                        <a target="_blank" href="/home/apple.spvg">
                            <img data-original="http://media.vatgia.vn/banners/jph1407689910.png" alt="Apple" class="lazy" src="http://media.vatgia.vn/banners/jph1407689910.png" style="display: block;">
                        </a>
                    </li>
                </ul>
            </div-->
        </div>
        <?php $products = $category['products']; ?>
        <?php for ($i = 0; $i < 10; $i++) { ?>
        <?php if (empty($products[$i])) break; ?>
        <div class="other_banner">
            <a rel="nofollow" target="_blank" href="<?php echo $products[$i]['href']; ?>" class="big" title="<?php echo $products[$i]['name']; ?>">
                <img class="lazy" src="<?php echo $products[$i]['thumb']; ?>" style="display: inline; width: 200px; height: 200px;">
            </a>
            <?php $i++; ?>
            <a rel="nofollow" target="_blank" href="<?php echo $products[$i]['href']; ?>" class="big" title="<?php echo $products[$i]['name']; ?>">
                <img class="lazy" src="<?php echo $products[$i]['thumb']; ?>" style="display: inline; width: 200px; height: 200px;">
            </a>
        </div>
        <?php } ?>
    </div>
</div>
<?php } ?>