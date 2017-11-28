<html>
<head>
    %{--<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">--}%
    %{--<link href="../css/custom.css" rel="stylesheet">--}%
</head>
<body>
<div class="row">
    <div class="col-md-12">
        <div class="register_header">
            <p>Register</p>
        </div>
        <div class="register-box">
            <g:form method="POST" controller="user" action="create">
                <div class="row">
                    <div class="col-md-3 p-t-10">
                        <label>First Name</label>
                    </div>
                    <div class="col-md-3 p-t-10">
                        <g:textField name="firstName" id="firstName" value="${firstName}"/>
                    </div>
                </div>

                <div class="row">
                    <div class="col-md-3 p-t-10">
                        <label>Last Name</label>
                    </div>
                    <div class="col-md-3 p-t-10">
                        <g:textField name="lastName" id="lastName" value="${lastName}"/>
                    </div>
                </div>

                <div class="row">
                    <div class="col-md-3 p-t-10">
                        <label>Email</label>
                    </div>
                    <div class="col-md-3 p-t-10">
                        <g:textField name="email" id="email" value="${email}"/>
                    </div>
                </div>

                <div class="row">
                    <div class="col-md-3 p-t-10">
                        <label>Username</label>
                    </div>
                    <div class="col-md-3 p-t-10">
                        <g:textField name="username" id="username" value="${username}"/>
                    </div>
                </div>

                <div class="row">
                    <div class="col-md-3 p-t-10">
                        <label>password</label>
                    </div>
                    <div class="col-md-3 p-t-10">
                        <g:passwordField name="password" id="pass" value="${password}"/>
                    </div>
                </div>

                <div class="row">
                    <div class="col-md-3 p-t-10">
                        <label>Confirm Password</label>
                    </div>
                    <div class="col-md-3 p-t-10">
                        <g:passwordField name="pass" id="conPass" value="${password}"/>
                    </div>
                </div>
                <div class="row">
                    <div class="col-md-3 p-t-10">
                        <label>Photo</label>
                    </div>
                    <div class="col-md-3 p-t-10">
                        <input type="file" name="photo"/>
                    </div>
                </div>
                <div class="row">
                    <div class="col-md-3 col-md-offset-3 p-t-10">
                        <button type="submit" class="btn btn-primary">Register</button>
                    </div>

                </div>
            </g:form>

        </div>
    </div>
</div>
</body>
<script>
    function validateAll(){
    return true;
    }
</script>
</html>