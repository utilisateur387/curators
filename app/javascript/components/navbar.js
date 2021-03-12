const toggleMenu = () => {
  const burger = document.getElementById("burger");
  const myNav = document.getElementById("myNav");

  if (burger) {
    burger.addEventListener("click", (event) => {
      myNav.style.width = "100%";
    });
  }

  const cross = document.getElementById("cross");
  if (cross) {
    cross.addEventListener("click", (event) => {
      myNav.style.width = "0%";
    });
  }
};


const backArrow = () => {
  const myArrow = document.querySelectorAll(".back-arrow");

  myArrow.forEach((arrow) => {
    arrow.addEventListener('click', (event) => {
      window.history.back();
    });
  });
}



// WIKIART SEARCH

// const wikiArtSearch = () => {

//   console.log('hello');
//   const searchForm = document.getElementById('search-form');
//   const userInput = document.getElementById('input');
//   const result = document.getElementById('result');
//   const image = document.getElementById('image');
//   const artwork = document.getElementById('artwork');

//   searchForm.addEventListener('submit', (event) => {
//     console.log("test");
//     event.preventDefault();
//     const input = `${userInput.value}`
//     const baseUrl = `https://www.wikiart.org/en/search/${input}/1?json=2`
//     const complementaryUrl = `https://en.wikipedia.org/api/rest_v1/page/summary/${userInput.value}`
//     result.innerHTML = "";
//     result.classList.remove('deactivated');
//     fetch(baseUrl).then((response) =>
//       response.json())
//       .then((data) => {
//         // console.log(data[0].title);
//         data.forEach((entry) => {
//           const title = entry.title;
//           const artistName = entry.artistName;
//           const year = entry.completitionYear;
//           const imageUrl = entry.image;

//           result.insertAdjacentHTML('beforeend',
//             `
//             <div class="col-sm-12 col-md-4">
//               <div class="card">
//                 <img src="${imageUrl}" alt="">
//                 <h5 class="artist">${artistName}</h5>
//                 <h5 class ="title">${title}</h5>
//                 <h5 class ="year">${year}</h5>
//               </div>
//             </div>
//             `);
//       });

//       const cards = document.querySelectorAll('.card');
//       console.log(cards);
//       cards.forEach((card) => {
//         card.addEventListener('click', (event) => {
//           // console.log(event.currentTarget.childNodes)
//           const resultImageURL = event.currentTarget.childNodes[1].currentSrc;
//           const resultArtist = event.currentTarget.childNodes[3].innerHTML;
//           const resultTitle = event.currentTarget.childNodes[5].innerHTML;
//           const resultYear = event.currentTarget.childNodes[7].innerHTML;

//           result.classList.add('deactivated');
//           // result.innerHTML = "";
//           artwork.innerHTML = "";
//           artwork.insertAdjacentHTML('afterbegin',
//             `
//               <img src="${resultImageURL}" alt="">
//               <h5 class="artist">${resultArtist}</h5>
//               <h5 class ="title">${resultTitle}</h5>
//               <h5 class ="year">${resultYear}</h5>
//             `)
//         });
//       })
//     });
//   });
// }

export { toggleMenu, backArrow };
