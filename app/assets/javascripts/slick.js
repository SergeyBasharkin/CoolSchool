$(document).ready(function() {
    var leftUIEl = $('.arrow-left');
    var rightUIEl = $('.arrow-right');
    var elementsList = $('.carousel-list');
 
    var pixelsOffset = 350;
    var currentLeftValue = 0;
    var elementsCount = elementsList.find('li').length;
    var minimumOffset = - ((elementsCount - 1) * pixelsOffset);
    var maximumOffset = 0;
 
    leftUIEl.click(function() {        
        if (currentLeftValue != maximumOffset) {
            currentLeftValue += 350;
            elementsList.animate({ left : currentLeftValue + "px"}, 500);
        }        
    });
 
    rightUIEl.click(function() {        
        if (currentLeftValue != minimumOffset) {
            currentLeftValue -= 350;
            elementsList.animate({ left : currentLeftValue + "px"}, 500);
        }        
    });
});