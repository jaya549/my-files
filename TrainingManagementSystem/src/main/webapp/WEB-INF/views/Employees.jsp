<%@ taglib prefix="c" uri="http://java.sun.com/jstl/core_rt" %>
<jsp:include page="header.jsp"></jsp:include>
<div class="container">
	<h4 class="p-2 border-bottom border-success">Employees</h4>
	<table class="table table-sm table-dark">
		<thead>
			<tr>
				<th>Sr.No</th>
				<th>Full Name</th>
				<th>Mobile</th>
				<th>User Id</th>
				<th>Active</th>
				<th>Activate</th>
			</tr>
		</thead>
		<tbody>
		<c:forEach items="${list }" var="emp" varStatus="loop">
			<tr>
				<td class="text-center">${loop.index+1 }</td>
				<td>${emp.fname } ${emp.lname }</td>
				<td>${emp.phone }</td>
				<td>${emp.userid }</td>
				<td>${emp.isactive }</td>
				<td><a href="/activate/${emp.userid }" 
				onclick="return confirm('Are you sure to activate this user ?')"
				class="btn btn-primary btn-sm">Activate</a></td>
			</tr>
		</c:forEach>
		</tbody>
	</table>
</div>
<jsp:include page="cfooter.jsp"></jsp:include>