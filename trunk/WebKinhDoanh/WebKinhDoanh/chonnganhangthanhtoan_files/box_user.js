// JavaScript Document
setBoxUser();
function setBoxUser()
{
	$(document).ready(function() {
		$('#icon-man-login a').bind('click', function(event) {
			var $obj = $('#shortcut-use-login');
			if ($obj.length) {
				$obj.css({'left':event.clientX, 'top':event.clientY}).show(function(){});
			}
			return false;
		});
		$(this).bind('click', function() {
			var $obj = $('#shortcut-use-login');
			if ($obj.length) {
				$obj.hide();
			}
		});
	});
}
setBoxSkype();
function setBoxSkype()
{
	$(document).ready(function() {
		$('#icon-skype a').bind('click', function(event) {
			var $obj = $('#shortcut-skype');
			if ($obj.length) {
				$obj.css({'left':event.clientX-170, 'top':event.clientY+15}).show(function(){});
			}
			$('#shortcut-yahoo').hide();
			return false;
		});
		$(this).bind('click', function() {
			var $obj = $('#shortcut-skype');
			if ($obj.length) {
				$obj.hide();
			}
		});
	});
}
setBoxYahoo();
function setBoxYahoo()
{
	$(document).ready(function() {
		$('#icon-yahoo a').bind('click', function(event) {
			var $obj = $('#shortcut-yahoo');
			if ($obj.length) {
				$obj.css({'left':event.clientX-190, 'top':event.clientY+15}).show(function(){});
			}
			$('#shortcut-skype').hide();
			return false;
		});
		$(this).bind('click', function() {
			var $obj = $('#shortcut-yahoo');
			if ($obj.length) {
				$obj.hide();
			}
		});
	});
}