<%--
  Created by IntelliJ IDEA.
  User: harish
  Date: 24/11/17
  Time: 6:17 PM
--%>

<%@ page contentType="text/html;charset=UTF-8" %>
<html>
<head>
    <title>Dashboard</title>
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
    <link href="../css/custom.css" rel="stylesheet">
</head>

<body>
<div class="container">
    <g:render template="/tempplate/userHeader"/>
<div class="row">
    <div class="col-md-4 user-profile m-t-50">
    <div class="inline">
        <img src="abc.jpg" class="inline">
    </div>
        <div class="content">
            Harish Singh Bisht
        </div>
        <div>
            <span class="content u-n">@Hsb</span>
        </div>
        <div class="content u-n inline">Subscriptions</div>
        <div class="content u-n inline">Topics</div>
        <br/>
        <div class="content inline">50</div>
        <div class="content inline m-l-110">50</div>
    </div>

    <div class="col-md-5">
        <g:render template="/tempplate/inbox"></g:render>
    </div>
</div>
</div>

</body>
</html>