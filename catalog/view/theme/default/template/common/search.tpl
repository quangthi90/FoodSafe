<div id="search" class="quick-search-form" data-url="<?php echo $search_action; ?>">
	<div class="input-group">
        <input type="text" name="search" value="<?php echo $search; ?>" placeholder="<?php echo $text_search; ?>" class="form-control" />
        <div class="input-group-btn">
            <button class="btn btn-default btn-search" type="submit">
            	<i class="fa fa-search"></i>
        	</button>
        </div>
    </div>
</div>
<script type="text/javascript">
	$(document).ready(function(){
		var searchForm = $(".quick-search-form");		
		var searchInput = searchForm.find("input[name='search']");

		searchForm.find(".btn-search").on("click", submitForm);
		searchInput.on("keydown", function(e){
			if (e.keyCode == 13) {
				submitForm();
			}
		});
		searchInput.on("keyup", function() {
			searchInput.val($(this).val());
		});
		function submitForm(){
			var url = searchForm.data("url");
			if(url){
				url += '&search=' + encodeURIComponent(searchInput.val());
				window.location = url;
			}
		}
	});
</script>