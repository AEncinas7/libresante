const initUpdateNavbarOnScroll = () => {
  const navbar = document.querySelector('.navbar-libresante');
  const brand = document.querySelector('.brand');
  const icons = document.querySelectorAll('.icon-white');
  const links = document.querySelectorAll('.nav-link');


  if (navbar) {
    window.addEventListener('scroll', () => {
      if (window.scrollY >= window.innerHeight) {
        navbar.classList.add('navbar-libresante-white');
        brand.classList.add('brand-black');
        icons.forEach(e => e.classList.add('icon-change'));
        // icon.classList.add('icon-change');
        links.forEach(e => e.classList.add('link-change'));
        
        // link.classList.add('link-change');
      } else {
        navbar.classList.remove('navbar-libresante-white');
        brand.classList.remove('brand-black');
        icons.forEach(e => e.classList.remove('icon-change'));
        // icon.classList.remove('icon-change');
        links.forEach(e => e.classList.remove('link-change'));
        // link.classList.remove('link-change');
      }
    });
  }
}

export { initUpdateNavbarOnScroll };