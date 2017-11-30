<html>
<head>
    %{--<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">--}%

</head>
<body>
<div class="container">
<div class="row">
    <div class="col-md-12 headerBox">
        <div class="col-md-2">Link Share</div>
        <div class="col-md-2 col-md-offset-2">
            <input class="border-none" type="text" placeholder="search">
        </div>
        <div class="col-md-4 pull-right">
            <span class="glyphicon glyphicon-envelope p-l-r-5"></span>
            %{--<span class="glyphicon glyphicon-icon-chat p-l-r-5"></span>--}%
            <span class="glyphicon glyphicon-user p-l-r-5"></span>
            <span class="p-l-r-5"><sec:username/></span>
            %{--<span class="m-t-10 caret"></span>--}%
            <div class="dropdown inline hand-cursor">
                <span class="dropdown-toggle" data-toggle="dropdown">..
                    <span class="caret"></span></span>
                <ul class="dropdown-menu">
                    %{--<li class="dropdown-header">Dropdown header 1</li>--}%
                    <li><a href="#">Profile</a></li>
                    <li><a href="#">Users</a></li>
                    <li><a href="#">Topic</a></li>
                    <li><a href="#">Post</a></li>
                    <li><a href="j_spring_security_logout">Logout</a></li>
                </ul>
            </div>
        </div>
    </div>
</div>
</div>
</body>
</html>