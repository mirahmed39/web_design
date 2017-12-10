<!DOCTYPE html>
<html>
<head>
	<title>Online Store</title>
	<link rel='stylesheet' type='text/css' href='online.css'>
</head>
<body>
<nav>
	<a href='madlib.html'>Mad Libs Application</a>
	<a href='calculator.html'>Calculator Application</a>
	<a href='online.php'>Online Store Form</a>
	<a href='quiz.html'>Quiz Application</a>
</nav>

<form action="online.php" method="post">
	name:
	<input type="text" name="name"><br>
	email:
	<input type="email" name="email"><br>
	Select the item you want to buy.
	<select name="itemList">
  		<option value="mascara">Mascara (by Kim K) Price: $20</option>
  		<option value="lipstick">Lipstick (Kylie Jenner) Price: $35</option>
  	</select><br>
  	How many do you want to buy?
  	<input type="number" name="quantity"><br>

  	<input type="submit" name="submit">
  	<input type="reset" name="reset">
</form>
<?php
	$grandTotal = 0;
	$mascaraPrice = 20;
	$lipstickPrice = 35;
	if(isset($_POST['submit'])) {
		print("<hr>");
		$name = $_POST['name'];
		$email = $_POST['email'];
		$item = $_POST['itemList'];
		$quantity = $_POST['quantity'];
		if($item == 'mascara')
			$grandTotal = $mascaraPrice * $quantity;
		else if($item == 'lipstick')
			$grandTotal = $lipstickPrice * $quantity;
		print("<div id='receipt'>"); 
		print("<p>Thank you for shopping with us, $name</p>");
		print("<p>Here is a detail of your shopping today</p>");
		print("<p>Your email: $email</p>");
		print("<p>The item you bought: $item</p>");
		print("<p>Quantity: $quantity</p>");
		print("<p>Grand Total: $grandTotal</p>");
		print("<p>We'd love to have you back, Goobye!</p>");
		print("</div>");
	} else 
		print("<p>Plese fill out the entire form then click the submit button.</p>");
?>
</body>
</html>
