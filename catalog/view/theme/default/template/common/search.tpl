<div id="header_search" class="header_search">
  <div class="border" id="search">
    <a href="#" class="simple_tip" id="header_search_text" onclick="$('.simple_tip_wrapper').slideToggle();">Sản phẩm<b class="arrow_down"></b></a>
    <button type="button" class="button">Tìm kiếm</button>
    <div class="keyword">
      <div>
        <input type="text" autocomplete="off" maxlength="100" placeholder="Tìm kiếm sản phẩm, thương hiệu bạn mong muốn..." name="search" value="<?php echo $search; ?>" id="header_search_keyword" class="ac_input">
      </div>
    </div>
    <div class="clear"></div>
  </div>
</div>
<div class="simple_tip_wrapper" style="top: 10px; left: 125px; width: 96px; display: none; z-index: 1;">
  <span style="left: 39px; right: auto;" id="simple_tip_arrow"></span>
  <div id="simple_tip_content">
    <ul class="header_search_option">
      <li class="list">
        <a href="javascript:;">Sản phẩm</a>
      </li>
      <li class="list">
        <a href="javascript:;">Rao vặt</a>
      </li>
      <li class="list">
        <a href="javascript:;">Hỏi đáp</a>
      </li>
      <li class="list">
        <a href="javascript:;">Cửa hàng</a>
      </li>
    </ul>
  </div>
</div>
<script type="text/javascript"><!--
$('input[name=\'search\']').autocomplete({
  'source': function(request, response) {
    if (request == '') return;
    $.ajax({
      url: 'index.php?route=affiliate/tracking/autocomplete&filter_name=' +  encodeURIComponent(request),
      dataType: 'json',
      success: function(json) {
        response($.map(json, function(item) {
          return {
            label: item['name'],
            value: item['link']
          }
        }));
      }
    });
  },
  'select': function(item) {
    window.location.href = item['value'];
  }
});
//--></script>