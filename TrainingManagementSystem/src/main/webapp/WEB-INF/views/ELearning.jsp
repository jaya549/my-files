<%@ taglib prefix="c" uri="http://java.sun.com/jstl/core_rt"%>
<jsp:include page="cheader.jsp"></jsp:include>
<div class="container">
	<h4 class="p-2 border-bottom border-success">List of Skills for
		E-Learning</h4>
	<div class="row">
		<c:forEach items="${skills }" var="s">
			<div class="col-sm-4">
				<a href="/start/${s.id }">
					<div class="card m-3 text-center p-2">
						<h4>${s.skill }</h4>
					</div>
				</a>
			</div>
		</c:forEach>
	</div>

	<c:if test="${show }">
		<div class="row">
			<div class="col-sm-6 mx-auto">
				<a href="/learn/${id}/1" class="text-decoration-none text-white">
					<div class="card m-3 bg-success text-center p-4">
						<h4>Start Learning</h4>
						<h5>${skill }</h5>
					</div>
				</a>
			</div>
		</div>
	</c:if>
</div>
<jsp:include page="cfooter.jsp"></jsp:include>
