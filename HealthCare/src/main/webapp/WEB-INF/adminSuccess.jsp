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
    background-color:#1E90FF;
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
					<li><a href="/show-doctors">All Doctors</a></li>
					<li><a href="/show-practitioners">All Practitioners</a></li>
					<li><a href="/show-patients">All Patients</a></li>
				</ul>
			</div>
		</div>
	</div>
	<c:choose>
		<c:when test="${mode=='ALL_PRACTITIONERS' }">
			<div class="container text-center" id="tasksDiv">
				<h3>All Practitioners</h3>
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
		<c:when test="${mode=='ALL_DOCTORS' }">
			<div class="container text-center" id="tasksDiv">
				<h3>All Doctors</h3>
				<hr>
				<div class="table-responsive">
					<table class="table table-striped table-bordered" border="1">
						<thead>
							<tr>
								<th>Id</th>
								<th>Name</th>
								<th>Specialist</th>
								<th>Experience</th>
								<th>Address</th>
								<th>Email Id</th>
								<th>Contact Number</th>
								<th colspan="2">Action</th>
							</tr>
						</thead>
						<tbody>
							<c:forEach var="doctor" items="${doctors}">
								<tr>
									<td>${doctor.id}</td>
									<td>${doctor.name}</td>
									<td>${doctor.specialist}</td>
									<td>${doctor.experience}</td>
									<td>${doctor.address}</td>
									<td>${doctor.emailId}</td>
									<td>${doctor.contactNumber}</td>
									<td><a href="/delete-doctor?id=${doctor.id }">Delete<span
											class="glyphicon glyphicon-trash"></span></a></td>
									<td><a href="/edit-doctor?id=${doctor.id }">Edit<span
											class="glyphicon glyphicon-pencil"></span></a></td>
								</tr>
							</c:forEach>
						</tbody>
					</table>
				</div>
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
	</c:choose>	
</body>
</html>