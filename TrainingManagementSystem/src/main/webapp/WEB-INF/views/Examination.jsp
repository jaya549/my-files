<%@ taglib prefix="c" uri="http://java.sun.com/jstl/core_rt"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Examination</title>
<link rel="stylesheet" href="/css/bootstrap.css">
<link rel="stylesheet" href="/css/training.css">
</head>
<body>
	<div class="container">
		<h5 class="float-right m-2">Employee Name : ${sessionScope.name }</h5>
		<div class="clearfix"></div>
		<h4 class="text-center p-2">Assessment Exam for ${ccode }</h4>
		<div class="row">
			<div class="col-sm-8 mx-auto">
			<form method="post" action="/saveexam">
				<input type="hidden" name="ccode" value="${ccode }">
				<input type="hidden" name="userid" value="${sessionScope.userid }">
				<table class="table table-sm">
					<c:forEach items="${qlist }" varStatus="index" var="q">
					<input type="hidden" name="cans[${index.index }]" value="${q.cans }">
						<tr>
							<td>Q.No.${index.index+1 }</td>
							<td class="font-weight-bold">${q.description }</td>
						</tr>
						<tr>
							<td>
								<div class="custom-control custom-radio">
									<input type="radio" id="cr1${q.id }" name="ans[${index.index }]"
										class="custom-control-input" value="A"> <label
										class="custom-control-label" for="cr1${q.id }">A.</label>
								</div>
							</td>
							<td>${q.ch1 }</td>
						</tr>
						<tr>
							<td><div class="custom-control custom-radio">
									<input type="radio" id="cr2${q.id }" name="ans[${index.index }]"
										class="custom-control-input" value="B"> <label
										class="custom-control-label" for="cr2${q.id }">B.</label>
								</div></td>
							<td>${q.ch2 }</td>
						</tr>
						<tr>
							<td><div class="custom-control custom-radio">
									<input type="radio" id="cr3${q.id }" name="ans[${index.index }]"
										class="custom-control-input" value="C"> <label
										class="custom-control-label" for="cr3${q.id }">C.</label>
								</div></td>
							<td>${q.ch3 }</td>
						</tr>
						<tr>
							<td><div class="custom-control custom-radio">
									<input type="radio" id="cr4${q.id }" name="ans[${index.index }]"
										class="custom-control-input" value="D"> <label
										class="custom-control-label" for="cr4${q.id }">D.</label>
								</div></td>
							<td>${q.ch4 }</td>
						</tr>
					</c:forEach>
					<tr>
						<td colspan="2"><input type="submit"
							class="btn btn-primary btn-sm float-right" value="Submit Exam">
					</tr>
				</table>
				</form>
			</div>
		</div>
	</div>
</body>
</html>