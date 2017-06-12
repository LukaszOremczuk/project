<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://www.springframework.org/tags" prefix="spring" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>

<!DOCTYPE html>
<html lang="pl">
<head>
    <%--<link rel="stylesheet" type="text/css"--%>
    <%--href="books-catalog-web/src/main/webapp/webjars/bootstrap/css/bootstrap.css"/>--%>
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <meta name="viewport" content="width=device-width, initial-scale=1"/>
    <link rel="stylesheet" href="webjars/bootstrap/css/bootstrap.min.css" type="text/css"/>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>Domowy katalog książek</title>
</head>
<body>
<div class="container">
    <jsp:include page="header.jsp" flush="true"/>
    <div class="row">
        <div class="col-lg-12">
            <h2>KSIĄŻKA</h2>

            <c:url var="saveAction" value="/book/save"/>

            <form:form method="post" modelAttribute="book" action="${saveAction}">
                <table>
                    <tr>
                        <td>
                            <form:hidden path="idBook"/>
                        </td>
                    </tr>
                    <tr>
                        <td>
                            <form:label path="title">Tytuł</form:label>
                        </td>
                        <td>
                            <form:input path="title"/>
                        </td>
                        <td>
                            <form:errors path="title"/>
                        </td>
                    </tr>
                    <tr>
                        <td>
                            <form:label path="originalTitle">Tytuł oryginalny</form:label>
                        </td>
                        <td>
                            <form:input path="originalTitle"/>
                        </td>
                        <td>
                            <form:errors path="originalTitle"/>
                        </td>
                    </tr>
                    <tr>
                        <td>
                            <form:label path="description">Opis</form:label>
                        </td>
                        <td>
                            <form:input path="description"/>
                        </td>
                        <td>
                            <form:errors path="description"/>
                        </td>
                    </tr>
                    <tr>
                        <td colspan="3"><input name="submit" type="submit" value="Zapisz"/>
                        </td>
                    </tr>
                </table>
            </form:form>
        </div>
    </div>
</div>
</body>
</html>
