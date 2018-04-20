$( document ).on('turbolinks:load', function() {
	$( document ).ready(function() {
		$('img.thumb').mouseover(function(){
			var source=$(this).context.src;
			$('img.dynamic-image').attr("src", source);
			$('a.dynamic-link').attr("href", source);
		})
	});
})
