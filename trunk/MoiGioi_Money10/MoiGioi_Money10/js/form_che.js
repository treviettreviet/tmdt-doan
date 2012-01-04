// JavaScript Document
/**
+---------------------------------------+
| @author <phuonglh@peacesoft.net>		|
| @version NL 2.0						|
| @created 01/2010						|
| 										|
+---------------------------------------+
*/
function checkExistEmail(value, obj, error, success)
{
	if (isEmail(value)) {
		_removeNotificationAll(obj);
		_makeNotificationExist(obj,'Ch'+'ec'+'ki'+'ng..'+'.');
		_showNotification(obj);
		$.post('ajax/nganluong_email/get_email.php', {'email':value, 'code':'79693c31e7db10b948a21d3f515f411c'}, function(data) {
			if (data == 'exist') {
				_removeNotificationAll(obj);
				_makeNotificationError(obj, error);
				_showNotification(obj);
			} else {
				_removeNotificationAll(obj);
				_makeNotificationSuccess(obj, success);
				_showNotification(obj);
			}
		});
	}
}
//
function isConfirmObject(value, idObj)
{
	if ($('#'+idObj).length) {
		return (value == $('#'+idObj).val());
	}
	return false;
}
//
function setFormCheck(checkAll)
{
	$(document).ready(function() {
		$('form').each(function() {
			var $elements = $(this).find('.field-check');
			if ($elements.length) {
				_setSubmit(this);
				$elements.each(function(index) {
					_setBlur(this);
					_setFocus(this);
					if (checkAll != null) {
						checkValueAll(this);
					}
				});
			}
		});
	});
}
function _getFuncs(obj, evt)
{
	var funcs = new Array();
	var $parent = $(obj.parentNode);
	if ($parent.length) {
		if (evt != null) {
			$parent.find('.'+evt).each(function(index) {
				if ($(this).attr('title') != '') {
					funcs[index] = new Object();
					funcs[index].func = $(this).attr('title');
					funcs[index].error = $(this).html();
				}
			});
		} else {
			$parent.find('.field-check-function').each(function(index) {
				if ($(this).attr('title') != '') {
					funcs[index] = new Object();
					funcs[index].func = $(this).attr('title');
					funcs[index].error = $(this).html();
				}
			});
		}
	}
	return funcs;
}
function _checkValue(obj, evt)
{
	var funcs = _getFuncs(obj, evt);
	for (var i=0; i<funcs.length; i++) {
		var str_value = obj.value;
		if (eval(_getCodeFunc(funcs[i], obj.value)) == false) {			
			showNotificationOnBlur(obj, funcs[i].error);
			return false;
		}
	}
	return true;
}
function _getCodeFunc(func, value)
{
	return func.func.replace("_value_","str_value").replace("_obj_","obj").replace("_error_","'"+func.error+"'");
}
function showNotificationOnBlur(obj, error)
{
	_removeNotificationError(obj);
	_makeNotificationError(obj, error);
	_showNotification(obj);
}
function showNotificationOnFocus(obj)
{
	_removeNotificationAll(obj);
	_showNotification(obj);
}
function checkValue(obj, evt)
{
	if (obj.value != '') {
		return _checkValue(obj, evt);
	}
	return true;
}
function checkValueAll(obj)
{
	if (obj.value != '') {
		return _checkValue(obj);
	}
	return true;
}
function checkValueOnSubmit(obj)
{
	return _checkValue(obj, 'submit');
}
function _setBlur(obj)
{
	$(obj).bind('blur', function() {
		if ($(this).val() != '') {
			return checkValue(this, 'blur');
		}
	});
}
function _setFocus(obj)
{
	$(obj).bind('focus', function() {
		showNotificationOnFocus(this);
	});
}
function _setSubmit(obj)
{
	$(obj).bind('submit', function() {
		var myForm = this;
		var $elements = $(this).find('.field-check');
		if ($elements.length) {
			$elements.each(function(index) {
				if (!checkValueOnSubmit(this)) {
					
				}
			});
		}
		if (!$(this).find('.field-error, .field-exist').length) {
			if ($(this).find('.form-confirm').length) {
				var $confirm = $(this).find('.form-confirm').eq(0);
				$confirm.addClass('field-error');
				eval($confirm.text());
				return false;
			} else {
				return true;
			}
		}
		$('.frame-process-submit').hide();
		return false;
	});
}
function _showNotification(obj)
{
	var $parent = $(obj.parentNode);
	if ($parent.length) {
		var $message = $parent.find('.field-error, .field-exist, .field-success');
		var $alert = $parent.find('.field-alert');
		if ($message.length) {
			if ($alert.length) {
				$alert.hide();
			}
			$message.show();
		} else {
			if ($alert.length) {
				$alert.show();
			}		
		}
	}
}
function _removeNotificationError(obj)
{
	var $parent = $(obj.parentNode);
	if ($parent.length) {
		while (($errors = $parent.find('.field-error')).length) {
			$errors.eq(0).remove();
		}		
	}
}
function _removeNotificationExist(obj)
{
	var $parent = $(obj.parentNode);
	if ($parent.length) {
		while (($errors = $parent.find('.field-exist')).length) {
			$errors.eq(0).remove();
		}		
	}
}
function _removeNotificationSuccess(obj)
{
	var $parent = $(obj.parentNode);
	if ($parent.length) {
		while (($errors = $parent.find('.field-success')).length) {
			$errors.eq(0).remove();
		}		
	}
}
function _removeNotificationAll(obj)
{
	var $parent = $(obj.parentNode);
	if ($parent.length) {
		while (($errors = $parent.find('.field-error, .field-exist, .field-success')).length) {
			$errors.eq(0).remove();
		}		
	}
}
function _makeNotificationError(obj, error)
{
	$(obj).parent().append('<div class="field-notification field-error">'+error+'</div>');
}
function _makeNotificationExist(obj, error)
{
	$(obj).parent().append('<div class="field-notification field-exist">'+error+'</div>');
}
function _makeNotificationSuccess(obj, error)
{
	$(obj).parent().append('<div class="field-notification field-success">'+error+'</div>');
}