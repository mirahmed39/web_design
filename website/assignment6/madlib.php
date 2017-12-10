<!DOCTYPE html>
<head>
<title>Madlibs</title>
</head>
<body>
<nav>
	<a href='madlib.html'>Mad Libs Application</a>
	<a href='calculator.html'>Calculator Application</a>
	<a href='online.php'>Online Store Form</a>
	<a href='quiz.html'>Quiz Application</a>
</nav>
<h1>Welcome to Madlibs</h1>
<?php
if(isset($_POST['submit'])) {
	print('<p>The madlibs output is:</p>');
	$adj1 = $_POST['adj1'];	
	$adj2 = $_POST['adj2'];	
	$noun1 = $_POST['noun1'];	
	$verb1 = $_POST['verb1'];
	$noun2 = $_POST['noun2'];	
	$number = $_POST['number'];	
	$verb2 = $_POST['verb2'];	
	$noun3 = $_POST['noun3'];	

	print("<p>The $adj1  $noun1 $verb1
		the $adj2 house.</p>");
	 print("<p>There she saw a $noun2 $verb2 with $number $noun3</p>");
} else 
	print("<p>Please fill out the form and click submit</p>");
?>
</body>
</html>
