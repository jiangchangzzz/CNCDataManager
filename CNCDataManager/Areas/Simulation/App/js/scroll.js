$(function(){
	$('.btn_gotop').click(function(){
		//$('html').animate({scrollTop:0},300);
		alert("hello");
	});

	$('body').scrollspy({
		target:'#rightScrollspy',
		offset:200,
	});
});