/**
 +------------------------------------------+
 | @author <phuonglh@peacesoft.net>			|
 | @version NL2.0							|
 |											|
 +------------------------------------------+
 */
var objMenuMain=new Object;
objMenuMain.timeout=null;
objMenuMain.active=0;
$(document).ready(function(){
	if($("#account-menu-main ul li").length&&$("#account-menu").length){
		$("#account-menu-main ul li").each(function(index){
			$(this).bind("mouseover",function(event){
				if(objMenuMain.timeout!=null){
					clearTimeout(objMenuMain.timeout);
				}
				setMenuIndex(index);
			});
		});
		objMenuMain.active=getMenuIndex();
		setMenu();
		$("#account-menu").bind("mouseover",function(event){
			if(objMenuMain.timeout!=null){
				clearTimeout(objMenuMain.timeout);
			}
		}).bind("mouseout",function(event){
			objMenuMain.timeout=setTimeout("setMenuIndex("+objMenuMain.active+")",200);
		});
	}
});
function setMenu(){
	if($("#account-menu-main ul li").length&&$("#account-menu-sub").length){
		var left=0;
		$("#account-menu-main ul li").each(function(index){
			var $subMenu=$(".group-sub-menu:eq("+index+")");
			var subWidth=$subMenu.length?$subMenu.outerWidth():0;
			var width=$("#account-menu-sub").innerWidth();
			var temp=left+parseInt(($(this).outerWidth()-subWidth)/2);
			var position=temp>0?temp:0;
			position=position+subWidth>width?width-subWidth:position;
			$subMenu.css({left:position});
			left+=$(this).outerWidth();
		});
	}
}
function setMenuIndex(index){
	_removeSelectMenu();
	_addSelectMenu(index);
	_hideSubMenu();
	_showSubMenu(index);
}
function getMenuIndex(){
	var result=0;
	var $objs=$("#account-menu-main ul li");
	if($objs.length){
		$objs.each(function(index){
			if ($(this).hasClass('active')) {
				result=index;
			}
		});
	}
	return result;
}
function _addSelectMenu(index){
	$("#account-menu-main ul li:eq("+index+")").addClass("active");
}
function _removeSelectMenu(){
	$("#account-menu-main ul li").removeClass("active");
}
function _showSubMenu(index){
	var $obj=$(".group-sub-menu:eq("+index+")");
	if($obj.length){
		$obj.addClass("active");
	}
}
function _hideSubMenu(){
	var $objs=$(".group-sub-menu");
	if($objs.length){
		$objs.removeClass("active");
	}
}