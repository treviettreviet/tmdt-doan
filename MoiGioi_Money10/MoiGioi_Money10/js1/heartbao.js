// JavaScript Document
var gIndexHeartBanner = 0;
var gCountIndex = 0;
var gTimeoutHeartBanner = null;
_setHeartBanner();
function _getTimeoutHeartBanner()
{
	var $obj = $('#timeout-heartbanner p').eq(gIndexHeartBanner);
	if ($obj.length) {
		return parseInt($obj.text());
	}
	return 5000;
}
function _setHeartBanner()
{
	$('#heart-banner').bind('mouseover', function() {
		if (gTimeoutHeartBanner != null) {
			clearTimeout(gTimeoutHeartBanner);
		}										  
	}).bind('mouseout', function() {
		gTimeoutHeartBanner = setTimeout('_setTimeoutHeartBanner()', _getTimeoutHeartBanner());
	});
	gTimeoutHeartBanner = setTimeout('_setTimeoutHeartBanner()', _getTimeoutHeartBanner());
	var $objs = $('#title-heartbanner a');
	gCountIndex = $objs.length;
	$objs.each(function(index) {
		$(this).bind('mouseover', function() {
			if (gTimeoutHeartBanner != null) {
				clearTimeout(gTimeoutHeartBanner);
			}
			var $obj = $(this).parent();
			if (!$obj.hasClass('active')) {
				gIndexHeartBanner = index;
				gTimeoutHeartBanner = setTimeout('_viewHeartBanner()', 500);
			}
			return false;
		});
	});
}
function _setTimeoutHeartBanner()
{
	if (gTimeoutHeartBanner != null) {
		clearTimeout(gTimeoutHeartBanner);
	}
	gIndexHeartBanner++;
	gIndexHeartBanner = gIndexHeartBanner >= gCountIndex ? 0 : gIndexHeartBanner;
	_viewHeartBanner();
	gTimeoutHeartBanner = setTimeout('_setTimeoutHeartBanner()', _getTimeoutHeartBanner());
}
function _viewHeartBanner()
{
	if (gTimeoutHeartBanner != null) {
		clearTimeout(gTimeoutHeartBanner);
	}
	var $objs = $('#title-heartbanner li');
	$objs.removeClass('active').eq(gIndexHeartBanner).addClass('active');
	var $frame_banner = $('#frame-banner');
	var left = 940*gIndexHeartBanner*(-1);
	$frame_banner.animate({'left':left},300);
}