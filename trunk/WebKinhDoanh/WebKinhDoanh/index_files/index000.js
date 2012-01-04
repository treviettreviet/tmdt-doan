$(document).ready(function() {
    var searchTags = [
		"ActionScript",
		"AppleScript",
		"Asp",
		"BASIC",
		"C",
		"C++",
		"Clojure",
		"COBOL",
		"ColdFusion",
		"Erlang",
		"Fortran",
		"Groovy",
		"Haskell",
		"Java",
		"JavaScript",
		"Lisp",
		"Perl",
		"PHP",
		"Python",
		"Ruby",
		"Scala",
		"Scheme"
	];
    
	$( "#txt_keyword" ).autocomplete({
		source: "<?php echo AJAX_URL?>&p=gt"
	});
    
    $('#category').panel({
        //collapsible : false
    }).find('h3').find('.ui-icon').remove();   
    
    $('.ui_panel').panel({
        collapsed : true
    }).find('.ui-icon').remove();
    
    $('.ui_panel_collapse').panel({
        collapsed : true
    }).find('.ui-icon').remove();
    
    $('.ui_panel_uncollapsible').panel({
        collapsible : false
    }).find('.ui-icon').remove();
    
    $('.ui_panel_uncollapse').panel().find('.ui-icon').remove();
    
    $('.ui_button').button();
    
    $('.buy_button').button({
        icons: {
            primary: "ui-icon-cart"
        }
    });
    
    $('.search_button').button({
        icons: {
            primary: "ui-icon-search"
        }
    });
    
    $('#menu_category li.cate_lv1').hover(            
        function(){ 
            var cate_id  = $(this).attr("idata");
            $(this).find('span[idata]').removeClass("ui-icon-circle-triangle-s").addClass("ui-icon-circle-triangle-n");
            
            $('.cate_child_' + cate_id).each(function(){                
                $(this).show();
            });     
        },
        function(){ 
            /*var cate_id  = $(this).attr("idata");
            
            $('.cate_child_' + cate_id).each(function(){                
                $(this).hide();
            });*/
        }
    );
    
    $('#menu_category span[idata]').click(function(){
        var cate_id  = $(this).attr("idata");
        var obj_span = $(this);
        
        $('.cate_child_' + cate_id).each(function(){
            if($(this).is(':hidden') == true){
                $(this).show();
            } else {
                $(this).hide();
            }
        });
        
        if (obj_span.hasClass('ui-icon-circle-triangle-n')) {
            obj_span.removeClass("ui-icon-circle-triangle-n").addClass("ui-icon-circle-triangle-s");
        } else {        
            if (obj_span.hasClass('ui-icon-circle-triangle-s')) {
                obj_span.removeClass("ui-icon-circle-triangle-s").addClass("ui-icon-circle-triangle-n");
            }
        }
    });
    
    $('#menu_category li')
    .hover(
        function(){ $(this).addClass('ui-state-hover');},
        function(){ $(this).removeClass('ui-state-hover');}        
    );
    
    $('.buy_button').click(function(){
        var id = $(this).attr('idata');
        $.ajax({
            url  : BASE_URL,
            data: {
                p    : 'sc',
                t    : 'ajax',
                id  : id
            },
            cache: false,
            success: function(data) {
                if (data.length > 1) {
                    alert(data);
                } else {                    
                    alert('Hàng đã vào giỏ');
                    $('#cart').html('Có ' + data + ' sản phẩm trong giỏ' + '<br><button class="buy_button" onClick="location.href=\'' + BASE_URL + '?p=gio-hang\'">xem giỏ</button>');
                    location.href = BASE_URL + '?p=gio-hang';
                }
            }
        });
    });
    
    $( ".ui_datepicker" ).datepicker({		
        dateFormat: 'dd/mm/yy',
        minDate: 3,
        maxDate: 30
	}); 
});