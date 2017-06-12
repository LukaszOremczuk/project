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
    <link rel="stylesheet" href="webjars/bootstrap/css/bootstrap.min.css" type="text/css"/>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>Domowy katalog książek</title>
</head>
<body>
<div class="container">
    <div class="row">

        <div class="col-lg-10 col-lg-offset-1">
            <jsp:include page="header.jsp" flush="true"/>
            <h2>
            <span style=" color: #204d74; font-weight: bold; font-size: 1.5em;
             font-family: Helvetica, Georgia, SansSerif; margin-left: 100px">KSIĄŻKA: ${book.title} </span>
            </h2>

            <div style="margin-left: 20%">

                <form:form modelAttribute="book">
                    <table>

                        <tr>
                            <td>
                                <form:label path="category.name"
                                            cssStyle="font-family: Helvetica, Georgia; color: #204d74;
                                             font-size: larger; font-size: 1.3em">
                                    Kategoria:   </form:label>
                            </td>
                            <td>
                                <form:input path="category.name" disabled="true" cssStyle="font-size: 1.3em"/>
                            </td>
                        </tr>

                        <tr>
                            <td>
                                <form:label path="originalTitle"
                                            cssStyle="font-family: Helvetica, Georgia; color: #204d74;
                                             font-size: larger; font-size: 1.3em">
                                    Tytuł oryginalny:   </form:label>
                            </td>
                            <td>
                                <form:input path="originalTitle" disabled="true" cssStyle="font-size: 1.3em"/>
                            </td>
                        </tr>

                        <tr>
                            <td>
                                <form:label path="author.firstName" cssStyle="font-family: Helvetica, Georgia; color: #204d74;
                                font-size: larger; font-size: 1.3em">Autor:   </form:label>
                            </td>
                            <td>
                                <form:input path="author.firstName" disabled="true" cssStyle="width: 140px; font-size: 1.3em"/>
                                <form:input path="author.lastName" disabled="true" cssStyle="width: 140px; font-size: 1.3em"/>
                            </td>
                        </tr>

                        <tr>
                            <td>
                                <form:label path="description" cssStyle="font-family: Helvetica, Georgia; color: #204d74;
                                             font-size: larger; font-size: 1.3em">Opis:   </form:label>
                            </td>
                            <td>
                                <form:input path="description" disabled="true"
                                            cssStyle="width: 500px; height: 100px; font-size: 1.3em; overflow: scroll"/>
                            </td>
                        </tr>

                    </table>
                </form:form>
            </div>
        </div>
    </div>
</div>
</div>
</body>
</html>
