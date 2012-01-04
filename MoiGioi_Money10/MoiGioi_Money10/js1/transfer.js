// JavaScript Document
setTransferPage();
function setTransferPage()
{
	$(document).ready(function() {
		_setMenuTab();
		_setOption();
		_setButtonTransfer();
	});
}
function _setButtonTransfer()
{
	$('#btnTransfer').bind('click', function() {
		if ($(this).hasClass('button-disable')) {
			return false;
		}
	});
}
function _setMenuTab()
{
	$('#menu-tab a').each(function(index) {
		$(this).bind('click', function() {
			$('#menu-tab li').removeClass('active').eq(index).addClass('active');
			$('.content-tab').hide().eq(index).show();
			/*if (index == 0) {
				$('#note-content-warning').show();
			} else {
				$('#note-content-warning').hide();
			}*/
			return false;
		});
	});
}
function _setOption()
{
	$('input.transfer-option').each(function(index) {
		$(this).bind('click', function() {
			$('#btnTransfer').removeClass('button-disable').attr('href','?portal=nganluong&page=transfer&cmd=create&option='+this.value);
			$('p.transfer-message').hide().eq(index).show();
		});
	});
}
setButtonViewContact();
function setButtonViewContact()
{
	$(document).ready(function() {
		$('#btnViewContact').bind('click', function() {
			if (!$(this).hasClass('disable')) {
				var $button = $(this);
				var $list = $('#danhsachdoitac');
				if ($list.length) {
					if ($list.css('display') == 'block') {
						$list.hide();
					} else {
						$list.show();				
						if ($list.html() == '') {
							$list.append('<div class="layout"></div>').find('.layout').show();
							$button.addClass('disable');
							$.get(this.href, {}, function(data) {
								$button.removeClass('disable');
								var html = $(data).find('#danhsachdoitac').html();
								if (html != null) {
									$list.empty().append(html);
								}
							});
						}
					}
				}
			}
			return false;
		});	
	});
}