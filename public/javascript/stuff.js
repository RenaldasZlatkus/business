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

	var mainContentContact = $("#contact-form");
	mainContentContact.hide().slideDown(2000);

	var mainContentAbout = $(".text-wrapper");
	mainContentAbout.hide().slideDown(2000);

	var mainContentOrder = $("#order-form");
	mainContentOrder.hide().slideDown(4000);

	var flashMessage = $(".flash");
	flashMessage.show().slideUp(10000);
}

$(document).ready(setupPage)

