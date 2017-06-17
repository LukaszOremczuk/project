<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://www.springframework.org/tags" prefix="spring" %>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form" %>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>

<!DOCTYPE html>
<html lang="pl">
<head>
    <meta charset="UTF-8">
    <title>library</title>
</head>
<body>
<div class="container">
    <div class="row">

        <div class="col-lg-10 col-lg-offset-1">
            <jsp:include page="header.jsp" flush="true"/>
            <h2>
<%--            <span style=" color: #204d74; font-weight: bold; font-size: 1.5em;
             font-family: Helvetica, Georgia, SansSerif; margin-left: 100px">KSIĄŻKA: ${book.title} </span>--%>
            </h2>

            <div style="margin-left: 20%">
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
                                <form:label path="category.name"
                                            cssStyle="font-family: Helvetica, Georgia; color: #204d74;
                                             font-weight: bolder; font-size: 1.3em">
                                    Kategoria: </form:label>
                            </td>
                            <td>
                                <form:input path="category.name" disabled="false" cssStyle="font-size: 1.3em"/>
                            </td>
                        </tr>

                        <tr>
                            <td>
                                <form:label path="title"
                                            cssStyle="font-family: Helvetica, Georgia; color: #204d74;
                                             font-weight: bolder; font-size: 1.3em">
                                    Tytuł: </form:label>
                            </td>
                            <td>
                                <form:input path="title" disabled="false" cssStyle="font-size: 1.3em"/>
                            </td>
                        </tr>


                        <tr>
                            <td>
                                <form:label path="originalTitle"
                                            cssStyle="font-family: Helvetica, Georgia; color: #204d74;
                                             font-weight: bolder; font-size: 1.3em">
                                    Tytuł oryginalny: </form:label>
                            </td>
                            <td>
                                <form:input path="originalTitle" disabled="false" cssStyle="font-size: 1.3em"/>
                            </td>
                        </tr>

                        <tr>
                            <td>
                                <form:label path="author.firstName" cssStyle="font-family: Helvetica, Georgia; color: #204d74;
                                font-weight: bolder; font-size: 1.3em">Autor: </form:label>
                            </td>
                            <td>
                                <form:input path="author.firstName" disabled="false"
                                            cssStyle="width: 140px; font-size: 1.3em"/>
                                <form:input path="author.lastName" disabled="false"
                                            cssStyle="width: 140px; font-size: 1.3em"/>
                            </td>
                        </tr>

                        <tr>
                            <td>
                                <form:label path="description" cssStyle="font-family: Helvetica, Georgia; color: #204d74;
                                             font-weight: bolder; font-size: 1.3em">Opis: </form:label>
                            </td>
                            <td>
                                <form:textarea path="description" disabled="false"
                                               cssStyle="width: 500px; height: 200px; font-size: 1.3em; word-wrap:physical"/>
                            </td>
                        </tr>
                        <tr>
                            <td colspan="3">
                                <input name="submit" type="submit" value="Zapisz"/>
                            </td>
                        </tr>
                    </table>

                </form:form>
            </div>
        </div>
    </div>
</div>
<jsp:include page="footer.jsp" flush="true"/>
</body>
</html>
