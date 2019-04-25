function ie_lt_9(a,u){
	var userAgent = navigator.userAgent, isOpera = userAgent.indexOf("Opera") > -1;
	var isIE = userAgent.indexOf("compatible") > -1 && userAgent.indexOf("MSIE") > -1 && !isOpera;
	var reIE, v;
	if (!isIE){return false;}
	var reIE = new RegExp("MSIE (\\d+\\.\\d+);");
	reIE.test(userAgent);
	v = parseFloat(RegExp["$1"]);
	if (v<9){
	window[a](u);
	}
}
function jsload(url){
	var head = document.getElementsByTagName('HEAD').item(0);
	var script= document.createElement("script");
	script.type = "text/javascript";
	script.src=url;
	head.appendChild(script);
}
$(function(){
	$("#search-toggle").click(function(){
		$("#nav-phone").hide().removeClass("open").find("li").removeClass("active").children("ul").hide();
		if(!$("#search-form").hasClass("open")){
			$("#search-form").slideDown(200).addClass("open");
		}else{
			$("#search-form").slideUp(200).removeClass("open");
		}
	});
	$("#nav-toggle").click(function(){
		$("#search-form").hide().removeClass("open");
		if(!$("#nav-phone").hasClass("open")){
			$("#nav-phone").slideDown(200).addClass("open");
		}else{
			$("#nav-phone").slideUp(200).removeClass("open");
		}
	});
	$("#nav-phone a").each(function(n){
		var $this = $(this),
			a  = $this.siblings("a"),
			ul = $this.siblings("ul");
			
		$this.click(function(e){
			if( ul.length < 1 ){return true; }
			e.preventDefault();
			var li = $(this).parent("li");
			if(!li.hasClass("active")){
				li.siblings('li').removeClass("active").children('ul').slideUp();
				li.addClass("active");
				ul.slideDown(200);
			}else{
				li.removeClass("active").children('ul').slideUp();
			}
		});
	});
	ie_lt_9('jsload','http://cn.uniview.com/tres/images/Yushi_Site/JS/respond.min.js');
	$(window).scroll(function() {
	  if($(window).scrollTop()>0){
	  	$("#Header").addClass("header_xs").parents(".wrapper").addClass("wrapper_fix");
	  }else{
	   $("#Header").removeClass("header_xs").parents(".wrapper").removeClass("wrapper_fix");
	  }
	});
})