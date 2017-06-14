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
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <title>Domowy katalog książek</title>
</head>
<body>
<div class="container">
    <div class="row">
        <jsp:include page="header.jsp" flush="true"/>

        <div class="col-lg-10 col-lg-offset-1 ">
            <h3>Lista książek wg wyszukiwania</h3>
            <form:form>

            </form:form>

            <div class="table-responsive">
                <table class="table table-striped table-bordered table-hover">
                    <thead class="text-center">
                    <tr class="warning">
                        <th class="text-center" width="250px">Tytuł</th>
                        <th class="text-center" width="250px">Tytuł oryginalny</th>
                        <th class="text-center" width="200px">Autor</th>
                    </tr>
                    </thead>
                    <tbody>
                    <c:choose>
                        <c:when test="${!empty listBooks}">
                            <c:forEach items="${listBooks}" var="book">
                                <tr>
                                    <td>${book.title}</td>
                                    <td>${book.originalTitle}</td>
                                    <td>${book.author.firstName} ${book.author.lastName}</td>
                                </tr>
                            </c:forEach>
                        </c:when>
                        <c:otherwise>
                            <tr>
                                <td width="300">Brak książek do wyświetlenia</td>
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
