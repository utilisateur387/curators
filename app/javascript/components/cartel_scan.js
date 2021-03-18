import { fetchWithToken } from "../utils/fetch_with_token";

const cartelScan = () => {

  // Grabbing Elements and Storing in Variables
  const defaultFile = document.getElementById("cartel_photo");
  // console.log(defaultFile)
  // const customBtn = document.getElementById("customBtn");
  const customBtnCartel = document.getElementById("customBtnCartel");
  // const customSpace = document.getElementById("custom-space");
  if (customBtnCartel) {
    customBtnCartel.addEventListener("click", function () {
      defaultFile.click();
      });
    };

  if (defaultFile) {
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
        let description = document.querySelector("#artwork_description");

        title.value = data['annotations'][1];
        year.value = data['annotations'][2];
        artist.value = data['annotations'][0];
        description.value = data['annotations'][3] + data['annotations'][4] + data['annotations'][5] + data['annotations'][6] + data['annotations'][7] + data['annotations'][8];
        console.log('hello')
        console.log(description.value)
      });
    });
  };
}

export { cartelScan }
