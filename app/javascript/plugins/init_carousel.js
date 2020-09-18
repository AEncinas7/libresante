import 'owl.carousel';

const initCarousel = () => {
  // $(document).ready(function () {
  jQuery(function () {
    $('.owl-one').owlCarousel({
      items: 4,
      autoWidth: true,
      dots: false,
      smartSpeed: 150,
      nav: true,
      navText: ["<i class='fas fa-chevron-circle-left'></i>", "<i class='fas fa-chevron-circle-right'></i>"]
    });

    $('.owl-two').owlCarousel({
      items: 1,
      autoWidth: false,
      dots: true,
      smartSpeed: 1500,
      nav: false,
      // autoplay: true,
      // autoplaySpeed: 50 / true,
      loop: true
    });
  });
};

export { initCarousel };