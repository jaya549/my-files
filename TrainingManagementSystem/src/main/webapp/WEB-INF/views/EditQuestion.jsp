<%@ taglib prefix="c" uri="http://java.sun.com/jstl/core_rt"%>
<jsp:include page="header.jsp"></jsp:include>
<div class="container-fluid">		
	<h4 class="p-2 border-bottom border-success">Edit Question</h4>
	<div class="row">
		<div class="col-sm-10 mx-auto">
			<form method="post" action="/savequestion">
				<div class="row">
					<div class="col-sm-4">
						<div class="form-group">
							<label>Course Code</label> <input type="text"
								class="form-control form-control-sm" name="ccode" readonly value="${q.ccode.ccode }">
								<input type="hidden" name="id" value="${q.id }">
						</div>
					</div>
					<div class="col-sm-4">
						<div class="form-group">
							<label>Question Id</label> <input type="text" readonly
								class="form-control form-control-sm" value="${q.qid }" name="qid">
						</div>
					</div>
					<div class="col-sm-12">
						<div class="form-group">
							<label>Question Description</label> <input type="text"
								class="form-control form-control-sm" value="${q.description }" name="description">
						</div>
					</div>
					<div class="col-sm-4">
						<div class="form-group">
							<label>Choice 1</label> <input type="text" value="${q.ch1 }" class="form-control form-control-sm"
								name="ch1">
						</div>
					</div>
					<div class="col-sm-4">
						<div class="form-group">
							<label>Choice 2</label> <input type="text" class="form-control form-control-sm"
								name="ch2" value="${q.ch2 }">
						</div>
					</div>
					<div class="col-sm-4">
						<div class="form-group">
							<label>Choice 3</label> <input type="text" class="form-control form-control-sm"
								name="ch3" value="${q.ch3 }">
						</div>
					</div>
					<div class="col-sm-4">
						<div class="form-group">
							<label>Choice 4</label> <input type="text" class="form-control form-control-sm"
								name="ch4" value="${q.ch4 }">
						</div>
					</div>
					<div class="col-sm-4">
						<div class="form-group">
							<label>Choice 4</label> 
							<select class="form-control form-control-sm" name="cans">
								<option>A</option>
								<option>B</option>
								<option>C</option>
								<option>D</option>
							</select>
						</div>
					</div>
					<div class="col-sm-6">
						<input type="submit" value="Save Question" class="btn btn-primary btn-sm">
					</div>
			</form>
		</div>
	</div>
</div>
<jsp:include page="cfooter.jsp"></jsp:include>