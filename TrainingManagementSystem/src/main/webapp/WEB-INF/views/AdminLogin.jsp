<html>
<head>
<meta charset="ISO-8859-1">
<title>Training Management System</title>
<link rel="stylesheet" href="/css/bootstrap.css">
<link rel="stylesheet" href="/css/training.css">
</head>
<body class="home">
<div class="jumbotron bg-primary rounded-0 mb-0 text-white border-bottom border-white">
	<h2>Welcome to Training System</h2>
</div>
<div class="container">
<div class="row">
	<div class="col-sm-5 mx-auto p-3">
		<div class="card bg-transparent p-3 mt-3 shadow">
		<h4 class="text-center">Admin Login</h4>		
		<form method="post" action="validate">
			<div class="form-group">
				<label for="userid">User ID</label> <input
					type="email" class="form-control form-control-sm" id="userid" name="userid"
					aria-describedby="emailHelp" placeholder="Enter userid">
			</div>
			<div class="form-group">
				<label for="pwd">Password</label> <input name="pwd"
					type="password" class="form-control form-control-sm" id="pwd"
					placeholder="Password">
			</div>
			<button type="submit" class="btn btn-primary btn-sm px-3 float-right">Login</button>
		</form>
		</div>
		
	</div>
</div>
</div>
</body>
</html>
