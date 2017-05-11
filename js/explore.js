// declare the function and arguments needed
function reverse(word) {
	
	// create a empty string for storing the resulting reversed word
	var result = "";

	// iterate through each letter starting from the last letter
	for (var i = word.length-1; i >= 0; i--) {

		// add the letter to the new string
		result += word[i];
	}
	// return the resulting reversed word
	return result;
}

// driver code
var word = "abc";
var reversed_word = reverse(word);

if (1 == 1) {
	console.log(reversed_word);
}