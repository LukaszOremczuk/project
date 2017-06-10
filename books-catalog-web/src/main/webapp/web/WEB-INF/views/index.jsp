<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://www.springframework.org/tags" prefix="spring" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>bookscatalog</title>
</head>
<body>
<h2>DOMOWY KATALOG KSIĄŻEK</h2>

<h3>Lista wszystkich książek</h3>
<table class="tg">
    <tr>
        <th width="200">Tytuł</th>
        <th width="200">Tytuł oryginalny</th>
        <th width="210">Opis</th>
    </tr>
    <c:choose>
        <c:when test="${!empty listBooks}">
            <c:forEach items="${listBooks}" var="book">
                <tr>
                    <td>${book.title}</td>
                    <td>${book.originalTitle}</td>
                    <td>${book.description}</td>
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
                <td>Brak książek do wyświetlenia"/></td>
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
</body>
</html>
