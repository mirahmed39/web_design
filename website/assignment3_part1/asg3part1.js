const prizeArray = [["Windows Surface", "$1500"], ["Macbook Pro", "$1350"], ["Samsung LED Television", "$900"],
						["Trip to The Bahamas", "$2000"], ["Amazon Gift Card", "$100"]]; // a multidimensional array
// this automatically shows all the prizes once the page loads.
let prizeList = document.getElementById("allPrizes");
let prizeListOutput = "";
for(let i = 0; i < prizeArray.length; i++) {
		for (let j = 0; j < prizeArray[i].length; j++)
			prizeListOutput += prizeArray[i][j] + ": ";
		prizeListOutput += '<br>';
}
console.log(prizeListOutput);
prizeList.innerHTML = prizeListOutput;

// chooses a radom prize from prizeArray and shows it in the browser once
// a button is clicked
function randArray() {
	let winPrize = document.getElementById("prize");
	const totalElements = prizeArray.length;
	randomPrizeIndex = Math.floor(Math.random() * totalElements);
	winPrize.innerHTML = "You won " + prizeArray[randomPrizeIndex][0]; // the 0th element is the prize name.
}

// birhtday application function
function bdayCalc() {
    let output = "";
    const target = document.getElementById('output');
    const firstFullName = document.getElementById('first-full-name').value;
    const firstDateObj = new Date(document.getElementById('first-bday').value);
    const secondFullName = document.getElementById('second-full-name').value;
    const secondDateObj = new Date(document.getElementById('second-bday').value);

    output += firstFullName + " was born in " + (firstDateObj.getMonth() + 1) + '/' + (firstDateObj.getDate() + 1) + '/' + firstDateObj.getFullYear() + '<br>';
    output += secondFullName + " was born in " + (secondDateObj.getMonth() + 1) + '/' + (secondDateObj.getDate() + 1) + '/' + secondDateObj.getFullYear() + '<br>';
    if (firstDateObj > secondDateObj)
        output += secondFullName + " is older than " + firstFullName;
    else if(secondDateObj > firstDateObj)
        output += firstFullName + " is older than " + secondFullName;
    else
        output += firstFullName + " and " + secondFullName + " are the same age!";
    target.innerHTML = output;
}
