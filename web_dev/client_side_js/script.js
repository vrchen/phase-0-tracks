// test to see if the script is running/linked correctly
console.log("The script is running!");

// Release 1: change something in the DOM
var header = document.getElementById('header');

header.style.background = "pink";
header.style.border = "3px dotted red";
header.style.color = "black";
header.style.textAlign = "center";

// Release 2: add an Event Listener

// create a function for the event
function addRandomColorBorder(event){
	// show in console details around the event
	console.log("here's the event details:");
	console.log(event);

	//add border calling the randomBorder function I found online (see randomBorder.js)
	var color = randomColor();
	event.target.style.border = "10px solid " + color;
}

// find all images on the site
var photos = document.querySelectorAll('img');

// add event listener for each image
for (i = 0; i < photos.length; i++) {
	photos[i].addEventListener('mouseover', addRandomColorBorder);
}