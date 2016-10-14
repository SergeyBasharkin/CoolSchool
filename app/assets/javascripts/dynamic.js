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
            if(cPos< topWindow+300 && flag) {
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
        //отменяем стандартную обработку нажатия по ссылке
        event.preventDefault();

        //забираем идентификатор бока с атрибута href
        var id  = $(this).attr('href'),

        //узнаем высоту от начала страницы до блока на который ссылается якорь
            top = $(id).offset().top;

        //анимируем переход на расстояние - top за 1500 мс
        $('body,html').animate({scrollTop: top}, 500);
    });
});
