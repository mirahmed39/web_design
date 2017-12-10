<!DOCTYPE html>
<html>
<head>
	<title>Quiz Application</title>
	<link rel='stylesheet' type='text/css' href='quiz.css'>
</head>
<body>
<nav>
	<a href='madlib.html'>Mad Libs Application</a>
	<a href='calculator.html'>Calculator Application</a>
	<a href='online.php'>Online Store Form</a>
	<a href='quiz.html'>Quiz Application</a>
</nav>
<h1>Here is the result form the quiz.</h1>

<?php
if(isset($_POST['submit'])) {
	$answerKey = array('July', 'Abraham Lincoln', 'Dwight Eisenhower');
	$answer1 = $_POST['question1'];
	$answer2 = $_POST['question2'];
	$answer3 = $_POST['question3'];
	$correctAnswers = 0;
	if($answer1 == $answerKey[0]) {
		print("<p class='question'>Question 1:</p>");
		print("<p>In what month out Independence is celebrated?</p>");
		print("<p>you answered $answer1</p>");
		print("<p class='right'>You got it right!!!</p>");
		print('<hr>');
		$correctAnswers += 1;
	} else {
		print("<p class='question'>Question 1:</p>");
		print("<p>In what month out Independence is celebrated?</p>");
		print("<p>you answered $answer1</p>");
		print("<p class='wrong'>Your answer is incorrect.</p>");
		print("<p class='right-answer'>The correct answer is $answerKey[0]</p>");
		print('<hr>');
	}

	if($answer2 == $answerKey[1]) {
		print("<p class='question'>Question 2:</p>");
		print("<p>Which president has been assasinated?</p>");
		print("<p>you answered $answer2</p>");
		print("<p class='right'>You got it right!!!</p>");
		$correctAnswers += 1;
		print('<hr>');
	} else {
		print("<p class='question'>Question 2:</p>");
		print("<p>Which president has been assasinated?</p>");
		print("<p>you answered $answer2</p>");
		print("<p class='wrong'>Your answer is incorrect</p>");
		print("<p class='right-answer'>The correct answer is $answerKey[1]</p>");
		print('<hr>');
	}
	if($answer3 == $answerKey[2]) {
		print("<p class='question'>Question 3:</p>");
		print("<p>Which president was a Militray General?</p>");
		print("<p>you answered $answer3</p>");
		print("<p class='right'>You got it right!!!</p>");
		$correctAnswers += 1;
		print('<hr>');
	} else {
		print("<p class='question'>Question 3:</p>");
		print("<p>Which president was a Militray General?</p>");
		print("<p>you answered $answer3</p>");
		print("<p class='wrong'>Your answer is incorrect</p>");
		print("<p class='right-answer'>The correct answer is $answerKey[2]</p>");
		print('<hr>');
	}

	$score = ($correctAnswers / count($answerKey)) * 100;
	$score = round($score, 2);
	print("<p id='score'>Your score in this quiz is: $score%</p>");
} else
	print("<p>Please fill out the entire form then click the submit button.</p>");
?>
</body>
</html>
