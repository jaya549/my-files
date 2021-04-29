<%@ taglib prefix="c" uri="http://java.sun.com/jstl/core_rt" %>
<jsp:include page="header.jsp"></jsp:include>
<div class="container-fluid">
	<a href="/addques/${ccode}" class="btn btn-primary btn-sm float-right m-2">Add Questions</a>
	<h4 class="p-2 border-bottom border-success">Questions for course ${c.description}(${ccode })</h4>
	<div class="row">
		<div class="col-sm-12">
			<table class="table table-bordered table-sm table-dark">
				<thead>
					<tr>
						<th>Q.Id</th>
						<th>Description</th>
						<th>Choice 1</th>
						<th>Choice 2</th>
						<th>Choice 3</th>
						<th>Choice 4</th>
						<th>Answer</th>
						<th>Edit</th>
					</tr>
				</thead>
				<tbody>
				<c:forEach items="${questions }" var="q">
					<tr>
						<td>${q.qid }</td>
						<td>${q.description }</td>
						<td>${q.ch1 }</td>
						<td>${q.ch2 }</td>
						<td>${q.ch3 }</td>
						<td>${q.ch4 }</td>
						<td>${q.cans }</td>
						<td><a href="/editques/${q.id }" class="btn btn-primary btn-sm">Edit</a></td>
					</tr>
				</c:forEach>
				</tbody>
			</table>
		</div>
	</div>
</div>
<jsp:include page="cfooter.jsp"></jsp:include>