<%@ taglib prefix="c" uri="http://java.sun.com/jstl/core_rt" %>
<jsp:include page="header.jsp"></jsp:include>
<div class="container">
	<h4 class="p-2 border-bottom border-success">Skills</h4>
	<div class="row">
		<div class="col-sm-8">
			<table class="table table-bordered table-sm table-dark">
				<thead>
					<tr>
					<th>Skill ID</th>
					<th>Skill Name</th>
					<th>Edit</th>
					</tr>
				</thead>
				<tbody>
					<c:forEach items="${skills }" var="s">
						<tr>
							<td>${s.id }</td>
							<td>${s.skill }</td>
							<td><a href="/skills/${s.id }" class="btn btn-sm btn-primary">Edit</a></td>
						</tr>
					</c:forEach>
				</tbody>
			</table>
		</div>
		<div class="col-sm-4">
			<form method="post" action="/skills">
				<c:if test="${edit }">
					<input type="hidden" value="${ss.id }" name="id">
				</c:if>
				<div class="form-group">
					<label>Skill Name</label>
					<input type="text" name="skill" value="${ss.skill }" class="form-control form-control-sm">
				</div>
				
				<input type="submit" value="Save Skill" class="btn btn-primary btn-sm">
			</form>
		</div>
	</div>
</div>
<jsp:include page="cfooter.jsp"></jsp:include>