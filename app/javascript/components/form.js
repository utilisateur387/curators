import Cropper from 'cropperjs';

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
    document.getElementById("nextBtn").style.removeProperty('display');
  }
  if (n == (tab.length - 1)) {
    // document.getElementById("nextBtn").innerHTML = "Submit";
    document.getElementById("nextBtn").style.display = 'none';
    document.getElementById('submit-btn').style.removeProperty('display');
  } else {
    document.getElementById('submit-btn').style.display = 'none';
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
  let cropper = "";
    // Grabbing Elements and Storing in Variables
    const defaultFile = document.getElementById("artwork_photo");
    const customBtn = document.getElementById("customBtn");
    const customSpace = document.getElementById("custom-space");
    customBtn.addEventListener("click", function () {
      defaultFile.click();
    });

    // File Upload
    defaultFile.addEventListener("change", (event) => {

      // Image Preview
      const files = defaultFile.files[0]; //files[0] - For getting first file
      //   console.log(files);

      if (files) {
        // Showing Image and Hiding "Image Preview" Text
        preview_img.style.display = "block";
        preview_text.style.display = "none";
        cropping_img.style.display = "block";
        cropping_text.style.display = "none";
        //Read File
        const fileReader = new FileReader();

        fileReader.addEventListener("load", function () {
          // convert image to base64 encoded string
          preview_img.setAttribute("src", this.result);
          cropping_img.setAttribute("src", this.result);
          // console.log(this.result);
          cropper = new Cropper(cropping_img, {
            viewMode: 1,
            autoCropArea: 1,
            cropBoxMovable: false
          });
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

  const save = document.querySelector('.save');
  const img_w = document.querySelector('.img-w');
  const cropped = document.querySelector('.cropped');
  const cropper = '';
  save.addEventListener('click',(e)=>{
    e.preventDefault();
    // get result to data uri
    let imgSrc = cropper.getCroppedCanvas({
      width: img_w.value // input value
    }).toDataURL();
    // remove hide class of img
    cropped.classList.remove('hide');
    img_result.classList.remove('hide');
    // show image cropped
    cropped.src = imgSrc;
  });





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
