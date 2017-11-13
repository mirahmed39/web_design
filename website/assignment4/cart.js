function total() {
	//getting necessary info to calculate the subtotal for each type of concert.
	const siaQuantity = document.getElementById("quantity-sia").value;
	const duaQuantity = document.getElementById("quantity-dua").value;
	const siaTicketPrice = document.getElementById("price-sia").value;
	const duaTicketPrice = document.getElementById("price-dua").value;

	const siaSubtotal = document.getElementById("subtotal-sia");
	const duaSubtotal = document.getElementById("subtotal-dua");

	// calculate the subtotal based on quantity
	const siaTotalPrice = siaTicketPrice * siaQuantity;
	const duaTotalPrice = duaTicketPrice * duaQuantity;

	siaSubtotal.value = siaTotalPrice;
	duaSubtotal.value = duaTotalPrice;

	//changing the grandtotal based on the delivery method
	const shippingCharge = 28.50;
	if(document.getElementById("ship").checked)
		document.getElementById("grand-total").value = siaTotalPrice + duaTotalPrice + shippingCharge;
	else
		document.getElementById("grand-total").value = siaTotalPrice + duaTotalPrice;
}

function receipt() {
	let output = "<b>Here is a copy of your receipt</b><br>";
	const date = new Date() + "";
	output += date.substring(0,15) + "<br>"
	const outputElement = document.getElementById("receipt-output");
	const customerForm = document.getElementById("customer-form");
	const elementsInCustomerForm = customerForm.elements;
	// get the length of all the form elements excluding submit, reset button and grand total
	const numberOfInputs = customerForm.length - 3;
	console.log("total number of inputs:", numberOfInputs);
	/*
	validation: make sure all the inputs are being populated
	validate the zip(five digits and type number), email is
	in correct format.
	*/
	for (let i = 0; i < numberOfInputs; i++) {
		//console.log(customerForm.elements[i].name);
		if(elementsInCustomerForm[i].value === "" || elementsInCustomerForm[i].value === null) {
			displayError(elementsInCustomerForm[i]);
			return false;
			break;
		}
		else if (elementsInCustomerForm[i].value !== "" || elementsInCustomerForm[i].value !== null){
			if(elementsInCustomerForm[i].name === "email") {
				const result = validateEmail(elementsInCustomerForm[i].value);
				if(result === null) {
					displayError(elementsInCustomerForm[i]);
					return false;
					break;
				}
			}
			else if(elementsInCustomerForm[i].name === "zip") {
				const result = validateZipCode(elementsInCustomerForm[i].value);
				if(result === null){
					displayError(elementsInCustomerForm[i]);
					return false;
					break;
				}
			}
			else if (elementsInCustomerForm[i].name === "card-type" && elementsInCustomerForm[i].value === 'default') {
				alert("You must choose a credit card type from the list");
				return false;
				break;
			}
			else {
				output += ""+ elementsInCustomerForm[i].name + ": " + elementsInCustomerForm[i].value + "<br>";
			}
		}
	}
	output+= "Your Grand Total is $" + document.getElementById("grand-total").value;
	outputElement.className += " jumbotron";
	outputElement.innerHTML = output;
	return false;
}

function validateEmail(email) {
	const regExp = /([a-z0-9_.]+)([@])([a-z]+)([.])([a-z])+/i;
	return email.match(regExp);
}

function validateZipCode(zip) {
	const regExp = /\b(\d{5})\b/;
	return zip.match(regExp);
}

function displayError(element) {
	alert(element.name + " has to be filled in and valid");
	element.focus();
	element.style.backgroundColor = "#ffcccc";
}
//#dcb2db;