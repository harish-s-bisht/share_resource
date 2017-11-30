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
            <g:form method="POST" controller="user" action="create" onsubmit="return validate()">
                <div class="row">
                    <div class="col-md-3 p-t-10">
                        <label>First Name</label>

                    </div>
                    <div class="col-md-9 p-t-10">
                        <g:textField name="firstName" id="firstName" value="${firstName}" placeholder="First Name"/>
                        <span class="error" id="firstnameerror"></span>
                    </div>
                </div>

                <div class="row">
                    <div class="col-md-3 p-t-10">
                        <label >Last Name</label>
                    </div>
                    <div class="col-md-9 p-t-10">
                        <g:textField name="lastName" id="lastName" value="${lastName}" placeholder="Last Name"/>
                        <span class="error" id="lastnameeror"></span>
                    </div>
                </div>

                <div class="row">
                    <div class="col-md-3 p-t-10">
                        <label>Email</label>
                    </div>
                    <div class="col-md-9 p-t-10">
                        <g:textField name="email" id="email" value="${email}" placeholder="Email"/>
                        <span class="error" id="emailerror"></span>
                    </div>
                </div>

                <div class="row">
                    <div class="col-md-3 p-t-10">
                        <label>Username</label>
                    </div>
                    <div class="col-md-9 p-t-10">
                        <g:textField name="username" id="username" value="${username}" placeholder="Username"/>
                        <span class="error" id="usernameerror"></span>
                    </div>
                </div>

                <div class="row">
                    <div class="col-md-3 p-t-10">
                        <label>password</label>
                    </div>
                    <div class="col-md-9 p-t-10">
                        <g:passwordField name="password" id="pass" value="${password}" placeholder="Password"/>
                        <span class="error" id="passworderror"></span>
                    </div>
                </div>

                <div class="row">
                    <div class="col-md-3 p-t-10">
                        <label>Confirm Password</label>

                    </div>
                    <div class="col-md-9 p-t-10">
                        <g:passwordField name="pass" id="conPass" value="${password}" placeholder="Confirm Password"/>
                        <span class="error" id="conpasworderror"></span>
                    </div>
                </div>
                <div class="row">
                    <div class="col-md-3 p-t-10">
                        <label>Photo</label>
                    </div>
                    <div class="col-md-3 p-t-10">
                        <input type="file" name="photoPath"/>
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
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
<script>
    $(document).ready(function () {


    });
    function validate() {
        var firstname = $('#firstName').val();
        var lastname = $('#lastName').val();
        var username = $('#username').val();
        var email = $('#email').val();
        var password = $('#pass').val();
        var conPass = $('#conPass').val();
        var hasError=false;
        var emailRegex = /^(([^<>()\[\]\\.,;:\s@"]+(\.[^<>()\[\]\\.,;:\s@"]+)*)|(".+"))@((\[[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\])|(([a-zA-Z\-0-9]+\.)+[a-zA-Z]{2,}))$/;
        var msg = 'Can not be empty';
           if(firstname.trim()==''||firstname.trim()==null|| firstname.trim()==' '){

            $('#firstnameerror').html(msg);
               hasError=true;
            return false;
        }else{
               hasError=false;
            $('#firstnameerror').html('');
        }

        if(lastname.trim()==''||lastname.trim()==null||lastname.trim()==' '){
               $('#lastnameeror').html(msg);
            hasError=true;
               return false;
        }else{
            hasError=false;
            $('#lastnameeror').html('')
        }
        if(email.trim()==''||email.trim()==null||email.trim()==''){
            $('#emailerror').html(msg);
            hasError=true
            return false;
        }else{
            hasError=false;
            $('#emailerror').html('');
        }
        if(!emailRegex.test(email)){
            $('#emailerror').html('Invlid E-Mail');
            hasError = true;
            return false;
        }else{
            $('#emailerror').html('Invlid E-Mail');
            hasError = false;
        }
        if(password.trim()==''||password.trim()==null||password.trim()==''){
            $('#passworderror').html(msg);
            hasError=true;
            return false;
        }else{
            hasError=false;
            $('#passworderror').html('');
        }
        if(conPass.trim()==''||conPass.trim()==null||conPass.trim()==''){
            $('#conPasserror').html(msg);
            hasError=true;
            return false;
        }else{
            hasError=false;
            $('#conPasserror').html('');
        }
        if(password.trim()!=conPass.trim()){
            $('#conpasworderror').html('Did not match');
            hasError=true;
            return false;
        }else{
            hasError=true;
            $('#conPasserror').html('');
        }

        return hasError;
    }
</script>
</html>