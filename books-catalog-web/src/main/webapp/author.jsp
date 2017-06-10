<%--
  Created by IntelliJ IDEA.
  User: RENT
  Date: 2017-06-09
  Time: 19:32
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8" %>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>author</title>
</head>

<body>

<table class="table">
    <tr>
        <th width="210">Author ID</th>
        <th width="200">First Name</th>
        <th width="200">Last Name</th>

    </tr>
    <c:choose>
        <c:when test="${!empty authors}">
            <c:forEach items="${authors}" var="author">
                <tr>
                    <td>${author.idAuthor}</td>
                    <td>${author.firstName}</td>
                    <td>${author.lastName}</td>


                </tr>
            </c:forEach>
        </c:when>
        <c:otherwise>
            <tr>
                <td>No authors found</td>
            </tr>
        </c:otherwise>
    </c:choose>
</table>

</body>
</html>
