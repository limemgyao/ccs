var naviScroll;
var pageiScroll;
var UA = navigator.userAgent.toLowerCase();//UserAgent
//document.addEventListener('touchmove',function(e){e.preventDefault();},false);
window.onload = function(){
    //page iscroll init
    //FastClick.attach(document.body);//加载FastClick插件
    //pageiScroll = new IScroll('.main_box',{bounce:false,click:iScrollClick()});//初始化页面iScroll
    //naviScroll = new IScroll('.nav_list_box',{click:iScrollClick()});//初始化导航栏iScroll
    bindClickEvent();//绑定点击事件
    page_onload();//加载页面onload事件
}

function iScrollClick(){
    //iScroll click 兼容性问题
    if(/iPhone|iPad|iPod|Macintoch/i.test(UA)) return false;
    if(/Chrome/i.test(UA)) return true;//(/Android/i.test(UA))
    if(/Silk/i.test(UA)) return false;
    if(/Android/i.test(UA)){
        var s = UA.match(/Android [\d+.]{1,5}/)[0].replace('Android','');
        return parseFloat(s[0]+s[2]+s[4])<=442&&parseFloat(s[0]+s[2]+s[4])>430 ? true:false;
    }
}
function bindClickEvent(){
    $('.headbar_show').click(function(){
        $('.nav_box').show();
        $('.nav_bg').fadeIn(200);
        $('.nav_list_box').css({'right':'0'}); 
        naviScroll.refresh();
    });
    $('.nav_bg').on('touchstart',function(){
        $('.nav_bg').fadeOut(200);
        $('.nav_list_box').css({'right':'-75%'});
        setTimeout(function(){
            $('.nav_box').hide();
        },400)
    });
    $('.headbar_logo').click(function(){
        window.location.href = 'index.html';
    });
    $('.headbar_qrcode').click(function(){
        $('.alert_qrcode_box').fadeIn(200);
    });
    $('.alert_close').click(function(){
        $('.alert_qrcode_box').fadeOut(200);
    });
    $('.navli').click(function(){
        var showClassname = $(this).attr('id');
        if(showClassname){
            var statusClassname = 'show_status' ;
            if($(this).hasClass(statusClassname)){
                $(this).removeClass(statusClassname);
                $(this).find('.arrowbtn').children('img').attr('src','images/nav/arrow_down.png');
                $('.'+showClassname).fadeOut(50);  
            }else{
                $(this).addClass(statusClassname);
                $(this).find('.arrowbtn').children('img').attr('src','images/nav/arrow_up.png');
                $('.'+showClassname).fadeIn(200);
            }
            naviScroll.refresh();
        }else{
            var location_href = $(this).attr('name');
            window.location.href = location_href;
        }
    });
}
