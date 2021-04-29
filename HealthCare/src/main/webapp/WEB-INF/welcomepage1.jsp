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
<title>Hotel Management System</title>
<link href="static/css/bootstrap.min.css" rel="stylesheet">
<link href="static/css/style.css" rel="stylesheet">
<style>
body {
    background-color:#DA70D6;
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
					<li><a href="/login1">Practitioner Login</a></li>
					<li><a href="/register1">New Practitioner Registration</a></li>
				</ul>
			</div>
		</div>
	</div>
	<c:choose>
		<c:when test="${mode=='MODE_HOME'}">
			<div class="container" id="homediv">
				<div class="jumbotron text-center">
					<h1>Welcome to Hospital Management System</h1>
				</div>
			</div>
		</c:when>
		<c:when test="${mode=='MODE_REGISTER' }">
			<div class="container text-center">
				<h3>New Registration</h3>
				<hr>
				<form class="form-horizontal" method="POST" action="save-practitioner">
					<input type="hidden" name="id" value="${practitioner.id}" />
					<div class="form-group">
						<label class="control-label col-md-3">Name</label>
						<div class="col-md-7">
							<input type="text" class="form-control" name="name"
								value="${practitioner.name}" required="required"/>
						</div>
					</div>
					<div class="form-group">
						<label class="control-label col-md-3">Password</label>
						<div class="col-md-7">
							<input type="password" class="form-control" name="password"
								value="${practitioner.password }" required/>
						</div>
					</div>
					<div class="form-group">
						<label class="control-label col-md-3">Specialist</label>
						<div class="col-md-7">
							<input type="text" class="form-control" name="specialist"
								value="${practitioner.specialist}" required/>
						</div>
					</div>
					<div class="form-group">
						<label class="control-label col-md-3">Address</label>
						<div class="col-md-7">
							<input type="text" class="form-control" name="address"
								value="${practitioner.address}" required/>
						</div>
					</div>
					<div class="form-group">
						<label class="control-label col-md-3">Email Id</label>
						<div class="col-md-7">
							<input type="text" class="form-control" name="emailId"
								value="${practitioner.emailId}" required/>
						</div>
					</div>
					<div class="form-group">
						<label class="control-label col-md-3">Contact Number</label>
						<div class="col-md-7">
							<input type="text" class="form-control" name="contactNumber"
								value="${practitioner.contactNumber}" required/>
						</div>
					</div>
					<div class="form-group ">
						<input type="submit" class="btn btn-primary" value="Register" />
					</div>
				</form>
			</div>
		</c:when>
	
	
	<c:when test="${mode=='ALL_PRACTITIONERS' }">
			<div class="container text-center" id="tasksDiv">
				<h3>All Practitioner</h3>
				<hr>
				<div class="table-responsive">
					<table class="table table-striped table-bordered" border="1">
						<thead>
							<tr>
								<th>Id</th>
								<th>Name</th>
								<th>Specialist</th>
								<th>Address</th>
								<th>Email Id</th>
								<th>Contact Number</th>
								<th colspan="2">Action</th>
							</tr>
						</thead>
						<tbody>
							<c:forEach var="practitioner" items="${practitioners}">
								<tr>
									<td>${practitioner.id}</td>
									<td>${practitioner.name}</td>
									<td>${practitioner.specialist}</td>
									<td>${practitioner.address}</td>
									<td>${practitioner.emailId}</td>
									<td>${practitioner.contactNumber}</td>
									<td><a href="/delete-practitioner?id=${practitioner.id }">Delete<span
											class="glyphicon glyphicon-trash"></span></a></td>
									<td><a href="/edit-practitioner?id=${practitioner.id }">Edit<span
											class="glyphicon glyphicon-pencil"></span></a></td>
								</tr>
							</c:forEach>
						</tbody>
					</table>
				</div>
			</div>
		</c:when>
		
		<c:when test="${mode=='MODE_UPDATE'}">
			<div class="container text-center">
				<h3>Update Practitioner</h3>
				<hr>
				<form class="form-horizontal" method="POST" action="save-practitioner1">
					<input type="hidden" name="id" value="${practitioner.id}" />
					<div class="form-group">
						<label class="control-label col-md-3">Name</label>
						<div class="col-md-7">
							<input type="text" class="form-control" name="name"
								value="${practitioner.name}" />
						</div>
					</div>
					<div class="form-group">
						<label class="control-label col-md-3">Password</label>
						<div class="col-md-7">
							<input type="text" class="form-control" name="password"
								value="${practitioner.password}" />
						</div>
					</div>
					<div class="form-group">
						<label class="control-label col-md-3">Specialist</label>
						<div class="col-md-7">
							<input type="text" class="form-control" name="specialist"
								value="${practitioner.specialist}" />
						</div>
					</div>
					<div class="form-group">
						<label class="control-label col-md-3">Address</label>
						<div class="col-md-7">
							<input type="text" class="form-control" name="address"
								value="${practitioner.address}" />
						</div>
					</div>
					<div class="form-group">
						<label class="control-label col-md-3">Email Id</label>
						<div class="col-md-7">
							<input type="text" class="form-control" name="emailId"
								value="${practitioner.emailId}" />
						</div>
					</div>
					<div class="form-group">
						<label class="control-label col-md-3">Contact Number</label>
						<div class="col-md-7">
							<input type="text" class="form-control" name="contactNumber"
								value="${practitioner.contactNumber}" />
						</div>
					</div>
					<div class="form-group ">
						<input type="submit" class="btn btn-primary" value="Update" />
					</div>
				</form>
			</div>
		</c:when>
		<c:when test="${mode=='MODE_LOGIN' }">
			<div class="container text-center">
				<h3>Practitioner Login</h3>
				<hr>
				<form class="form-horizontal" method="POST" action="/login-practitioner">
					<c:if test="${not empty error }">
						<div class="alert alert-danger">
							<c:out value="${error }"></c:out>
						</div>
					</c:if>
					<div class="form-group">
						<label class="control-label col-md-3">Name</label>
						<div class="col-md-7">
							<input type="text" class="form-control" name="name"
								value="${practitioner.name }" />
						</div>
					</div>
					<div class="form-group">
						<label class="control-label col-md-3">Password</label>
						<div class="col-md-7">
							<input type="password" class="form-control" name="password"
								value="${practitioner.password }" />
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