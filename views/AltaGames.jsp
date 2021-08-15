<%--
  Created by IntelliJ IDEA.
  User: DELL
  Date: 06/08/2021
  Time: 09:59 a. m.
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<c:set var="context" value="${pageContext.request.contextPath}" />
<html>
<head>
    <title>Alta Juego</title>
    <link rel="stylesheet" href="${context}/assets/plugins/bootstrap/css/bootstrap.min.css">
    <link rel="stylesheet" href="${context}/assets/dist/css/styles.css">
    <link href="https://use.fontawesome.com/releases/v5.0.6/css/all.css" rel="stylesheet">
</head>
<body>
<div class="modal fade" id="details" tabindex="-1" aria-labelledby="exampleModalLabel2" aria-hidden="true">
    <div class="modal-dialog">
        <div class="modal-content">
            <div class="modal-header">
            </div>
                <div class="modal-body">
                    <h2> Registro Juego </h2>
                    <form action="${context}/createGames" method="POST">
                        <label>Nombre del Juego: </label>
                        <input type="text" name="name" id="name" required>
                        <br><br>

                        <label>Imagen del Juego: </label>
                        <input type="file" name="imgGame" id="imgGame" img src="data:image/jpeg;base64,${ game.imgGame }" required >
                        <br><br>

                        <label>Fecha de Estreno: </label>
                        <input type="date"  name="datePremiere" id="datePremiere" required >
                        <br><br>

                        <label>Categoria del Juego: </label>
                        <select name="Category" id="Category" required>
                            <c:forEach items="${categoryList}" var="Category">
                                <option value="${Category.idCategory}">${Category.name}</option>
                            </c:forEach>
                        </select>
                        <br><br>
                        <button onclick="btn-altagames()" type="submit" class="btn btn-success">
                            <i class="fas fa-plus"></i>Registrar Juego</button>
                    </form>
                </div>
        </div>
    </div>
</div>

<script src="${context}/assets/plugins/bootstrap/js/bootstrap.min.js"></script>
<script src="https://code.jquery.com/jquery-3.6.0.js" integrity="sha256-H+K7U5CnXl1h5ywQfKtSj8PCmoN9aaq30gDh27Xc0jk=" crossorigin="anonymous"></script>
<script src="${context}/assets/dist/js/main.js"> </script>
</body>
</html>
