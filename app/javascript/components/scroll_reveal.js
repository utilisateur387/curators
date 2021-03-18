const scrollReveal = () => {
  ScrollReveal().reveal('.card-text-over-img', { opacity: 0, distance: '50px',delay: 140 });
  ScrollReveal().reveal('.explore-top-infos', { opacity: 0, distance: '50px', delay: 190 });
  ScrollReveal().reveal('.explore-all-artworks', { opacity: 0, distance: '50px', delay: 190 });
};

export { scrollReveal };

  // ScrollReveal({ reset: true }).reveal('.card-text-over-img', { delay: 150 });
  // ScrollReveal({ reset: true }).reveal('.explore-top-infos', { delay: 100 });
