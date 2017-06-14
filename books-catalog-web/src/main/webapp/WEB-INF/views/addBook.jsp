<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://www.springframework.org/tags" prefix="spring" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>

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
            <h2><span>DODAJ KSIĄŻKĘ:</span>
            </h2>
            <c:url var="addBook" value="/addBook"/>
            <form:form method="post" modelAttribute="book" action="${addBook}">
                <form class="form-horizontal">
                    <fieldset>
                        <div class="form-group">
                            <div class="col-lg-10 col-lg-offset-2">
                                <button type="submit" class="btn btn-danger">Zapisz</button>
                            </div>
                        </div>

                        <div class="form-group">
                            <label class="col-lg-2 control-label">Kategoria:</label>
                            <div class="col-lg-10">
                                <form:input path="categoryName"></form:input>
                            </div>
                        </div>

                        <div class="form-group">
                            <label class="col-lg-2 control-label">Tytuł:</label>
                            <div class="col-lg-10">
                                <form:input path="titleBook"></form:input>
                            </div>
                        </div>

                        <div class="form-group">
                            <label class="col-lg-2 control-label">Tytuł oryginalny:</label>
                            <div class="col-lg-10">
                                <form:input path="originalTitleBook"></form:input>
                            </div>
                        </div>

                        <div class="form-group">
                            <label class="col-lg-2 control-label">Imię autora:</label>
                            <div class="col-lg-10">
                                <form:input path="authorFirstName"></form:input>
                            </div>
                        </div>

                        <div class="form-group">
                            <label class="col-lg-2 control-label">Nazwisko autora:</label>
                            <div class="col-lg-10">
                                <form:input path="authorLastName"></form:input>
                            </div>
                        </div>

                        <div class="form-group">
                            <label for="textArea" class="col-lg-2 control-label">Opis książki:</label>
                            <div class="col-lg-8">
                                <textarea class="form-control" rows="5" id="textArea"></textarea>
                                <form:textarea path="description"></form:textarea>
                            </div>
                        </div>
                    </fieldset>
                </form>
            </form:form>
        </div>
    </div>
</div>
</body>
</html>
