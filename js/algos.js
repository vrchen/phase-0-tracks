// Module 7.3

// Release 0: Find the Longest Phrase

// declare function and an argument that is an array
function longestPhrase(arrayOfPhrases){

	// store the first phrase
	var longest = arrayOfPhrases[0]

	// iterate through each phrase in the array
	for (i = 1; i < arrayOfPhrases.length; i++) {

		// if the current phrase length is longer than the stored phrase
		if (longest.length < arrayOfPhrases[i].length) {

			// then replace the stored phrase to the current phrase
			longest = arrayOfPhrases[i];
		}
		// otherwise do nothing
	}
	// return the stored phrase
	return longest;
}

// Release 1: Find a Key-Value Match

// declare function and two arguments
function keyValueMatch(object1, object2) {

	// iterate through the first array
	for (var key in object1){

		// check that the key is an actual property of an object
		if (object1.hasOwnProperty(key)){

			// see if the current key-value pair exists in the second array
			if (object1[key] == object2[key]){

				// if yes, then return true
				return true;
			}
		}
	}

	// otherwise, return false
	return false;
}

// Release 2: Generate Random Test Data

function randomWordArray(numWords) {

	// create an empty array for storing words later
	var wordArray = [];

	// create a string of possible characters to pick from for the random word
	var chars = "abcdefghijklmnopqrstuvwxyz";
	
	// for the inputted number of times
	for (idx1 = 1; idx1 <= numWords; idx1++) {
	  
		// generate a random length for the word (between 1 to 10)
		var wordLength = Math.floor((Math.random()*10)+1);

		// create an empty string for storing randomly generated letters
		var word = "";

		// for the number of times corresponding to the length of word
		for (idx2 = 1; idx2 <= wordLength; idx2++){

			// concatenate a random character from the possible characters
			word += chars.charAt(Math.floor(Math.random()*chars.length));
		}

		// push the random word into our array
		wordArray.push(word);
	}

	// return the resulting array
	return wordArray;
}

// test randomWordArray
console.log("-----------");
console.log("Test randomWordArray function:");
console.log(randomWordArray(5))

// driver code

// test longestPhrase
console.log("-----------");
console.log("Test longestPhrase function:");
var arrayOfPhrases = ["long phrase","longest phrase","longer phrase"];
console.log(longestPhrase(arrayOfPhrases));

// test keyValueMatch
console.log("-----------");
console.log("Test keyValueMatch function:");
var object1 = {name: "Steven", age: 54};
var object2 = {name: "Tamir", age: 54};
console.log(keyValueMatch(object1, object2));

console.log("-----------");
console.log("Test keyValueMatch function:");
var object1 = {animal: "Dog", legs: 4};
var object2 = {animal: "Dog", legs: 3};
console.log(keyValueMatch(object1, object2));

// test randomWordArray
console.log("-----------");
console.log("Test randomWordArray function:");
console.log(randomWordArray(5))

console.log("-----------");
console.log("Test randomWordArray function:");
var newWordArray = randomWordArray(10);
console.log(newWordArray);
console.log(longestPhrase(newWordArray));