const toggleMenu = () => {

  const burger = document.getElementById("burger");
  const myNav = document.getElementById("myNav");
  burger.addEventListener("click", (event) => {
    myNav.style.width = "100%";
  });

  const cross = document.getElementById("cross");
  cross.addEventListener("click", (event) => {
    myNav.style.width = "0%";
  });
};

// const backArrow = () => {
//   const myArrow = document.getElementById("my_arrow");
//   myArrow.addEventListener('click', (event) => {
//     window.history.back();
//     // my_arrow.style.display = 'none';
//   });
// }

const backArrow = () => {
  const myArrow = document.querySelectorAll(".back-arrow");

  myArrow.forEach((arrow) => {
    arrow.addEventListener('click', (event) => {
      window.history.back();
    });
  });
}

export { toggleMenu, backArrow };
