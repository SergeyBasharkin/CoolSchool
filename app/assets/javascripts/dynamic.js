/**
 * Created by sergey on 06.10.16.
 */
var currentNumber = $('.dynamic-number').text();

$({numberValue: currentNumber}).animate({numberValue: 300}, {
    duration: 8000,
    easing: 'linear',
    step: function() {
        $('.dynamic-number').text(Math.ceil(this.numberValue));
    }
});