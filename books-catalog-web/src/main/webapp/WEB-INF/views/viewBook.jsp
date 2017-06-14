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
            <h2>
                <span>KSIĄŻKA: ${book.title} </span>
            </h2>
            <h4>Kategoria: ${book.category.name}</h4>
            <h4>Tytuł oryginalny: ${book.originalTitle}</h4>
            <h4>Autor: ${book.author.firstName} ${book.author.lastName}</h4>
            <h4>Opis: ${book.description}</h4>

            <%--<div>--%>
            <%--<form:form modelAttribute="book">--%>
            <%--<table>--%>
            <%--<tr>--%>
            <%--<td>--%>
            <%--<form:label path="category.name">--%>
            <%--Kategoria: </form:label>--%>
            <%--</td>--%>
            <%--<td>--%>
            <%--<form:input path="category.name" disabled="true"/>--%>
            <%--</td>--%>
            <%--</tr>--%>

            <%--<tr>--%>
            <%--<td>--%>
            <%--<form:label path="originalTitle">--%>
            <%--Tytuł oryginalny: </form:label>--%>
            <%--</td>--%>
            <%--<td>--%>
            <%--<form:input path="originalTitle" disabled="true"/>--%>
            <%--</td>--%>
            <%--</tr>--%>

            <%--<tr>--%>
            <%--<td>--%>
            <%--<form:label path="author.firstName">Autor: </form:label>--%>
            <%--</td>--%>
            <%--<td>--%>
            <%--<form:input path="author.firstName" disabled="true"/>--%>
            <%--<form:input path="author.lastName" disabled="true"/>--%>
            <%--</td>--%>
            <%--</tr>--%>
            <%--<tr>--%>
            <%--<td>--%>
            <%--<form:label path="description">Opis: </form:label>--%>
            <%--</td>--%>
            <%--<td>--%>
            <%--<form:textarea path="description" disabled="true" cssStyle="width: 200px;height: 100px"/>--%>
            <%--</td>--%>
            <%--</tr>--%>
            <%--</table>--%>
            <%--</form:form>--%>
            <%--</div>--%>
            <%--</div>--%>
            <%--</div>--%>
            <%--</div>--%>

        </div>
    </div>
</div>
</body>
</html>


<%--<div class="container">--%>
<%--<div class="row">--%>
<%--<div class="col-lg-10 col-lg-offset-1">--%>
<%--<h2>--%>
<%--<span>KSIĄŻKA: ${book.title} </span>--%>
<%--</h2>--%>
<%--<div>--%>
<%--<form:form modelAttribute="book"/>--%>
<%--<form class="form-horizontal">--%>
<%--<fieldset>--%>
<%--<div class="form-group">--%>
<%--<form:label path="category.name"/>--%>
<%--&lt;%&ndash;<label class="col-lg-2 control-label">Kategoria:</label>&ndash;%&gt;--%>
<%--<div class="col-lg-10">--%>
<%--<form:input path="category.name" disabled="true"/>--%>
<%--</div>--%>
<%--</div>--%>
<%--<div class="form-group">--%>
<%--<form:label path="book.originalTitle"/>--%>
<%--&lt;%&ndash;<label class="col-lg-2 control-label">Tytuł oryginalny:</label>&ndash;%&gt;--%>
<%--<div class="col-lg-10">--%>
<%--<form:input path="book.originalTitle" disabled="true"/>--%>
<%--</div>--%>
<%--</div>--%>
<%--<div class="form-group">--%>
<%--<label class="col-lg-2 control-label">Autor:</label>--%>
<%--<div class="col-lg-10">--%>
<%--<form:input path="author.firstName" disabled="true"/>--%>
<%--<form:input path="author.lastName" disabled="true"/>--%>
<%--</div>--%>
<%--</div>--%>
<%--<div class="form-group">--%>
<%--<label for="textArea" class="col-lg-2 control-label">Opis książki:</label>--%>
<%--<div class="col-lg-8">--%>
<%--<textarea class="form-control" rows="5" id="textArea"></textarea>--%>
<%--<form:textarea path="book.description" disabled="true"/>--%>
<%--</div>--%>
<%--</div>--%>
<%--</fieldset>--%>
<%--</form>--%>
<%--<form:form/>--%>
<%--</div>--%>
<%--</div>--%>
<%--</div>--%>
<%--</div>--%>
</body>
</html>
