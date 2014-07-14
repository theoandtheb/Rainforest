$(document).on('page:load ready', function(){
	$('#search-form').submit(function(event){
		event.preventDefault();
		var searchValue = $('#search').val();
		$.getScript('/products?search='+searchValue);
	});
	$(window).scroll(function(){
		var url=$('.next a').attr('href');
		if (url && $(window).scrollTop()>$(document).height()-$(window).height()-90){
			$('#paginate').hide();
			$.getScript(url);
		}
	});
});