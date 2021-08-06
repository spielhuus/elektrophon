var Chart = require('chart.js');

document.addEventListener('DOMContentLoaded', () => {

  // Get all "navbar-burger" elements
  const $navbarBurgers = Array.prototype.slice.call(document.querySelectorAll('.navbar-burger'), 0);

  // Check if there are any navbar burgers
  if ($navbarBurgers.length > 0) {

    // Add a click event on each of them
    $navbarBurgers.forEach( el => {
      el.addEventListener('click', () => {

        // Get the target from the "data-target" attribute
        const target = el.dataset.target;
        const $target = document.getElementById(target);

        // Toggle the "is-active" class on both the "navbar-burger" and the "navbar-menu"
        el.classList.toggle('is-active');
        $target.classList.toggle('is-active');

      });
    });
  }
  
});


window.fft_freq = (n, d) => {
  console.log(d);
  var results = [];
  for(let i=0; i<n; i++ ) {
    results.push(i/2);
  }
  return results;
}

/* fft transform */
window.fft_transform = (input, size) => {
  const FFT = require('fft.js');
  const f = new FFT(input.length);

  const out = f.createComplexArray();
  let data = f.toComplexArray(input);
  f.transform(out, data);

  var result = [];
  for (let i = 0; i < size; i++) {
    result.push(Math.abs(out[i]));
  }
  
  return result;
}

/* the image modal script */
function openModal() {
  document.getElementById('myModal').style.display = "block";
}

function closeModal() {
  document.getElementById('myModal').style.display = "none";
}

var slideIndex = 1;
showSlides(slideIndex);

function plusSlides(n) {
  showSlides(slideIndex += n);
}

function currentSlide(n) {
  showSlides(slideIndex = n);
}

function showSlides(n) {
  var i;
  var slides = document.getElementsByClassName("item-slide");
  var captionText = document.getElementById("caption");
  if (n > slides.length) {slideIndex = 1}
  if (n < 1) {slideIndex = slides.length}
  for (i = 0; i < slides.length; i++) {
      slides[i].style.display = "none";
  }
  slides[slideIndex-1].style.display = "block";
}