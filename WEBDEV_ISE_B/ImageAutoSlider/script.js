let slides = document.querySelectorAll('.slide');
let current=0;//Index of the visible image(0=first image)
let timer;//To store the timer for auto sliding
function showSlide(index){
    slides[current].classList.remove('active');//Hide the current image
    current=(index+slides.length)%slides.length;//Calculate the new index (wrap around)
    slides[current].classList.add('active');//Show the new image
}
function nextSlide(){
    showSlide(current+1);//Show the next image
    resetTimer();//Reset the timer for auto sliding
}
function prevSlide(){
    showSlide(current-1);//Show the previous image
    resetTimer();//Reset the timer for auto sliding
}
function startAuto(){
    timer=setInterval(nextSlide,3000);
}
function stopAuto(){
    clearInterval(timer);
}
function resetTimer(){
    stopAuto();
    startAuto();
}
const sliderBox=document.querySelector(".slider");
sliderBox.addEventListener("mouseenter",stopAuto);
sliderBox.addEventListener("mouseleave",startAuto);













