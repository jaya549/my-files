<%@ taglib prefix="c" uri="http://java.sun.com/jstl/core_rt" %>
<jsp:include page="header.jsp"></jsp:include>
<div class="container-fluid">
	<h4 class="p-2 border-bottom border-success">Courses</h4>
	<div class="row">
		<div class="col-sm-8">
			<table class="table table-bordered table-sm table-dark">
				<thead>
					<tr>
					<th>Course Code</th>
					<th>Description</th>
					<th>Skill</th>
					<th>Competency level</th>
					<th>Intended Audience</th>
					<th>Edit</th>
					<th>Questions</th>
					</tr>
				</thead>
				<tbody>
					<c:forEach items="${courses }" var="c">
						<tr>
							<td>${c.ccode }</td>
							<td>${c.description }</td>							
							<td>${c.skill.skill }</td>
							<td>${c.competency }</td>
							<td>${c.audience }</td>
							<td><a href="/courses/${c.ccode }" class="btn btn-sm btn-primary">Edit</a></td>
							<td><a href="/questions/${c.ccode }" class="btn btn-sm btn-primary">Questions</a></td>
						</tr>
					</c:forEach>
				</tbody>
			</table>
		</div>
		<div class="col-sm-4">
			<form method="post" action="/savecourse">
				<div class="form-group">
					<label>Course Code</label>
					<input type="text" readonly value="${ccode}" name="ccode" class="form-control form-control-sm">
				</div>
				<div class="form-group">
					<label>Course Description</label>
					<input type="text" name="description" value="${course.description }" class="form-control form-control-sm">
				</div>				
				<div class="form-group">
					<label>Skill</label>
					<select name="skill" class="form-control form-control-sm">
					<option value="">Select Skill</option>
					<c:forEach items="${skills }" var="s">
						<option <c:if test="${course.skill.id == s.id }">selected</c:if> value="${s.id }">${s.skill }</option>
					</c:forEach>
					</select>
				</div>
				<div class="form-group">
					<label>Competency Level</label>
					<select name="competency" class="form-control form-control-sm">
						<option <c:if test="${course.competency == 'Easy' }">selected</c:if>>Easy</option>
						<option <c:if test="${course.competency == 'Medium' }">selected</c:if>>Medium</option>
						<option <c:if test="${course.competency == 'Difficult' }">selected</c:if>>Difficult</option>
					</select>
				</div>
				<div class="form-group">
					<label>Intended Audience</label>
					<select name="audience" class="form-control form-control-sm">
						<option <c:if test="${course.audience == 'Beginner' }">selected</c:if>>Beginner</option>
						<option <c:if test="${course.audience == 'Intermediate' }">selected</c:if>>Intermediate</option>
						<option <c:if test="${course.audience == 'Expert' }">selected</c:if>>Expert </option>
					</select>
				</div>
				
				<input type="submit" value="Save Course" class="btn btn-primary btn-sm">
			</form>
		</div>
	</div>
</div>
<jsp:include page="cfooter.jsp"></jsp:include>