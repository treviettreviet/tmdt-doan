// JavaScript Document
/**
+---------------------------------------+
| @author <phuonglh@peacesoft.net>		|
| @version NL 2.0						|
| @created 01/2010						|
| 										|
+---------------------------------------+
*/
function leftTrim(value)
{
	index = 0;
	while(value.indexOf(' ', index) == index) {
		index++;
	}
	return value.substring(index, value.length);
}
function rightTrim(value)
{
	index = value.length-1;
	while(value.indexOf(' ',index) == index) {
		index--;
	}
	return value.substring(0, index+1);
}
function trim(value)
{
	value = leftTrim(value);
	value = rightTrim(value);
	return value;
}
//
function isSelect(value, def)
{
	return (value != def);
}
//
function notEmpty(value)
{
	return checkLength(value, 1);
}
// hàm kiểm tra độ dài chuỗi
function checkLength(value, min, max)
{
	value = trim(value);
	if (value.length < min) {
		return false;
	}
	if (max !== null && value.length > max) {
		return false;
	}
	return true;
}
// hàm kiểm tra tên người dùng
function isUserName(value)
{
	var re = new RegExp(/^[a-zA-Z0-9_\-]{6,25}$/);
	if(value.search(re)==-1)
	{
		return false;
	}
	return true;
}
// hàm kiểm tra ngày tháng
function isDate(value)
{
	var re = new RegExp(/^\d{1,2}[\/-]\d{1,2}[\/-]\d{4}$/);
	if(value.search(re)==-1)
	{
		return false;
	}
	return true;
}
// hàm kiểm tra email
function isEmail(value)
{
	//var re = new RegExp(/^([a-zA-Z][a-zA-Z0-9_\-]*(([a-zA-Z0-9][\.][a-zA-Z0-9][a-zA-Z0-9_\-]*)*)[a-zA-Z0-9]@([a-zA-Z][a-zA-Z0-9_\-]*[a-zA-Z0-9]\.)+([a-zA-Z0-9]{2,4}))$/);
	var re = new RegExp(/^([a-zA-Z0-9][a-zA-Z0-9_\-]*(([\.][a-zA-Z0-9_\-]*)*)[a-zA-Z0-9]@([a-zA-Z0-9][a-zA-Z0-9_\-]*[a-zA-Z0-9]\.)+([a-zA-Z0-9]{2,4}))$/);
	if(value.search(re)==-1)
	{
		return false;
	}
	return true;
}
// hàm kiểm tra tài khoản ngân hàng
function isBank(value)
{
	var re = new RegExp(/^\d{5,18}$/);
	if(value.search(re)==-1)
	{
		return false;
	}
	return true;
}
// hàm kiểm tra số
function isNumeric(value)
{
	var re = new RegExp(/^\d+$/);
	if(value.search(re)==-1)
	{
		return false;
	}
	return true;
}
// hàm kiểm tra số tiền
function isAmount(value)
{
	var re = new RegExp(/^[0-9\.]{1,}$/);
	if(value.search(re)==-1)
	{
		return false;
	}
	return true;
}
// hàm kiểm tra số mobile
function isMobile(value)
{
	var re = new RegExp(/^\d{10,11}$/);
	if(value.search(re)==-1)
	{
		return false;
	}
	return true;
}
// hàm kiểm tra số điện thoại
function isPhoneNumber(value)
{
	var re = new RegExp(/^\d{7,15}$/);
	if(value.search(re)==-1)
	{
		return false;
	}
	return true;
}
// hàm kiểm tra số chứng thực
function isVerifyNumber(value)
{
	var re = new RegExp(/^[a-zA-Z0-9\/_-]{6,20}$/);
	if(value.search(re)==-1)
	{
		return false;
	}
	return true;
}
// hàm kiểm tra mật khẩu
function isPassword(value)
{
	var re = new RegExp(/^[\S]{6,30}$/);
	if(value.search(re)==-1)
	{
		return false;
	}
	return true;
}
//Hàm hiện ảnh
function Tip()
{
	tt_Tip(arguments, null);
}
function TagToTip()
{
	var t2t = tt_GetElt(arguments[0]);
	if(t2t)
		tt_Tip(arguments, t2t);
}
function UnTip()
{
	tt_OpReHref();
	if(tt_aV[DURATION] < 0 && (tt_iState & 0x2))
		tt_tDurt.Timer("tt_HideInit()", -tt_aV[DURATION], true);
	else if(!(tt_aV[STICKY] && (tt_iState & 0x2)))
		tt_HideInit();
}