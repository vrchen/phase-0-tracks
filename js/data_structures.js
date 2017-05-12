// Module 7.2
// Paired with Stephanie Tong

// Release 0
var horseColors = ["blue","red","yellow","green"];
var horseNames = ["Ed","Bob","Joe","Jane"];

console.log(horseColors);
console.log(horseNames);

horseColors.push("purple");
horseNames.push("Susan");

console.log(horseColors);
console.log(horseNames);

// Release 1
var horseProfiles = {}
for (i = 0; i < horseColors.length; i++) {
	horseProfiles[horseNames[i]] = horseColors[i];
}

console.log(horseProfiles);

// Release 2
function Car(type, color, isFast, numWheels) {

	// properties
	this.type = type;
	this.color = color;
	this.isFast = isFast;
	this.numWheels = numWheels;

	// function
	this.accelerate = function() { console.log("The car accelerated!")};
}

var newCar = new Car("roadster", "red", true, 4);
console.log("---------");
console.log(newCar);
console.log("---------");

newCar.accelerate();
newCar.type = "minivan";
newCar.color = "green";
newCar.isFast = false;

console.log("---------");
console.log(newCar);
console.log("---------");

var newCar2 = new Car("truck", "black", false, 18)
console.log("---------");
console.log(newCar2);
console.log("---------");

