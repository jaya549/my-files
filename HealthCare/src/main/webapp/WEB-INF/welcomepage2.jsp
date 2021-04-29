<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Patient</title>
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
					<li><a href="/login2">Patient Login</a></li>
					<li><a href="/register2">New Patient Registration</a></li>
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
				<h3>New Patient Registration</h3>
				<hr>
				<form class="form-horizontal" method="POST" action="save-patient">
					<input type="hidden" name="id" value="${patient.id}" />
					<div class="form-group">
						<label class="control-label col-md-3">Name</label>
						<div class="col-md-7">
							<input type="text" class="form-control" name="name"
								value="${patient.name }" required="required"/>
						</div>
					</div>
					<div class="form-group">
						<label class="control-label col-md-3">Password</label>
						<div class="col-md-7">
							<input type="password" class="form-control" name="password"
								value="${patient.password }" required/>
						</div>
					</div>
					<div class="form-group">
						<label class="control-label col-md-3">Address</label>
						<div class="col-md-7">
							<input type="text" class="form-control" name="address"
								value="${patient.address}" required/>
						</div>
					</div>
					<div class="form-group">
						<label class="control-label col-md-3">Gender</label>
						<div class="col-md-7">
							<input type="text" class="form-control" name="gender"
								value="${patient.gender}" required/>
						</div>
					</div>
					<div class="form-group">
						<label class="control-label col-md-3">Disease</label>
						<div class="col-md-7">
							<input type="text" class="form-control" name="disease"
								value="${patient.gender}" required/>
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
	
	
	<c:when test="${mode=='ALL_PATIENTS' }">
			<div class="container text-center" id="tasksDiv">
				<h3>All Patients</h3>
				<hr>
				<div class="table-responsive">
					<table class="table table-striped table-bordered" border="1">
						<thead>
							<tr>
								<th>Id</th>
								<th>Name</th>
								<th>Address</th>
								<th>Gender</th>
								<th>Disease</th>
								<th>Email Id</th>
								<th>Contact Number</th>
								<th colspan="2">Action</th>
							</tr>
						</thead>
						<tbody>
							<c:forEach var="patient" items="${patients}">
								<tr>
									<td>${patient.id}</td>
									<td>${patient.name}</td>
									<td>${patient.address}</td>
									<td>${patient.gender}</td>
									<td>${patient.disease}</td>
									<td>${patient.emailId}</td>
									<td>${patient.contactNumber}</td>
									<td><a href="/delete-patient?id=${patient.id }">Delete<span
											class="glyphicon glyphicon-trash"></span></a></td>
									<td><a href="/edit-patient?id=${patient.id }">Edit<span
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
				<h3>Update Patient</h3>
				<hr>
				<form class="form-horizontal" method="POST" action="save-patient1">
					<input type="hidden" name="id" value="${patient.id}" />
					<div class="form-group">
						<label class="control-label col-md-3">Name</label>
						<div class="col-md-7">
							<input type="text" class="form-control" name="name"
								value="${patient.name}" />
						</div>
					</div>
					<div class="form-group">
						<label class="control-label col-md-3">Password</label>
						<div class="col-md-7">
							<input type="text" class="form-control" name="password"
								value="${patient.password}" />
						</div>
					</div>
					<div class="form-group">
						<label class="control-label col-md-3">Address</label>
						<div class="col-md-7">
							<input type="text" class="form-control" name="address"
								value="${patient.address}" />
						</div>
					</div>
					<div class="form-group">
						<label class="control-label col-md-3">Gender</label>
						<div class="col-md-7">
							<input type="text" class="form-control" name="gender"
								value="${patient.address}" />
						</div>
					</div>
					<div class="form-group">
						<label class="control-label col-md-3">Email Id</label>
						<div class="col-md-7">
							<input type="text" class="form-control" name="emailId"
								value="${patient.emailId}" />
						</div>
					</div>
					<div class="form-group">
						<label class="control-label col-md-3">Contact Number</label>
						<div class="col-md-7">
							<input type="text" class="form-control" name="contactNumber"
								value="${patient.contactNumber}" />
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
				<h3>Patient Login</h3>
				<hr>
				<form class="form-horizontal" method="POST" action="/login-patient">
					<c:if test="${not empty error }">
						<div class="alert alert-danger">
							<c:out value="${error }"></c:out>
						</div>
					</c:if>
					<div class="form-group">
						<label class="control-label col-md-3">Name</label>
						<div class="col-md-7">
							<input type="text" class="form-control" name="name"
								value="${patient.name }" />
						</div>
					</div>
					<div class="form-group">
						<label class="control-label col-md-3">Password</label>
						<div class="col-md-7">
							<input type="password" class="form-control" name="password"
								value="${patient.password }" />
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