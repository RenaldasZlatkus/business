function setupPage(){
	var outerWrapper = $("#lightbox-outer");
	outerWrapper.hide();
	
	$(".second-wrapper").click(function(event) {
		var link = $(event.currentTarget);
		var imageLink = link.find('img').attr('src');
		var image = $("#lightbox-image");

		image.attr("src", imageLink);
		outerWrapper.show();
	});

	outerWrapper.click(function(){
		outerWrapper.hide();
	});

	
}

$(document).ready(setupPage)

