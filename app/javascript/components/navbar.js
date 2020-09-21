const initUpdateNavbarOnScroll = () => {
  const navbar = document.querySelector('.navbar-libresante');
  const whiteBrand = document.querySelector('.white-brand');
  const blackBrand = document.querySelector('.black-brand');
  const icons = document.querySelectorAll('.icon-white');
  const links = document.querySelectorAll('.nav-link');
  const banner = document.querySelector('.banner-container');

  if (navbar) {
    window.addEventListener('scroll', () => {
      if (window.scrollY >= banner.offsetHeight) {
        navbar.classList.add('navbar-libresante-white');
        
        whiteBrand.classList.add('brand-hide');
        blackBrand.classList.remove('brand-hide');
        
        icons.forEach(e => e.classList.add('icon-change'));
        links.forEach(e => e.classList.add('link-change'));
        
      } else {
        navbar.classList.remove('navbar-libresante-white');
        
        whiteBrand.classList.remove('brand-hide');
        blackBrand.classList.add('brand-hide');

        icons.forEach(e => e.classList.remove('icon-change'));
        links.forEach(e => e.classList.remove('link-change'));
      }
    });
  }
}

export { initUpdateNavbarOnScroll };