// JavaScript Document
/**
+---------------------------------------+
| @author <phuonglh@peacesoft.net>		|
| @version NL 2.0						|
| @created 02/2010						|
| 										|
+---------------------------------------+
*/
setRechargeView();
function setRechargeView()
{
	$(function() {
		var $rows = $('.deposit-list-row h3 a');
		if ($rows.length) {
			$rows.each(function(index) {
				$(this).bind('click', function() {
					if ($(this).hasClass('active')) {
						$(this).removeClass('active');
						$('.deposit-list-row:eq('+index+')').removeClass('active');
					} else {
						$rows.removeClass('active');
						$(this).addClass('active');
						$('.deposit-list-row').removeClass('active').eq(index).addClass('active');
					}		   	
					return false;
				});
			});
		}
	});
}
