/**
 * @author <phuonglh@peacesoft.net>
 * @created 02/2011 
 */
function showPaymentPopup()
{
	//$(document).ready(function() {
		var $obj = $('#popup-new');
		$obj.css({'height':'auto'});
		var win_w = $(window).width();
		var win_h = $(window).height();
		var left = parseInt((win_w - 850) / 2);
		var top = $(window).scrollTop() + parseInt((win_h - $obj.outerHeight()) / 2);
		top = top < 0 ? 0 : top;
		$obj.css({'left':left, 'top':top}).appendTo('body').show();
		setPaymentPopupContent()
		showPaymentLayout();
		makePaymentLayoutProcess($obj);
	//});
}
function hidePaymentPopup()
{
	var $obj = $('#popup-new');
	$obj.hide();
	hidePaymentLayout();
}
function restorePaymentPopup()
{
	var $obj = $('#popup-new');
	var win_w = $(window).width();
	var win_h = $(window).height();
	$obj.hide().css({'width':850, 'height':'auto'});
	var height = $obj.outerHeight();
	$obj.css({'width':200, 'height':30}).show();
	var left = parseInt((win_w - 850) / 2);
	var top = $(window).scrollTop() + parseInt((win_h - height) / 2);
	top = top < 0 ? 0 : top;
	$obj.animate({'left':left, 'top':top, 'height':height, 'width':850}, 300, function() {
		$obj.removeClass('minimize');
		showPaymentLayout();
	});
}
function minimizePaymentPopup()
{
	var $obj = $('#popup-new');
	var left = 0;
	var top = $(window).scrollTop() + $(window).height() - 30;
	top = top < 0 ? 0 : top;
	$obj.animate({'left':left, 'top':top, 'height':30, 'width':200}, 300, function() {
		$obj.addClass('minimize');
		hidePaymentLayout();
	});
}
setPaymentPopup();
function setPaymentPopup()
{
	$(document).ready(function() {
		/*var $obj = $('#popup-new');
		$obj.bind('mouseover', function() {
			if ($(this).hasClass('minimize')) {
				$(this).addClass('minimize-hover');
			}
		}).bind('mouseout', function() {
			if ($(this).hasClass('minimize')) {
				$(this).removeClass('minimize-hover');
			}
		});*/
	});
}
function setPaymentPopupContent()
{
	var $obj = $('#popup-new');
	$obj.find('.close-box').click(function() {
		minimizePaymentPopup();
		return false;
	});
	$obj.find('.title-popup').click(function() {
		if ($(this).parent('#popup-new').hasClass('minimize')) {
			restorePaymentPopup();
		}
		return false;
	});
}
function showPaymentLayout()
{
	var $layout_black = $('#layout-back');
	if (!$layout_black.length) {
		$layout_black = $('<div id="layout-back" style="opacity:0.85; filter:alpha(opacity=85);"></div>');
	}
	$layout_black.css({'width':$(window).width(),'height':$(document).height()}).appendTo('body').show();
}
function hidePaymentLayout()
{
	var $layout_black = $('#layout-back');
	$layout_black.hide();
}
function makePaymentLayoutProcess($parent)
{
	var width = $parent.outerWidth();
	var height = $parent.outerHeight();
	var $layout = $parent.find('#layout_payment_process');
	if ($layout.length == 0) {
		var $layout = $('<div id="layout_payment_process">&nbsp;</div>');
		$layout.css({'width':width, 'height':height});
		$parent.append($layout);
	}
	return $layout;
}
function showPaymentLayoutProcess($parent)
{
	var width = $parent.outerWidth();
	var height = $parent.outerHeight();
	var $layout = $parent.find('#layout_payment_process');
	if ($layout.length == 0) {
		$layout = makePaymentLayoutProcess($parent);
	}
	$layout.css({'width':width, 'height':height}).show();
}
function hidePaymentLayoutProcess($parent)
{
	var width = $parent.outerWidth();
	var height = $parent.outerHeight();
	var $layout = $parent.find('#layout_payment_process');
	if ($layout.length == 0) {
		$layout = makePaymentLayoutProcess($parent);
	}
	$layout.css({'width':width, 'height':height}).hide();
}
function loadPaymentPopupContent(html)
{
	var $obj = $('#popup-new');
	$obj.html(html);
	/*$obj.css({'height':'auto'});
	var height = $obj.outerHeight();
	$obj.css({'width':200, 'height':30}).show();*/
	setPaymentPopupContent();
	_setMessageBox();
	if ($obj.hasClass('minimize')) {
		restorePaymentPopup();
	} else {
		showPaymentPopup();
	}
}
function redirectPaymentPopupContent(url)
{
	//alert(url);
	$.get(url, {}, function(data) {
		if (data) {
			if ($(data).find('#popup-new').length) {
				var html = $(data).find('#popup-new').html();
				loadPaymentPopupContent(html);
			}
		}
	});
}
function processPaymentPopupContent()
{
	var $form = $('#form_payment');
	var url = $form.attr('action');
	//alert(url);
	//alert($form.find('input, select, textarea').serialize());
	//$form.serialize()
	showPaymentLayoutProcess($('#popup-new'));
	$.post(url, $form.serialize(), function(data) {
		if (data) {
			//alert(data);
			if ($(data).find('#popup-new').length) {
				var html = $(data).find('#popup-new').html();
				//alert(html);
				loadPaymentPopupContent(html);
			}
		}
	});
}