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
<div class="jumbotron bg-primary p-4 rounded-0 mb-0 text-white border-bottom border-white">
	<%
	if(session.getAttribute("userid")!=null ) { 
	%>
	<h4 class="float-right m-2">Welcome ! <%= session.getAttribute("name") %></h4>
	<% } %>
	<h2>Welcome to Training System</h2>
</div>
<nav class="navbar navbar-expand-lg navbar-dark bg-primary">
  <a class="navbar-brand" href="/">Training System</a>
  <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarNav" aria-controls="navbarNav" aria-expanded="false" aria-label="Toggle navigation">
    <span class="navbar-toggler-icon"></span>
  </button>
  <div class="collapse navbar-collapse" id="navbarNav">
    <ul class="navbar-nav">
      <li class="nav-item active">
        <a class="nav-link" href="/">Home</a>
      </li>
      <% if(session.getAttribute("userid")!=null) { %>
      <li class="nav-item">
        <a class="nav-link" href="/skillslist">List Skills</a>
      </li> 
      <li class="nav-item">
        <a class="nav-link" href="/elearning">E-Learning</a>
      </li>
      <li class="nav-item">
        <a class="nav-link" href="/assessments">Assessment</a>
      </li> 
      <li class="nav-item">
        <a class="nav-link" href="/logout">Logout</a>
      </li>           
      <% }  else { %>
      <li class="nav-item">
        <a class="nav-link" href="/login">Login</a>
      </li>
      <li class="nav-item">
        <a class="nav-link" href="/register">Registration</a>
      </li>
      <% } %>
      
    </ul>
  </div>
</nav>

