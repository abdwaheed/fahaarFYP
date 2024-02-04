var menuIcon = document.querySelector(".menu-icon");
var sidebar = document.querySelector(".sidebar");
var mainContainer = document.querySelector(".mianContainer");

menuIcon.onclick = function(){
    sidebar.classList.toggle("small-slidebar");
    mainContainer.classList.toggle("full-wide");
}