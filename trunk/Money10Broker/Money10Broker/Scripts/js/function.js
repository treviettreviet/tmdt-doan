// JavaScript Document
/**
+---------------------------------------+
| @author <phuonglh@peacesoft.net>		|
| @version NL 2.0						|
| @created 01/2010						|
| @link jquery 1.2.6					|
+---------------------------------------+
*/

// hàm lấy thông tin vùng miền bằng ajax
function getZones(obj, obj_id, zone_id)
{
	$(obj).attr('disabled', true);
	$('#'+obj_id).empty();
	$.get('?', {'portal':'nganluong', 'page':'user_register', 'cmd':'getzone', 'zone_id':zone_id, 'check_code':'nganluong'}, function(data) {
		$(obj).attr('disabled', false);																																			  
		var $temp = $(data).find('#zone_result option');
		if ($temp.length) {
			$('#'+obj_id).append($temp);
		}
	});
}
// hàm view nền background khi đăng ký tài khoản
function setFrameFocus()
{
	var $objs = $('div.frame_focus');
	$objs.each(function(index) {
		var $obj = $(this);
		$obj.bind('click', function() {
			$objs.removeClass('frame_active');
			$obj.addClass('frame_active');
		});
	});
	setInputFocus();
}
// hàm disabled button
function disabledButton(obj,id)
{
	if (document.getElementById(id)) {
		var btn = document.getElementById(id);
		btn.disabled = !obj.checked;
	}
}
//hàm set input register
function setInputFocus()
{
	var $objs = $('.input-business, .list-business, .input-business-date');
	$objs.each(function(index) {
		var $obj = $(this);
		var $support = $(this.parentNode).find('.note-content-support');
		var $warning = $(this.parentNode).find('.note-content-warning');
		if ($warning.length) {
			_setFocus($obj, $warning);
		} else {
			if ($support.length) {
				_setFocus($obj, $support);
			}
		}		
	});
	function _setFocus(obj, note)
	{
		var position = obj.position();
		var left = position.left + obj.outerWidth();
		var top = position.top + 3;
		note.css({'left':left, 'top':top});
		obj.bind('focus', function() {
			note.show();
		}).bind('blur', function() {
			note.hide();
		});
	}
}
// hàm focus
function inputFocus(name)
{
	$(document).ready(function() {$('input[name="'+name+'"]').focus();});
}
/*function checkValue(name, functionName)
{
	var $obj = $(name);
	if ($obj.length == 1) {
		var value = $obj.val();
		eval('var result = '+ functionName +'("'+ value +'");');
		return result;
	}
	return false;
}*/
