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

// matchheight.js（slider）

$(function() {
    $('.multiple-item li').matchHeight();
});