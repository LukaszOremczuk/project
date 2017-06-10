<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://www.springframework.org/tags" prefix="spring" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>

<!DOCTYPE html>

<%
    String imageURL = application.getInitParameter("imageURL");
%>

<html lang="pl">
<head>
    <meta charset="UTF-8">
    <title>Domowy katalog książek</title>
    <link rel="stylesheet" href="css/style.css" type="text/css"/>
</head>
<body>
<div id="centered">
    <jsp:include page="header.jsp" flush="true"/>
    <br/>
    </table>

    <h3>KSIĄŻKA</h3>

    <c:url var="saveAction" value="/book/save"/>

    <form:form method="post" modelAttribute="book" action="${saveAction}">
        <table>
            <tr>
                <td colspan="2">
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
</body>
</html>
