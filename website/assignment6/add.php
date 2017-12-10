<!DOCTYPE html>
<head>
<title>Calculator</title>
</head>

<body>
<nav>
	<a href='madlib.html'>Mad Libs Application</a>
	<a href='calculator.html'>Calculator Application</a>
	<a href='online.php'>Online Store Form</a>
	<a href='quiz.html'>Quiz Application</a>
</nav>

<h1>Result from the calculator program</h1>
<?php
if(isset($_GET['submit'])) {
	$num1 = floatval($_GET['num1']);
	$num2 = floatval($_GET['num2']);
	$operator = $_GET['operation'];
	$result = 0;
	if($operator == '+')
		$result = $num1 + $num2;
	else if($operator == '-')
		$result = $num1 - $num2;
	else if($operator == '*')
		$result = $num1 * $num2;
	else if($operator == '/')
		$result = $num1 / $num2;
	else
		print("<p>Operator must be one these forms (+, -, * or /)<p>");
	print("<p>The first number is $num1</p>");
	print("<p>The second number is $num2</p>");
	print("<p>Operation you wanted to perform: $operator</p>");
	print("<p>The result is $result</p>");

} else
	print("<p>Please fill out the form and click calculate</p>");

?>
</body>
</html>
