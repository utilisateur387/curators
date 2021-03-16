import { fetchWithToken } from "../utils/fetch_with_token";

const cartelScan = () => {

  // Grabbing Elements and Storing in Variables
  const defaultFile = document.getElementById("cartel_photo");
  // console.log(defaultFile)
  // const customBtn = document.getElementById("customBtn");
  const customBtnCartel = document.getElementById("customBtnCartel");
  // const customSpace = document.getElementById("custom-space");
  customBtnCartel.addEventListener("click", function () {
    console.log("1");
    defaultFile.click();
    console.log("2");
  });


  // File Upload
 defaultFile.addEventListener("change", (event) => {

  let files = defaultFile.files[0]; //files[0] - For getting first file
  
  const img = new File([files], "cartel.png", {
    type: 'image/png'
  });
  let fd = new FormData();
  fd.append("image", img);

  fetchWithToken("/cartel_scans", {
    method: "POST",
    body: fd
  })
    .then(response => response.json())
    .then((data) => {
      console.log(data);

      let title = document.querySelector('#artwork_title');
      let artist = document.querySelector("#artwork_artist_id");
      let year = document.querySelector("#artwork_completion_year");

      title.value = data['annotations'][1];
      year.value = data['annotations'][2];
      artist.value = data['annotations'][0];


      // ["Nature morte / Still life",
      // "2018",
      // "Artiste Inconnu / Unknown artist",
      // "Technique mixte / Mixed media",
      // "Dimensions variables / Various sizes",
      // "Collection particulière / Private collection"]
    });

  //   // Image Preview
  //   //   console.log(files);

  //   if (files) {
  //     // Showing Image and Hiding "Image Preview" Text
  //     preview_img.style.display = "block";
  //     preview_text.style.display = "none";
  //     //Read File
  //     const fileReader = new FileReader();

  //     fileReader.addEventListener("load", function () {
  //       // convert image to base64 encoded string
  //       preview_img.setAttribute("src", this.result);
  //       // console.log(this.result);
  //     });
  //     fileReader.readAsDataURL(files);
  });
  // });
}

export { cartelScan }