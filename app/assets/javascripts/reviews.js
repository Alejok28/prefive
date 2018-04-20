$( document ).on('turbolinks:load', function() {
	$( document ).ready(function() {
		$('span.glyphicon').on('click',function(){
			$(this).siblings().andSelf().removeClass("hover");
			var value = this.dataset.rating;
			$('input#review_value').val(value);
			$(this).nextAll().andSelf().addClass("hover");
		})
		$('form#new_review').on('submit', function(e) {
			var description = $('#review_description').val();
			var value = $('input#review_value').val();
			if (description == "") {
				$('#review_description').css("border","2px solid #a94442");
				e.preventDefault();
			}
			if (value == 0) {
				$('div.rating').css("border-bottom","1px solid #a94442");
				e.preventDefault();
			}
		})
		$('#review_description').mouseover(function(){
			$(this).css("border-color","rgb(171, 171, 171)");
		})
		$('div.rating').mouseover(function(){
			$(this).css("border-bottom","none");
		})
	});
})
