<!DOCTYPE html>
<html>
<head>
	<title>Quiz Application</title>
</head>
<body>
<h1>Here is the result form the quiz.</h1>

<?php
if(isset($_POST['submit'])) {
	$answerKey = array('July', 'Abraham Lincoln', 'Dwight Eisenhower');
	$answer1 = $_POST['question1'];
	$answer2 = $_POST['question2'];
	$answer3 = $_POST['question3'];
	$correctAnswers = 0;
	if($answer1 == $answerKey[0]) {
		print('<p>Question 1:</p>')
		print('<p>In what month out Independence is celebrated?</p>')
		print('<p>you answered $answer1</p>')
		print('<p>You got it right!!!</p>');
		$correctAnswers += 1;
	} else {
		print('<p>Question 1:</p>')
		print('<p>In what month out Independence is celebrated?</p>')
		print('<p>you answered $answer1</p>')
		print('<p>Your answer is incorrect.</p>');
		print('<p>The correct answer is $answerKey[0]</p>');
	}

	if($answer2 == $answerKey[1]) {
		print('<p>Question 2:</p>')
		print('<p>Which president has been assasinated?</p>')
		print('<p>you answered $answer2</p>')
		print('<p>You got it right!!!</p>');
		$correctAnswers += 1;
	} else {
		print('<p>Question 2:</p>')
		print('<p>Which president has been assasinated?</p>')
		print('<p>you answered $answer2</p>')
		print('<p>Your answer is incorrect</p>');
		print('<p>The correct answer is $answerKey[1]</p>');
	}
	if($answer3 == $answerKey[2]) {
		print('<p>Question 3:</p>')
		print('<p>Which president was a Militray General?</p>')
		print('<p>you answered $answer3</p>')
		print('<p>You got it right!!!</p>');
		$correctAnswers += 1;
	} else {
		print('<p>Question 3:</p>')
		print('<p>Which president was a Militray General?</p>')
		print('<p>you answered $answer3</p>')
		print('<p>Your answer is incorrect</p>');
		print('<p>The correct answer is $answerKey[2]</p>
	}

	$score = ($correctAnswers / count($answerKey)) * 100;
	print('<p>Your score in this quiz is: $score</p>');
} else
	print('<p>Plese fill out the entire form then click the submit button.</p>');
?>
</body>
</html>