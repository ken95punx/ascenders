$(function() {
  //footerの高さ指定
  var footer_height = $('footer').height();
  $('footer').css('bottom', "-" + footer_height + "px");
});


// slick.js（slider）
$(function() {
  $('.multiple-item').slick({
    infinite: true,
    dots:true,
    slidesToShow: 4,
    slidesToScroll: 4,
    responsive: [{
        breakpoint: 768,
        settings: {
           slidesToShow: 2,
           slidesToScroll: 2,
        }
    },{
        breakpoint: 480,
        settings: {
          slidesToShow: 2,
          slidesToScroll: 2,
        }
      }
    ]
  });
});

// slick解除
$(window).resize(function(){
  //windowの幅をxに代入
  var x = $(window).width();
  //windowの分岐幅をyに代入
  var y = 769;
  if (x <= y) {
    $('.article-list ul').removeClass('multiple-item');
  } else {
    $('.article-list ul').addClass('multiple-item');
  }
});

// matchheight.js（slider）

$(function() {
    $('.multiple-item li').matchHeight();
});
