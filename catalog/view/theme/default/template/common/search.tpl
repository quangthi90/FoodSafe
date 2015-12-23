<div class="ccm2" id="search">
  <input type="text" placeholder="<?php echo $text_search; ?>" class="SearchTextBox csf" maxlength="255" name="search" value="<?php echo $search; ?>">&nbsp;
  <ul class="searchchoices">
    <li class=".searchiconsite">Site</li>
  </ul>
  <div class="seF">
    <a class="ServerSkinWidget" style="cursor: pointer;" onclick="$(this).parents('#search').find('button').click();">
      <img border="0" alt="Search" src="<?php echo $find_img; ?>">
    </a>
  </div>
  <button type="button" style="display: none;"></button>
</div>
<!--div id="search" class="input-group">
  <input type="text" name="search" value="<?php echo $search; ?>" placeholder="<?php echo $text_search; ?>" class="form-control input-lg" />
  <span class="input-group-btn">
    <button type="button" class="btn btn-info btn-lg"><i class="fa fa-search"></i></button>
  </span>
</div-->

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