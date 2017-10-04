//footer

$(window).on('load resize', function(){
  var w = $(window).width();
  var x = 769;
  var footerHight = $('footer').height();

  if (w >= x) {
    $('header + .container').css('padding-bottom', footerHight + 70 + 'px');
  } else {
    $('header + .container').css('padding-bottom', footerHight + 30 + 'px');
  }
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

