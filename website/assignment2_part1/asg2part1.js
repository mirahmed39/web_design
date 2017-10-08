const prizeArray = [["Windows Surface", "$1500"], ["Macbook Pro", "$1350"], ["Samsung LED Television", "$900"],
						["Trip to The Bahamas", "$2000"], ["Amazon Gift Card", "$100"]];

// function for style application

function changeFiveStyles() {
	let fStyle = document.getElementById("fiveStyles");
	fStyle.innerHTML = "Hello there, I am here because you clicked on the button";
	fStyle.style.color = "red";
	fStyle.style.border = "3px solid green";
	fStyle.style.paddding = "5px";
	fStyle.style.fontSize = "1.5em";
	fStyle.style.fontFamily = "sans-serif";
}

function change() {
	let header = document.getElementById("changeStyle");
	header.style.backgroundColor = "purple";
	header.style.color = "white";
	header.style.fontSize = "2em";
	header.style.font = "italic";
	header.style.border = "5px solid black";
	header.style.padding = "10px";
}

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

// function for swap text application
function swapT() {
	let para1 = document.getElementById("p1");
	let para2 = document.getElementById("p2");
	const para1Content = para1.innerHTML;
	const para2Content = para2.innerHTML;
	para1.innerHTML = para2Content;
	para2.innerHTML = para1Content;
}

//function for swap image application
function swapI() {
	let img1 = document.getElementById("img1");
	let img2 = document.getElementById("img2");
	let imag1src = img1.src;
	let image2src = img2.src;
	img1.src = image2src;
	img2.src = imag1src;
}

// function for new Document Application
function newDoc() {
	//let img3 = document.getElementById("img3");
	let date = new Date().toString().slice(0,16);
	document.open();
	document.write("<h1>Cash Me Ousside Howbow Dah</h1>");
	document.write("<p>I took this picture on the back of my house in the beginning of 2017</p>");
	document.write('<img id="img3" style= "width:15em; height:15em; border-radius:50%;" src="images/image3.jpg" alt="howbowdah">');
	document.write('<br>')
	document.write("Image height: " + img3.style.height  + " Image Width: " + img3.style.width + '<br>');
	document.write(date + "<br>");

}

// function for converter application
function convert() {
	const inputMile = document.getElementById('mile').value;
	const textArea = document.getElementById('kilometers');
	const kiloOutput = inputMile * 1.60934;
	textArea.value = kiloOutput;
}