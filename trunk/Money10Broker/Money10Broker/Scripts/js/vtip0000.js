/**
Vertigo Tip by www.vertigo-project.com
Requires jQuery
*/

this.vtip = function() {   
	var title ='';
    $("li.tip").unbind().hover(   
        function(e) { 
			var width = $(this).width()/2 -15;
			//alert(height);
            title = $(this).find('img.vtip').attr('title');
            $(this).find('img.vtip').attr('title','');
			var position = $(this).position();
            $(this).append('<p id="vtip"><img id="vtipArrow" />' + title + '</p>');       
           
			var height = $('p#vtip').height();
			left = (position.left + width);
			
			if($.browser.msie && $.browser.version !="8.0")
			{ 
				$(this).find('p#vtip').css("top",position.top -  (30 + parseInt(height))+"px").css("left", left+"px").fadeIn("slow");
				 $(this).find('p#vtip #vtipArrow').attr("src", 'https://www.nganluong.vn/webskins/javascripts/vTip_v2/images/vtip_arrow.gif');
			}else
			{
				$(this).find('p#vtip').css("top",position.top -  (40 + parseInt(height))+"px").css("left", left+"px").fadeIn("slow");
				 $(this).find('p#vtip #vtipArrow').attr("src", 'https://www.nganluong.vn/webskins/javascripts/vTip_v2/images/vtip_arrow.png');
			}
            
			$(this).find('p#vtip #vtipArrow').css("margin-top", 20 + parseInt(height)+"px");
			
        },
        function() {
            $(this).find('img.vtip').attr('title',title);
            $(this).find("p#vtip").fadeOut("slow").remove();
			
        }
    )              
};

jQuery(document).ready(function($){vtip();}) 