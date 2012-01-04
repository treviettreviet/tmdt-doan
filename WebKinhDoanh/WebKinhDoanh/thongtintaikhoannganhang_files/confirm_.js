// JavaScript Document
function confirmPayment(url)
{
	$.get(url,{'zone_id':$('#city_id').val()}, function(data) {
		if (data) {
			var $content = $(data).find('#ajax-content');
			if ($content.length) {
				var fee_shipping = $content.find('#fee_shipping').text();
				if (fee_shipping != '0') {
					var html = $content.html();
					$('#ajax-content').html(html);
					setConfirmPayment();
					showConfirmPayment();
				} else {
					$('.form-confirm').remove();
					$('#form_payment').submit();
				}
			} else {
				$('.form-confirm').remove();
				$('#form_payment').submit();
			}
		}
	});
}
function showConfirmPayment()
{
	var win_w = $(window).width();
	var win_h = $(window).height();
	$('<div id="layout-back"></div>').css({'width':win_w,'height':$(document).height()}).appendTo('body').show();
	var $obj = $('#popup');
	var left = parseInt((win_w - 700) / 2);
	var top = $(window).scrollTop() + parseInt((win_h - $obj.outerHeight()) / 2);
	$('select').hide();
	$('#popup').css({'left':left, 'top':top}).show();
}
function setConfirmPayment()
{
	$('#popup #btnClose').click(function() {
		$('#layout-back').remove();
		$('select').show();
		$('#popup').hide();
		$('.form-confirm').removeClass('field-error');
		return false;
	});
	$('#popup #btnPayment').click(function() {
		$('#layout-back').remove();
		$('select').show();
		$('#popup').hide();
		$('.form-confirm').remove();
		$('#form_payment').submit();
		return false;
	});
	$('#popup').appendTo('body');
}