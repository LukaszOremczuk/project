<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://www.springframework.org/tags" prefix="spring" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>

<!DOCTYPE html>
<html lang="pl">
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <meta name="viewport" content="width=device-width, initial-scale=1"/>
    <link href="https://maxcdn.bootstrapcdn.com/bootswatch/3.3.7/slate/bootstrap.min.css" rel="stylesheet"
          integrity="sha384-RpX8okQqCyUNG7PlOYNybyJXYTtGQH+7rIKiVvg1DLg6jahLEk47VvpUyS+E2/uJ" crossorigin="anonymous">
    <%--<link rel="stylesheet" href="webjars/bootstrap/css/bootstrap.min.css" type="text/css"/>--%>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>Domowy katalog książek</title>
</head>
<body>
<jsp:include page="header.jsp" flush="true"/>
<div class="container">
    <div class="row">
        <div class="col-lg-10 col-lg-offset-1">
            <h2 style="color: yellow">
                <span> ${book.title} </span>
            </h2>
            <h4><strong>Kategoria: </strong> ${book.category.name}</h4>
            <h4><strong>Tytuł oryginalny: </strong> ${book.originalTitle}</h4>
            <h4><strong>Autor: </strong> ${book.author.firstName} ${book.author.lastName}</h4>
            <h4><strong>Opis: </strong> ${book.description}</h4>
        </div>
    </div>
</div>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.1/jquery.min.js"></script>
<script src="webjars/bootstrap/js/bootstrap.min.js"></script>
<jsp:include page="footer.jsp" flush="true"/>
</body>
</html>
