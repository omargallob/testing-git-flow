$(function() {
	//alert("fuck yeah!!");
	
	$("img#logo").hover(
		function () {
	    $(this).attr("src","/assets/CMS_logo_over.png");
	  }, 
	  function () {
			$(this).attr("src","/assets/CMS_logo.png");
	  });
		$("img#flogo").hover(
			function () {
		    $(this).attr("src","/assets/logo_over.png");
		  }, 
		  function () {
				$(this).attr("src","/assets/logo.png");
		  });
});