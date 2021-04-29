<!DOCTYPE html>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<html>
<head>
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta http-equiv="Pragma" content="no-cache">
<meta http-equiv="Cache-Control" content="no-cache">
<meta http-equiv="Expires" content="sat, 01 Dec 2001 00:00:00 GMT">
<title>Hospital Management System</title>
<link href="static/css/bootstrap.min.css" rel="stylesheet">
<link href="static/css/style.css" rel="stylesheet">
<style>
body {
    
    background-color:#87CEEB;
    width: 100%;
    height:100%;
    position:absolute;
    zindex:0;
    left:0;
    top:0;
    width:100%;
    height:100%
}
</style>
</head>
<body>
	<div role="navigation">
		<div class="navbar navbar-inverse">
			<a href="/" class="navbar-brand">Hospital Management System</a>
			<div class="navbar-collapse collapse">
				<ul class="nav navbar-nav">
					<li><a href="/loginAdmin">Admin Login</a></li>
				</ul>
			</div>
		</div>
	</div>
	<div class="container" id="homediv">
				<div class="jumbotron text-center">
					<h1>Welcome to Hospital Management System</h1>
				</div>
			</div>
	<c:choose>
	<c:when test="${mode=='MODE_LOGIN' }">
			<div class="container text-center">
				<h3>Admin Login</h3>
				<hr>
				<form class="form-horizontal" method="POST" action="/login-admin">
					<c:if test="${not empty error }">
						<div class="alert alert-danger">
							<c:out value="${error }"></c:out>
						</div>
					</c:if>
					<div class="form-group">
						<label class="control-label col-md-3">Name</label>
						<div class="col-md-7">
							<input type="text" class="form-control" name="name"
								value="${admin.name }" />
						</div>
					</div>
					<div class="form-group">
						<label class="control-label col-md-3">Password</label>
						<div class="col-md-7">
							<input type="password" class="form-control" name="password"
								value="${admin.password }" />
						</div>
					</div>
					<div class="form-group ">
						<input type="submit" class="btn btn-primary" value="Login" />
					</div>
				</form>
			</div>
		</c:when>
	</c:choose>	

</body>
</html>