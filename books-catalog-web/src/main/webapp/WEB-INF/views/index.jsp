<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://www.springframework.org/tags" prefix="spring" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>

<!DOCTYPE html>

<%
    String imageURL=application.getInitParameter("imageURL");
%>

<html lang="pl">
<head>
    <meta charset="UTF-8">
    <title>Domowy katalog książek</title>
    <link rel="stylesheet" href="css/style.css" type="text/css" />
</head>
<body>
<div id="centered">
<jsp:include page="header.jsp" flush="true" />
<br />



<h3>Lista wszystkich książek</h3>
<table class="tg">
    <tr>
        <th width="300">Tytuł</th>
        <th width="300">Tytuł oryginalny</th>
        <%--<th width="400">Opis</th>--%>
        <th width="200">Autor</th>
        <%--<th width="100">Nazwisko autora</th>--%>
    </tr>
    <c:choose>
        <c:when test="${!empty listBooks}">
            <c:forEach items="${listBooks}" var="book">
                <tr>
                    <td>${book.title}</td>
                    <td>${book.originalTitle}</td>
                    <%--<td>${book.description}</td>--%>
                    <td>${book.author.firstName}</td>
                    <td>${book.author.lastName}</td>
                    <td>
                        <a href="<c:url value='/book/edit/${book.idBook}'/>">Edytuj</a>
                    </td>
                    <td>
                        <a href="<c:url value='/book/delete/${book.idBook}'/>">Usuń</a>
                    </td>
                </tr>
            </c:forEach>
        </c:when>

        <c:otherwise>
            <tr>
                <td width="300">Brak książek do wyświetlenia</td>
            </tr>
        </c:otherwise>
    </c:choose>
</table>

<%--<h3><spring:message code="account.form.title"/></h3>--%>

<%--<c:url var="saveAction" value="/account/save"/>--%>

<%--<form:form method="post" modelAttribute="account" action="${saveAction}">--%>
    <%--<table>--%>
        <%--<tr>--%>
            <%--<td colspan="2">--%>
                <%--<form:hidden path="id"/>--%>
            <%--</td>--%>
        <%--</tr>--%>
        <%--<tr>--%>
            <%--<td>--%>
                <%--<form:label path="firstName">--%>
                    <%--<spring:message code="account.form.label.firstName"/>--%>
                <%--</form:label>--%>
            <%--</td>--%>
            <%--<td>--%>
                <%--<form:input path="firstName"/>--%>
            <%--</td>--%>
            <%--<td>--%>
                <%--<form:errors path="firstName"/>--%>
            <%--</td>--%>
        <%--</tr>--%>
        <%--<tr>--%>
            <%--<td>--%>
                <%--<form:label path="lastName">--%>
                    <%--<spring:message code="account.form.label.lastName"/>--%>
                <%--</form:label>--%>
            <%--</td>--%>
            <%--<td>--%>
                <%--<form:input path="lastName"/>--%>
            <%--</td>--%>
            <%--<td>--%>
                <%--<form:errors path="lastName"/>--%>
            <%--</td>--%>
        <%--</tr>--%>
        <%--<tr>--%>
            <%--<td>--%>
                <%--<form:label path="birthdate">--%>
                    <%--<spring:message code="account.form.label.birthdate"/>--%>
                <%--</form:label>--%>
            <%--</td>--%>
            <%--<td>--%>
                <%--<form:input type="date" path="birthdate"/>--%>
            <%--</td>--%>
            <%--<td>--%>
                <%--<form:errors path="birthdate"/>--%>
            <%--</td>--%>
        <%--</tr>--%>
        <%--<tr>--%>
            <%--<td colspan="3">--%>
                <%--<spring:message code="account.form.submit.label" var="labelSubmit"/>--%>
                <%--<input name="submit" type="submit" value="${labelSubmit}"/>--%>
            <%--</td>--%>
        <%--</tr>--%>
    <%--</table>--%>
<%--</form:form>--%>
</div>
</body>
</html>
