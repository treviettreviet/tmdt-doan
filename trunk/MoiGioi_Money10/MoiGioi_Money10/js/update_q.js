// JavaScript Document
function showUpdateQuantity()
{
	var win_w = $(window).width();
	var win_h = $(window).height();
	if ($('#layout-back').length == 0) {
		$('<div id="layout-back"></div>').css({'width':win_w,'height':$(document).height()}).appendTo('body').show();
	} else {
		$('#layout-back').css({'width':win_w,'height':$(document).height()}).show();	
	}
	var $obj = $('#popup_quantity');
	var left = parseInt((win_w - 700) / 2);
	var top = $(window).scrollTop() + parseInt((win_h - $obj.outerHeight()) / 2);
	$obj.css({'left':left, 'top':top}).show();
}
function setUpdateQuantity()
{
	$('#update_quantity_button').bind('click', function() {
		showUpdateQuantity();		
		return false;
	});
	$('#btnUpdateQuantityClose').bind('click', function() {
		$('#popup_quantity').hide();
		$('#layout-back').hide();
	});
	$('#popup_quantity form').bind('submit', function() {
		$('#message_process').html('Cập nhật số lượng ...');
	});
}