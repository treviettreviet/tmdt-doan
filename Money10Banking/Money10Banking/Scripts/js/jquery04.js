/* Inicialització en català per a l'extenció 'calendar' per jQuery. */
/* Writers: (joan.leon@gmail.com). */
jQuery(function($){
	$.datepicker.regional['vi'] = {
		clearText: 'Xóa', clearStatus: '',
		closeText: 'Đóng', closeStatus: '',
		prevText: '&#x3c;Trước', prevStatus: '',
		prevBigText: '&#x3c;&#x3c;', prevBigStatus: '',
		nextText: 'Sau&#x3e;', nextStatus: '',
		nextBigText: '&#x3e;&#x3e;', nextBigStatus: '',
		currentText: 'Hôm nay', currentStatus: '',
		monthNames: ['Tháng 1','Tháng 2','Tháng 3','Tháng 4','Tháng 5','Tháng 6',
		'Tháng 7','Tháng 8','Tháng 9','Tháng 10','Tháng 11','Tháng 12'],
		monthNamesShort: ['1','2','3','4','5','6',
		'7','8','9','10','11','12'],
		monthStatus: '', yearStatus: '',
		weekHeader: 'ĐT', weekStatus: '',
		dayNames: ['Chủ Nhật','Thứ Ba','Thứ Tư','Thứ Năm','Thứ Sáu','Thứ Bảy','Thứ Hai'],
		dayNamesShort: ['Chủ Nhật','Thứ Ba','Thứ Tư','Thứ Năm','Thứ Sáu','Thứ Bảy','Thứ Hai'],
		dayNamesMin: ['CN','T2','T3','T4','T5','T6','T7'],
		dayStatus: 'Chọn DD là ngày đầu tuần', dateStatus: 'D, Ngà\\u0079 d Tháng M',
		dateFormat: 'mm/dd/yy', firstDay: 1, 
		initStatus: 'Chọn một ngày', isRTL: false};
	$.datepicker.setDefaults($.datepicker.regional['vi']);
});