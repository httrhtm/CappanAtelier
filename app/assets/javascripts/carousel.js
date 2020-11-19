$(document).on('turbolinks:load', function(){
  $('.slick').slick({
    accessibility: true,
    autoplay: true,
    autoplaySpeed: 5000,
    dots: false,
    arrows: true,
    infinite: true,
    slidesToShow: 2,
    slidesToScroll: 2,
  });
});
