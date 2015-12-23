<!--div id="cart" class="btn-group btn-block">
  <a data-toggle="dropdown" data-loading-text="<?php echo $text_loading; ?>" class="btn dropdown-toggle">
    <i class="fa fa-shopping-cart"></i> 
    <span id="cart-total" class="label label-success"><?php echo $text_items; ?></span>
  </a>
  <ul class="dropdown-menu pull-right">
    <?php if ($products || $vouchers) { ?>
    <li>
      <table class="table table-striped">
        <?php foreach ($products as $product) { ?>
        <tr>
          <td class="text-center"><?php if ($product['thumb']) { ?>
            <a href="<?php echo $product['href']; ?>"><img src="<?php echo $product['thumb']; ?>" alt="<?php echo $product['name']; ?>" title="<?php echo $product['name']; ?>" class="img-thumbnail" /></a>
            <?php } ?></td>
          <td class="text-left"><a href="<?php echo $product['href']; ?>"><?php echo $product['name']; ?></a>
            <?php if ($product['option']) { ?>
            <?php foreach ($product['option'] as $option) { ?>
            <br />
            - <small><?php echo $option['name']; ?> <?php echo $option['value']; ?></small>
            <?php } ?>
            <?php } ?>
            <?php if ($product['recurring']) { ?>
            <br />
            - <small><?php echo $text_recurring; ?> <?php echo $product['recurring']; ?></small>
            <?php } ?></td>
          <td class="text-right">x <?php echo $product['quantity']; ?></td>
          <td class="text-right"><?php echo $product['total']; ?></td>
          <td class="text-center"><button type="button" onclick="cart.remove('<?php echo $product['key']; ?>');" title="<?php echo $button_remove; ?>" class="btn btn-danger btn-xs"><i class="fa fa-times"></i></button></td>
        </tr>
        <?php } ?>
        <?php foreach ($vouchers as $voucher) { ?>
        <tr>
          <td class="text-center"></td>
          <td class="text-left"><?php echo $voucher['description']; ?></td>
          <td class="text-right">x&nbsp;1</td>
          <td class="text-right"><?php echo $voucher['amount']; ?></td>
          <td class="text-center text-danger"><button type="button" onclick="voucher.remove('<?php echo $voucher['key']; ?>');" title="<?php echo $button_remove; ?>" class="btn btn-danger btn-xs"><i class="fa fa-times"></i></button></td>
        </tr>
        <?php } ?>
      </table>
    </li>
    <li>
      <div>
        <table class="table table-bordered">
          <?php foreach ($totals as $total) { ?>
          <tr>
            <td class="text-right"><strong><?php echo $total['title']; ?></strong></td>
            <td class="text-right"><?php echo $total['text']; ?></td>
          </tr>
          <?php } ?>
        </table>
        <p class="text-right"><a href="<?php echo $cart; ?>"><strong><i class="fa fa-shopping-cart"></i> <?php echo $text_cart; ?></strong></a>&nbsp;&nbsp;&nbsp;<a href="<?php echo $checkout; ?>"><strong><i class="fa fa-share"></i> <?php echo $text_checkout; ?></strong></a></p>
      </div>
    </li>
    <?php } else { ?>
    <li>
      <p class="text-center"><?php echo $text_empty; ?></p>
    </li>
    <?php } ?>
  </ul>
</div-->

<div class="shopArc" id="dnn_shopArc">
  <div class="clShopArc" id="cart">
    <div class="BoxShopArc">
      <span class="carttitle">Giỏ hàng của bạn</span>
      <div class="icon-cart shopping-cart">
        <span class="coutCart">Sản phẩm (<?php echo count($products); ?>)</span>
        <span class="priceCart">0 VND</span>
      </div>
      <div class="clear"></div>
    </div>
    <div class="ListPShopArc" style="display: none;">
      <div class="tableCart">
        <?php if ($products || $vouchers) { ?>
        <table cellspacing="0" cellpadding="0">
          <?php foreach ($products as $product) { ?>
          <tr>
            <td>
              <a title="<?php echo $option['name']; ?>" href="<?php echo $product['href']; ?>">
                <img width="60px" height="60px" alt="<?php echo $option['name']; ?>" src="<?php echo $product['thumb']; ?>">
              </a>
            </td>
            <td width="150px">
              <a title="<?php echo $option['name']; ?>" href="<?php echo $option['href']; ?>"><?php echo $option['name']; ?> (<?php echo $product['quantity']; ?>)</a>
              <br>
              <span class="priceC"><?php echo $product['total']; ?></span>
            </td>
            <td>
              <a title="<?php echo $button_remove; ?>" onclick="cart.remove('<?php echo $product['key']; ?>');" rel="nofollow" class="btn-remove"><?php echo $button_remove; ?></a>
            </td>
          </tr>
          <?php } ?>
          <tr>
            <td align="center" colspan="3">
              <a class="btnThanhtoan" href="<?php echo $cart; ?>"><?php echo $text_cart; ?></a>
              <a class="btnThanhtoan" href="<?php echo $checkout; ?>"><?php echo $text_checkout; ?></a>
            </td>
          </tr>
        </table>
        <?php } else { ?>
        <table cellspacing="0" cellpadding="0">
          <tr>
            <td align="center" colspan="3">
              <span class="spnull"><?php echo $text_empty; ?></span>
            </td>
          </tr>
          <tr>
            <td align="center" colspan="3">
              <a class="btnThanhtoan" href="<?php echo $cart; ?>"><?php echo $text_cart; ?></a>
            </td>
          </tr>
        </table>
        <?php } ?>
      </div>
    </div>
    <div class="clear"></div>
  </div>
</div>
<script type="text/javascript">
  $('#dnn_shopArc').hover(function() {
    $('.ListPShopArc').slideDown();
    $(this).find('.BoxShopArc').addClass('BoxShopArcHv');
  }, function() {
    $('.ListPShopArc').hide();
    $(this).find('.BoxShopArc').removeClass('BoxShopArcHv');
  });
</script>