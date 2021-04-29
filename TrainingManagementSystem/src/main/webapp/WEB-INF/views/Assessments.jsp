<%@ taglib prefix="c" uri="http://java.sun.com/jstl/core_rt"%>
<jsp:include page="cheader.jsp"></jsp:include>
<div class="container">
<h4 class="p-2 border-bottom border-success">List of Assessments</h4>
	<div class="row">
		<c:forEach items="${courses }" var="c">
			<div class="col-sm-4">
			<a href="/assess/${c.ccode }">
				<div class="card m-3 text-center p-2">
					<h4>${c.description }</h4>
				</div>
			</a>
			</div>
		</c:forEach>
	</div>
</div>