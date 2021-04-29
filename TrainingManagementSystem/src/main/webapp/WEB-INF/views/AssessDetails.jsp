<%@ taglib prefix="c" uri="http://java.sun.com/jstl/core_rt"%>
<jsp:include page="cheader.jsp"></jsp:include>
<div class="container">
<h4 class="p-2 border-bottom border-success">Assessment Details</h4>
	<div class="row">
		<div class="col-sm-6 mx-auto">
			<div class="card m-2 text-center">
				<div class="card-header">
					<h4>${c.description }</h4>
				</div>
				<div class="card-body">
					<h4>Intended Audience : ${c.audience }</h4>
					<h4>Competency Level : ${c.competency }</h4>
					<h4>Number of Questions : ${qcount }</h4>
				</div>
				<div class="card-footer">
					<button class="btn btn-primary" onclick="startnow('${c.ccode}')">Start Assessment</button>
				</div>
			</div>
		</div>
	</div>
</div>