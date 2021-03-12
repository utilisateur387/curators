var currentTab;

function showTab(n) {
  // This function will display the specified tab of the form ...
  let tab = document.getElementsByClassName("tab");
  tab[n].style.display = "block";
  // ... and fix the Previous/Next buttons:
  if (n == 0) {
    document.getElementById("prevBtn").style.display = "none";
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

const createForm = () => {
  currentTab = 0;

  const prevBtn = document.getElementById('prevBtn');
  const nextBtn = document.getElementById('nextBtn');

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
  }
}

export { createForm };