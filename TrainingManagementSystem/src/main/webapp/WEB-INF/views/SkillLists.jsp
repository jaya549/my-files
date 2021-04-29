<%@ taglib prefix="c" uri="http://java.sun.com/jstl/core_rt"%>
<jsp:include page="cheader.jsp"></jsp:include>
<div class="container">
<h4 class="p-2 border-bottom border-success">List of Skills</h4>
	<div class="row">
		<c:forEach items="${skills }" var="s">
			<div class="col-sm-4">
			<a href="/skillslist/${s.id }">
				<div class="card m-3 text-center p-2">
					<h4>${s.skill }</h4>
				</div>
			</a>
			</div>
		</c:forEach>
		</div>
		<c:if test="${show }">
			<div class="row">
			<c:forEach items="${clist }" var="c">
				<div class="col-sm-4">
					<a href="/details/${c.ccode }">
				<div class="card m-3 text-center p-2">
					<h4>${c.description }</h4>
				</div>
			</a>	
				</div>
			</c:forEach>
			</div>
		</c:if>
</div>
<jsp:include page="cfooter.jsp"></jsp:include>	