<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Exam Result</title>
<link rel="stylesheet" href="/css/bootstrap.css">
<link rel="stylesheet" href="/css/training.css">
</head>
<body>
	<div class="jumbotron">
		<h4>Exam Result</h4>
	</div>
	<div class="container text-center">
		<h4>Exam completed successfully</h4>
		<h5>Total Questions : ${total }</h5>
		<h5>Correct Answers : ${correct }</h5>
		<h5>Your result is ${result }</h5>
	</div>
</body>
</html>