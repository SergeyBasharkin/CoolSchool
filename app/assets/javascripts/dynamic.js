/**
 * Created by sergey on 06.10.16.
 */
$(document).ready(function(){
    var flag=true;
    $(window).scroll(function () {
        $('#counter').each(function () {
            var cPos=$("#counter").offset().top;
            var topWindow=$(window).scrollTop();
            var time = 2;
            if(cPos< topWindow+500 && flag) {
                $('span').each(function () {
                    var
                        i = 1,
                        num = $(this).data('num'),
                        step = 1000 * time / num,
                        that = $(this),
                        int = setInterval(function () {
                            if (i <= num) {
                                that.html(i);
                            }
                            else {
                                flag=false;
                                clearInterval(int);
                            }
                            i++;
                        }, step);
                });
            }
        });
    });
});
$(document).ready(function(){
    $("#myTopnav").on("click","a", function (event) {
        event.preventDefault();
        var id  = $(this).attr('href'),
        top = $(id).offset().top;
        $('body,html').animate({scrollTop: top}, 500);
    });
});
