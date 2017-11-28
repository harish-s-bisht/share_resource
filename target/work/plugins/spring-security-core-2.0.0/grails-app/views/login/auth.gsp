<html>
<head>
	<title>Home</title>
	<asset:stylesheet src="custom.css"/>
	<link href="../css/custom.css" rel="stylesheet">
	<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">

</head>

<body>

<div class="container">
	<div class="row">
		<g:render template="/tempplate/header"/>
	</div>
	<div class="row">
	<div class="col-md-5">
		${msg}
		<g:render template="/tempplate/recentShares"/>
	</div>

		<div class="col-md-5 col-md-offset-1">
			<div class="recent_share_header">
				<p>Login</p>
			</div>
			<div class="login-box">
			<g:form method="post" action="#">
			<div class="row">
				<div class="col-md-3 p-t-5">
					<label>Email/Username</label>
				</div>
				<div class="col-md-3 p-t-5">
					<g:textField name="username" value="${username}"/>
				</div>
			</div>

				<div class="row">
					<div class="col-md-3 p-t-5">
						<label>Password</label>
					</div>
					<div class="col-md-3 p-t-10">
						<g:passwordField name="password" value="${password}"/>
					</div>
				</div>
				<div class="row">
					<div class="col-md-3 p-t-10">
						<a href="#">Forget Password</a>
					</div>
					<div class="col-md-3 p-t-10">
						<button class="btn btn-primary">Login</button>
					</div>
				</div>

			</g:form>
			</div>
		</div>
</div>
<div class="row">
	<div class="col-md-5">
		<g:render template="/tempplate/toppost"/>
	</div>

	<div class="col-md-5 col-md-offset-1">
		<g:render template="/tempplate/register"/>
	</div>
</div>
</div>
</body>

<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
<script>

    $(document).ready(function(){
//        console.log("hi");
    });
</script>
</html>
