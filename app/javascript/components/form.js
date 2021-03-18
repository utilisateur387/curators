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
  var cropper;
  // Grabbing Elements and Storing in Variables
  const defaultFile       = document.getElementById("artwork_photo");
  const customBtn         = document.getElementById("customBtn");
  const customSpace       = document.getElementById("custom-space");
  const previewImg        = document.getElementById('preview_img');
  const previewText       = document.getElementById('preview_text');
  const croppingImg       = document.getElementById('cropping_img');
  const croppingText      = document.getElementById('cropping_text');
  const croppedImageInput = document.getElementById('cropped_image');


  customBtn.addEventListener("click", function () {
    defaultFile.click();
  });

  // READ FILE
  var fileReader = new FileReader();

  fileReader.addEventListener("load", function () {
    // convert image to base64 encoded string
    previewImg.setAttribute("src", this.result);
    croppingImg.setAttribute("src", this.result);

    cropper = new Cropper(croppingImg, {
      viewMode:       1,
      autoCropArea:   1,
      cropBoxMovable: false
    });
  });

  // File Upload
  defaultFile.addEventListener("change", (event) => {
    // Image Preview
    const files = defaultFile.files[0]; //files[0] - For getting first file
    // console.log(files);
    if (files) {
      // Showing Image and Hiding "Image Preview" Text
      previewImg.style.display   = "block";
      previewText.style.display  = "none";
      croppingImg.style.display  = "block";
      croppingText.style.display = "none";

      fileReader.readAsDataURL(files);
    }
  });


  const save = document.getElementById('nextBtn');
  save.addEventListener('click', (event) => {
    event.preventDefault();

    let imgSrc = cropper.getCroppedCanvas({ maxWidth: 1023, }).toDataURL();
    previewImg.setAttribute("src", imgSrc);
    croppedImageInput.setAttribute("value", imgSrc);
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

    fileUpload();

  }
}

export { createForm };
