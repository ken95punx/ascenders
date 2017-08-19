//footerの高さ指定
$(function() {
  var footer_height = $('footer').height();

  $('footer').css('bottom', "-" + footer_height + "px");
});

// bxslider
$(function() {
  $('.movie-slider').bxSlider({
    slideWidth: 200,
    minSlides: 2,
    maxSlides: 3,
    slideMargin: 10
  });
  $('.bx-wrapper').css('max-width', '100%');
});
