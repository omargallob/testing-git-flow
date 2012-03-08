$(function() {
	//alert("fuck yeah!!");
	
	$("img#logo").hover(
		function () {
	    $(this).attr("src","/assets/CMS_logo_over.png");
	  }, 
	  function () {
			$(this).attr("src","/assets/CMS_logo.png");
	  });
	
});