const toggleMenu = () => {

  const burger = document.getElementById("burger");
  const myNav = document.getElementById("myNav")
  burger.addEventListener("click", (event) => {
    myNav.style.width = "100%";
  });

  const cross = document.getElementById("cross");
  cross.addEventListener("click", (event) => {
    myNav.style.width = "0%";
  });
};

export { toggleMenu };
