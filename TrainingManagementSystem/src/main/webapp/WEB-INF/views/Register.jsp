<%@ taglib prefix="c" uri="http://java.sun.com/jstl/core_rt"%>
<jsp:include page="cheader.jsp"></jsp:include>
<div class="container">
	<%
				if (session.getAttribute("msg") != null) {
			%>
	<div class="row">
		<div class="col-sm-5 mx-auto">
			<div class="alert alert-success text-center">
				<strong><%=session.getAttribute("msg")%></strong>
			</div>
		</div>
	</div>
	<%
				session.removeAttribute("msg");
			}
			%>
	<div class="row">
		<div class="col-sm-8 p-3 mx-auto">
			<div class="card bg-transparent p-4 mt-2 shadow">
				<form method="post" onsubmit="return validate();" action="register">
					<div class="row">
					<div class="col-sm-6">
							<div class="form-group">
								<label>User ID</label> <input type="text" name="userid"
									id="userid" readonly value="${userid}"
									class="form-control form-control-sm">
							</div>
						</div>
						<div class="col-sm-6">
							<div class="form-group">
								<label>First Name</label> <input type="text" name="fname"
									class="form-control form-control-sm" id="fname">
								<div class="error efname">First name is required</div>
							</div>
						</div>
						<div class="col-sm-6">
							<div class="form-group">
								<label>Last Name</label> <input type="text" name="lname"
									class="form-control form-control-sm" id="lname">
								<div class="error elname">Last name is required</div>
							</div>
						</div>
						<div class="col-sm-6">
							<div class="form-group">
								<label>Date of Birth</label> <input type="date" id="dob"
									name="dob" class="form-control form-control-sm">
								<div class="error edob">Date of birth is required</div>
							</div>
						</div>
						<div class="col-sm-6">
							<div class="form-group">
								<label>Gender</label> <select name="gender"
									class="form-control form-control-sm" id="gender">
									<option value=""><-- Select Gender --></option>
									<option>Male</option>
									<option>Female</option>
								</select>
								<div class="error egender">Date of birth is required</div>
							</div>
						</div>
						<div class="col-sm-6">
							<div class="form-group">
								<label>Contact Number</label> <input type="text" name="phone"
									maxlength="10" pattern="[6-9][0-9]{9,9}" id="phone"
									class="form-control form-control-sm">
								<div class="error ephone">Phone is required</div>
							</div>
						</div>
						<div class="col-sm-6">
							<div class="form-group">
								<label>Email Id</label> <input type="email" name="email"
									id="email" class="form-control form-control-sm">
								<div class="error email">Email Id is required</div>
							</div>
						</div>
						<div class="col-sm-6">
							<div class="form-group">
								<label>Address</label> <input type="text" id="address"
									name="address" class="form-control form-control-sm">
								<div class="error eaddress">Address is required</div>
							</div>
						</div>
						
						<div class="col-sm-6">
							<div class="form-group">
								<label>Password</label> <input type="password" name="pwd"
									id="pwd" class="form-control form-control-sm">
								<div class="error epwd">Password is required</div>
							</div>
						</div>
						<div class="col-sm-6">
							<div class="form-group">
								<label>Repeat Password</label> <input type="password"
									name="cpwd" id="cpwd" class="form-control form-control-sm">
								<div class="error ecpwd">Repeat Password is required</div>
							</div>
						</div>
					</div>

					<input type="submit" class="btn btn-primary btn-sm float-right"
						value="Register">
				</form>
			</div>

		</div>
	</div>
</div>
<jsp:include page="cfooter.jsp"></jsp:include>