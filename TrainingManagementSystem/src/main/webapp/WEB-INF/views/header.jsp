<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Training Management System</title>
<link rel="stylesheet" href="/css/bootstrap.css">
<link rel="stylesheet" href="/css/training.css">
<script src="/js/training.js"></script>
</head>
<body class="home">
<div class="jumbotron bg-dark rounded-0 mb-0 text-white border-bottom border-white">
	<%
	if(session.getAttribute("userid")!=null ) { 
	%>
	<h4 class="float-right m-2">Welcome ! <%= session.getAttribute("name") %></h4>
	<% } %>
	<h2>Welcome to Training System</h2>
</div>
<nav class="navbar navbar-expand-lg navbar-dark bg-dark">
  <a class="navbar-brand" href="/">Administrator</a>
  <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarNav" aria-controls="navbarNav" aria-expanded="false" aria-label="Toggle navigation">
    <span class="navbar-toggler-icon"></span>
  </button>
  <div class="collapse navbar-collapse" id="navbarNav">
    <ul class="navbar-nav">
      <li class="nav-item active">
        <a class="nav-link" href="/admin">Home</a>
      </li>
      <li class="nav-item">
        <a class="nav-link" href="/employees">Employees</a>
      </li>
      <li class="nav-item">
        <a class="nav-link" href="/skills">Skills</a>
      </li>
      <li class="nav-item">
        <a class="nav-link" href="/courses">Courses</a>
      </li>      
      <li class="nav-item">
        <a class="nav-link" href="/logout">Logout</a>
      </li>           
    </ul>
  </div>
</nav>

