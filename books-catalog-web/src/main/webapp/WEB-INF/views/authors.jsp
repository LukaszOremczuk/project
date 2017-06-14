<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://www.springframework.org/tags" prefix="spring" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>

<!DOCTYPE html>
<html lang="pl">
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <meta name="viewport" content="width=device-width, initial-scale=1"/>
    <link href="https://maxcdn.bootstrapcdn.com/bootswatch/3.3.7/slate/bootstrap.min.css" rel="stylesheet" integrity="sha384-RpX8okQqCyUNG7PlOYNybyJXYTtGQH+7rIKiVvg1DLg6jahLEk47VvpUyS+E2/uJ" crossorigin="anonymous">
    <%--<link rel="stylesheet" href="webjars/bootstrap/css/bootstrap.min.css" type="text/css"/>--%>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>Domowy katalog książek</title>
</head>
<body>
<div class="container">
    <div class="row">
        <jsp:include page="header.jsp" flush="true"/>

        </div>
        <div class="col-lg-6 col-lg-offset-3 ">
            <h3>Lista wszystkich autorów</h3>
            <div class="table-responsive">
                <table class="table table-striped table-bordered table-hover">
                    <thead class="text-center">
                    <tr class="warning">
                        <th class="text-center" width="100px">Autor</th>
                        <th class="text-center" width="70px">Akcja</th>
                    </tr>
                    </thead>
                    <tbody>
                    <c:choose>
                        <c:when test="${!empty listAuthors}">
                            <c:forEach items="${listAuthors}" var="authors">
                                <tr>
                                    <td>${authors.firstName} ${authors.lastName}</td>
                                    <td class="text-center">
                                        <a class="btn btn-primary" class="btn-sm"
                                           href="<c:url value='/viewBooksAuthor/${authors}'/>">Książki autora</a>
                                        <a class="btn bg-success" class="btn-sm"
                                           href="<c:url value='/edit/${authors.idAuthor}'/>">Edytuj</a>
                                        <a class="btn bg-danger" class="btn-sm"
                                           href="<c:url value='/delete/${authors.idAuthor}'/>">Usuń</a>
                                    </td>
                                </tr>
                            </c:forEach>
                        </c:when>
                        <c:otherwise>
                            <tr>
                                <td width="300">Brak autorów do wyświetlenia</td>
                            </tr>
                        </c:otherwise>
                    </c:choose>
                    </tbody>
                </table>
            </div>
        </div>
    </div>
</div>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.1/jquery.min.js"></script>
<script src="webjars/bootstrap/js/bootstrap.min.js"></script>
</body>
</html>
