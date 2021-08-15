<%--
  Created by IntelliJ IDEA.
  User: DELL
  Date: 06/08/2021
  Time: 09:59 a. m.
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<c:set var="context" value="${pageContext.request.contextPath}" />
<html lang="en">

<head>
    <title> Login | Games</title>
    <link rel="stylesheet" href="${context}/assets/plugins/bootstrap/css/bootstrap.min.css">
    <link href="https://use.fontawesome.com/releases/v5.0.6/css/all.css" rel="stylesheet">

</head>

<body>
<center> <h1> LOGIN </h1> </center>
<br>
<br>
<br>
<form action="${context}/ServletSession/login" method="POST">
    <div class="col-auto">
        <label for="email" class="visually-hidden">Correo:</label>
        <input type="email" name="email" id="email" placeholder="20203tn091@utez.edu.mx" class="form-control">
    </div>
    <div class="col-auto">
        <label for="password" class="visually-hidden">Password:</label>
        <input type="password" name="password" id="password" placeholder="**********" class="form-control" >
    </div>
    <div class="col-auto">
        <button type="submit" value="login" class="btn btn-success"><i class="fas fa-plus"></i>login</button>
    </div>
</form>
<script src="${context}/assets/plugins/bootstrap/js/bootstrap.min.js"></script>
<script src="https://code.jquery.com/jquery-3.6.0.js" integrity="sha256-H+K7U5CnXl1h5ywQfKtSj8PCmoN9aaq30gDh27Xc0jk=" crossorigin="anonymous"></script>
</body>
</html>