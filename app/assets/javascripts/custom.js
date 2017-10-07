// ローディング
$(window).on('load', function() {
  $('.wrapper').css({opacity: '0'}).animate({opacity: '1'}, 1500);
  $('.loading').hide();
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

// プロフィールボタン開閉
$(function() {
  $("#profile").on("hide.bs.collapse", function(){
    $(".profile-btn").html('プロフィールを読む<span class="glyphicon glyphicon-plus"></span>');
  });
  $("#profile").on("show.bs.collapse", function(){
    $(".profile-btn").html('閉じる<span class="glyphicon glyphicon-minus"></span>');
  });
});

