// JavaScript Document
/**
 * DataGrid (jQuery 1.2.6)
 * @author <lehuyphuong1982@gmail.com>
 * @since 06/2010
 * @project NganLuong 2.0
 */
(function($) {
	$.extend(
		
	);
	$.fn.extend({
		dataGrid : function(s) {
			s = $.extend({menuOrderAscClick	: null,menuOrderDescClick	: null},s);
			function classDataGrid(obj) {
				this.self = obj;
				this.header = null;
				this.menuOrder = null;
				this.menuOrderAscClick = null;
				this.menuOrderDescClick = null;
			}
			$.extend(
				classDataGrid.prototype,
				{
					init : function(s) {
						this.header = this.self.find('td.data-grid-header');
						this.menuOrder = $('<div class="transaction-select"><span>&nbsp;</span><div class="menu-order-box"><div><a href="#" class="order-asc">Sắp xếp tăng dần</a><a href="#" class="order-desc end">Sắp xếp giảm dần</a></div></div></div>');;
						this.menuOrderAscClick = s.menuOrderAscClick;
						this.menuOrderDescClick = s.menuOrderDescClick;
						this.set();
					},
					set : function() {
						this._setHeader();
					},
					_setHeader : function() {
						if (this.menuOrder != null) {
							var $menuOrder = this.menuOrder;
							this.header.prepend($menuOrder);
							this._setMenuOrder();
							var myObject = this;
							this.header.bind('mouseover', function() {
								$(this).find('.transaction-select').show();
							}).bind('mouseout', function() {
								$(this).find('.transaction-select').hide();
							});
						}
					},
					_setMenuOrder : function() {
						if (this.menuOrder != null) {
							this.header.menuOrder({dataGrid:this.self, ascOrderClick:this.menuOrderAscClick, descOrderClick:this.menuOrderDescClick});
						}
					}
				}
			);
			return this.each(function(index) {
				var $this = $(this);
				if (!$.event.dataGrid) $.event.dataGrid = [];
				$.event.dataGrid[index] = new classDataGrid($this);
				$.event.dataGrid[index].init(s);
			});
		},
		menuOrder : function(s) {
			s = $.extend({ascOrderClick : null,descOrderClick : null,dataGrid : null},s);
			function classMenuOrder(obj) {
				this.self = obj;
				this.header = null;
				this.menu = null;
				this.ascOrder = null;
				this.descOrder = null;
				this.ascOrderClick = null;
				this.descOrderClick = null;
				this.dataGrid = null;
			}
			$.extend(
				classMenuOrder.prototype,
				{
					init : function(s) {
						this.menu = this.self.find('.menu-order-box');
						this.ascOrder = this.self.find('.order-asc');
						this.descOrder = this.self.find('.order-desc');
						this.header = this._getHeader('td.data-grid-header');
						this.dataGrid = s.dataGrid;
						this.ascOrderClick = s.ascOrderClick;
						this.descOrderClick = s.descOrderClick;
						this.set();
					},
					set : function() {
						this._setDropMenu();
						this._setAscOrder();
						this._setDescOrder();
					},
					_setDropMenu : function() {
						var myObject = this;
						myObject.self.find('.transaction-select').hover(
							function() {
								myObject.menu.show();
							},
							function () {
								myObject.menu.hide();
							}
						);
					},
					_setAscOrder : function() {
						if (this.ascOrderClick != null) {
							var myObject = this;
							myObject.ascOrder.bind('click', function() {
								myObject.ascOrderClick.call(myObject.ascOrder, myObject.header, myObject.dataGrid);
								return false;
							});
						}
					},
					_setDescOrder : function() {
						if (this.descOrderClick != null) {
							var myObject = this;
							myObject.descOrder.bind('click', function() {
								myObject.descOrderClick.call(myObject.descOrder, myObject.header, myObject.dataGrid);
								return false;
							});
						}
					},
					_getHeader : function(header) {
						var $header = this.self;
						while ($header.length != 0 && !$header.is(header)) {
							$header = $header.parent();
						}
						return $header;
					}
				}
			);
			return this.each(function(index) {
				var $this = $(this);
				if (!$.event.menuOrder) $.event.menuOrder = [];
				$.event.menuOrder[index] = new classMenuOrder($this);
				$.event.menuOrder[index].init(s);
			});
		},
		order : function(s) {
			s = $.extend({order:'asc'},s);
			function classOrder(obj) {
				this.self = obj;
			}
			$.extend(
				classOrder.prototype,
				{
					init : function(s) {
						this.order = s.order;
						this.table = this._getTable();
						if (this.table.length) {
							this.header = this.table.find('td.data-grid-header');
							this.rows = this.table.find('tr.data-grid-row');
							this.columnIndex = null;
							if (this.columnIndex == null) {
								this.columnIndex = $('td,th', this.table.find('thead tr').eq(0)).index(this.self);
							}
							this.set();
						}
					},
					set : function() {
						this._sort();
					},
					_getTable : function() {
						var $table = this.self.parent();
						while ($table.length && !$table.is('table')) {
							$table = $table.parent();
						}
						return $table;
					},
					_getSortKey : function($cell) {
						if (this.header.is('.sort-alpha')) {
							return $cell.text();
						} else if (this.header.is('.sort-numeric')) {
							var result = $cell.text();
							return result.replace(/^[^\d]*$/,'');
						} else if (this.header.is('.sort-date')) {
							return $cell.text();
						}
						return $cell.text();
					},
					_setSortKey : function() {
						var myObject = this;
						$.each(myObject.rows, function(index, $row) {
							var $td = $('td', $row).eq(myObject.columnIndex);
							var $th = myObject.header.eq(myObject.columnIndex);
						});
					},
					_sort : function() {
						var $table = $('<table></table>');
						var $rows = null;
						while (($rows = this.table.find('tr.data-grid-row')).length) {
							var index = 0;
							for (var i=1; i<$rows.length; i++) {
								if (this._compare($rows.eq(index), $rows.eq(i)) == -1) {
									index = i;
								}
							}
							$rows.eq(index).appendTo($table);
						}
						var myObject = this;
						$('tr', $table).each(function(index) {
							myObject.table.append($(this));
						});						
					},
					_compare : function check(a, b) {
						var stringA = $(a).children('td').eq(this.columnIndex).text().toString();
						var stringB = $(b).children('td').eq(this.columnIndex).text().toString();						
						var result = 0;
						if (this.self.is('.sort-numeric')) {
							result = this._compareNumeric(stringA, stringB);
						} else if (this.self.is('.sort-date')) {
							result = this._compareDateTime(stringA, stringB);
						} else {
							result = this._compareString(stringA, stringB);
						}
						if (this.order != 'asc') {
							result = result == -1 ? 1 : (result == 0 ? 0 : -1);
						}
						return result;
					},
					_compareDateTime : function(dateA, dateB) {
						dateA = Date.parse(dateA);
						dateB = Date.parse(dateB);
						return (dateA > dateB ? -1 : (dateA < dateB ? 1 : 0));
					},
					_compareNumeric : function (numA, numB) {
						numA = this._replaceString(numA, '.', '');
						numB = this._replaceString(numB, '.', '');
						numA = parseInt(numA);
						numB = parseInt(numB);
						return (numA > numB ? -1 : (numA < numB ? 1 : 0));
					},
					_replaceString : function(str, strSearch, strReplate) {
						while (str.indexOf(strSearch) != -1) {
							str = str.replace(strSearch, strReplate);
						}
						return str;
					},
					_compareString : function(strA, strB) {
						var position = 0;
						var keyA = '';
						var keyB = '';
						do {
							keyA = strA.substring(position, position+1);
							keyB = strB.substring(position, position+1);
							position++;
						} while (keyA == keyB && (position < strA.length && position < strB.lenth))
						if (keyA == keyB && strA.length != strB.length) {
							return (strA.length > strB.length ? -1 : 1);
						}
						if (keyA != keyB) {
							var result = (keyA > keyB ? -1 : 1);
							return result;
						}
						return 0;
					}
				}
			);
			return this.each(function(index) {
				var $this = $(this);
				var order = new classOrder($this);
				order.init(s);
			});
		}
	});
})(jQuery);