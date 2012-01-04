// JavaScript Document
/**
+---------------------------------------+
| @author <phuonglh@peacesoft.net>		|
| @version NL 2.0						|
| @created 02/2010						|
| 										|
+---------------------------------------+
*/
setWithdrawView();
function setWithdrawView()
{
	$(document).ready(function() {
		$('#cashout_method').bind('change', function() {
			var index = parseInt(this.value) - 1;
			var $obj = $('.cashout-method').eq(index);
			if ($obj.length) {
			   $('.cashout-method').removeClass('cashout-method-active');
			   $obj.addClass('cashout-method-active');
			   $('.cashout-fee').hide().eq(index).show();
			}
		});
		var index = parseInt($('#cashout_method').val()) - 1;
		$('.cashout-fee').hide().eq(index).show();
	});
}