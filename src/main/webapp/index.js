var dropdownbars = document.querySelector(".dropdownbars")
var dropdowncontents= document.querySelector(".dropdowncontent")

dropdownbars.addEventListener("click", () => {
    dropdowncontents.style.display="block"
})

var closetag = document.querySelector(".closetag")

closetag.addEventListener("click", () => {
    dropdowncontents.style.display="none"
})

cardSlider = document.querySelector(".bookscontainer");

let clientX = null;
let grabbing = false;
let prevDistanceScrolled = null;
let distanceToScroll;

cardSlider.addEventListener("mousedown",(e) => {
  clientX = e.clientX;
  grabbing=true;
})

cardSlider.addEventListener("mouseup",() => {
  grabbing=false;
  prevDistanceScrolled += distanceToScroll;
})

cardSlider.addEventListener("mousemove",(e) => {
  if (grabbing) {
    let newClientX = e.clientX;
    distanceToScroll = newClientX - clientX;
    cardSlider.style.transform = `translateX(${distanceToScroll + prevDistanceScrolled}px)`
  }
})

var dealbooks = document.querySelector(".dealsbookitems")
var bookdesc = document.querySelector(".bookdealdesc")

dealbooks.addEventListener("mouseover", ()=> {
  bookdesc.style.visibility="visible"
})
dealbooks.addEventListener("mouseout", ()=> {
  bookdesc.style.visibility="hidden"
})

var preloader = document.querySelector("#preloader")
window.addEventListener("load", ()=> {  
    preloader.style.display="none";
})
AOS.init();