// JavaScript Document
/**
+---------------------------------------+
| @author <phuonglh@peacesoft.net>		|
| @version NL 2.0						|
| @created 02/2010						|
| 										|
+---------------------------------------+
*/
function _isIE()
{
	var Browser = navigator.appName;	
	var Micro = Browser.indexOf("Microsoft");	
	if(Micro >= 0) 
	{
		return true;
	}
	return false;
}
function setInput()
{
	$(document).ready(function() {
		_setInputAmount();
		_setInputNumeric();
		_setMessageBox();
		_setCardNo();
		_setPassword();
	});
}
setInput();
function _setInputAmount()
{
	$('.input-amount').bind('keypress', function(event) {
		if (!_isIE()) {
			if ((event.charCode >= 48 && event.charCode <= 57) || (event.keyCode == 8 || event.keyCode == 9 || event.keyCode == 13 || event.keyCode == 35 || event.keyCode == 36 || event.keyCode == 37 || event.keyCode == 39 || event.keyCode == 46)) {
				return true;
			};
		} else {
			if ((event.keyCode >= 48 && event.keyCode <= 57) || (event.keyCode == 8 || event.keyCode == 9 || event.keyCode == 13 || event.keyCode == 35 || event.keyCode == 36 || event.keyCode == 37 || event.keyCode == 39 || event.keyCode == 46)) {
				return true;
			};
		}
		return false;
	}).bind('keyup', function(event) {
		if (this.value.length <= this.maxLength) {
			var temp = this.value;
			while (temp.indexOf('.') != -1) {
				temp = temp.replace('.','');
			}
			var result = '';
			while (temp.length > 3) {
				var length = temp.length;
				result = '.' + temp.substring(length - 3, length) + result;
				temp = temp.substring(0, length-3);
			}
			result = temp + result;
			this.value = result;
		} else {
			return false;
		}
	});
}
function _setInputNumeric()
{
	$('.input-numeric').bind('keypress', function(event) {
		if (!_isIE()) {
			if ((event.charCode >= 48 && event.charCode <= 57) || (event.keyCode == 8 || event.keyCode == 9 || event.keyCode == 13 || event.keyCode == 35 || event.keyCode == 36 || event.keyCode == 37 || event.keyCode == 39 || event.keyCode == 46)) {
				return true;
			};
		} else {
			if ((event.keyCode >= 48 && event.keyCode <= 57) || (event.keyCode == 8 || event.keyCode == 9 || event.keyCode == 13 || event.keyCode == 35 || event.keyCode == 36 || event.keyCode == 37 || event.keyCode == 39 || event.keyCode == 46)) {
				return true;
			};
		}
		return false;
	});
}
function _setMessageBox()
{
	var $messages = $('.message-box, .message-success');
	if ($messages.length) {
		$messages.each(function(index) {if ($(this).html() != '') {$(this).show(function() {});}});
		$messages.bind('click', function(event) {
			event.stopPropagation();
		});
		$(document).bind('click', function() {
			$messages.slideUp('fast', function() {$(this).empty();});
		});
	}
}
function _setCardNo()
{
	$('.card_no').each(function(index) {
		$(this).bind('keypress', function(event) {
			var value = $(this).val();
			var max = parseInt($(this).attr('maxlength'));
			var key = 0;
			if (window.event) {
				key = event.keyCode;
			} else {
				key = event.charCode;
			}
			if (value.length == max && key >= 48 && key <= 57) {
				var $obj = $('.card_no').eq(index+1);
				if ($obj.length) {
					if (!window.event) {
						$obj.val(String.fromCharCode(key));
					}
					$obj.focus();
				}
			}
			if (value.length == 0 && event.keyCode == 8) {
				var $obj = $('.card_no').eq(index-1);
				if ($obj.length) {
					var temp = $obj.val();
					if (temp.length != 0) {
						temp = temp.substring(0,temp.length-1);
					};
					$obj.val(temp);$obj.focus();
				}
			}
		});
	});
}
function _setPassword()
{
	$('.password, .text-confirm').bind("contextmenu",function(event){
		return false;
	}).bind('keydown', function(event) {
		if (event.ctrlKey)
			return false;
	});
}