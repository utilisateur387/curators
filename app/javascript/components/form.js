var currentTab;

function showTab(n) {
  // This function will display the specified tab of the form ...
  let tab = document.getElementsByClassName("tab");
  tab[n].style.display = "block";
  // ... and fix the Previous/Next buttons:
  if (n == 0) {
    document.getElementById("prevBtn").style.display = "none";
    document.getElementById("initialArrow").style.display = "flex";

  } else {
    document.getElementById("prevBtn").style.display = "flex";
  }
  if (n == (tab.length - 1)) {
    // document.getElementById("nextBtn").innerHTML = "Submit";
    document.getElementById("nextBtn").style.display = 'none';
    document.getElementById('submit-btn').style.removeProperty('display');
  } else {
    document.getElementById('submit-btn').style.display = 'none';
    document.getElementById("nextBtn").style.removeProperty('display');
    document.getElementById("nextBtn").innerHTML = "Next";
  }
}

function nextPrev(n) {
  document.getElementById("initialArrow").style.display = "none";
  // This function will figure out which tab to display
  let tab = document.getElementsByClassName("tab");
  // Hide the current tab:
  tab[currentTab].style.display = "none";
  // Increase or decrease the current tab by 1:
  currentTab = currentTab + n;
  // if you have reached the end of the form... :
  if (currentTab >= tab.length) {
    //...the form gets submitted:
    document.getElementById("new_artwork").submit();
    return false;
  }
  // Otherwise, display the correct tab:
  showTab(currentTab);
}

const fileUpload = () => {

    // Grabbing Elements and Storing in Variables
    const defaultFile = document.getElementById("artwork_photo");
    const customBtn = document.getElementById("customBtn");
    // const customBtn = document.getElementById("artwork_photo");
    const customSpace = document.getElementById("custom-space");
    customBtn.addEventListener("click", function () {
      defaultFile.click();
    });

    // File Upload
    defaultFile.addEventListener("change", (event) => {
      //  Format Selected File Text
      event.preventDefault();
      if (defaultFile.value) {
        customSpace.innerHTML =
          defaultFile.value.match(/[\/\\]([\w\d\s\.\-\(\)]+)$/)[1] + "🔥";
      } else {
        customSpace.innerHTML = "No File, Selected!😭";
      }

      // Image Preview
      const files = defaultFile.files[0]; //files[0] - For getting first file
      //   console.log(files);

      if (files) {
        // Showing Image and Hiding "Image Preview" Text
        preview_img.style.display = "block";
        preview_text.style.display = "none";
        //Read File
        const fileReader = new FileReader();

        fileReader.addEventListener("load", function () {
          // convert image to base64 encoded string
          preview_img.setAttribute("src", this.result);
          console.log(this.result);
        });
        fileReader.readAsDataURL(files);
      }
    });
}

const createForm = () => {
  currentTab = 0;

  const prevBtn = document.getElementById('prevBtn');
  const nextBtn = document.getElementById('nextBtn');
  const initialArrow = document.getElementById('initialArrow');
  const inputFile = document.getElementById("artwork_photo");


  if (inputFile) {
    inputFile.addEventListener('change', (event) => {
      console.log("Here!");
      nextPrev(1)
    });
  }

  if (prevBtn && nextBtn) {
    prevBtn.addEventListener('click', (event) => {
      event.preventDefault();
      nextPrev(-1)
    });
    nextBtn.addEventListener('click', (event) => {
      event.preventDefault();
      nextPrev(1)
    });

    showTab(currentTab);


    fileUpload()



  }
}

export { createForm };
