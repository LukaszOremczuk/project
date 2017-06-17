<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://www.springframework.org/tags" prefix="spring" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>

<c:url var="listbookURL" value="/books"/>
<c:url var="listauthorsURL" value="/authors"/>
<c:url var="addbookURL" value="/addBook"/>
<c:url var="homeURL" value="/home"/>


<!DOCTYPE html>
<html lang="pl">
<body>
<div class="container">
    <div class="row">
        <div class="col-lg-12">
            <div class="page-header">

                <h1><span>DOMOWY KATALOG KSIĄŻEK</span>
                </h1>
            </div>
        </div>

        <div class="col-lg-12">
            <nav class="navbar navbar-default">
                <div class="container-fluid">
                    <div class="navbar-header">
                        <button type="button" class="navbar-toggle collapsed" data-toggle="collapse"
                                data-target="#bs-example-navbar-collapse-1" aria-expanded="false">
                            <span class="sr-only">Toggle navigation</span>
                            <span class="icon-bar"></span>
                            <span class="icon-bar"></span>
                            <span class="icon-bar"></span>
                        </button>
                        <a class="navbar-brand" href="${homeURL}">Strona główna</a>
                    </div>
                    <div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">
                        <ul class="nav navbar-nav">
                            <li class="active"><a href="${listbookURL}">Lista książek<span class="sr-only">(current)</span></a></li>
                            <li class="active"><a href="${listauthorsURL}">Lista autorów<span class="sr-only">(current)</span></a></li>
                            <li class="active"><a href="${addbookURL}">Dodaj książkę<span class="sr-only">(current)</span></a></li>
                            <li class="dropdown">
                                <a href="#" class="dropdown-toggle" data-toggle="dropdown" role="button"
                                   aria-haspopup="true" aria-expanded="false">Wybierz kategorię<span
                                        class="caret"></span></a>
                                <ul class="dropdown-menu">
                                    <li><a href="#">edukacyjne</a></li>
                                    <li><a href="#">historyczne</a></li>
                                    <li><a href="#">kryminalne</a></li>
                                    <li><a href="#">fantasy</a></li>
                                    <li><a href="#">sci-fi</a></li>
                                    <li><a href="#">sensacyjne</a></li>
                                    <li><a href="#">biograficzne</a></li>
                                    <li><a href="#">kulinarne</a></li>
                                </ul>
                            </li>
                        </ul>
                        <form class="navbar-form navbar-left">
                            <div class="form-group">
                                <input type="text" class="form-control" placeholder="Szukaj (tytuł lub część)">
                            </div>
                            <button type="submit" class="btn btn-primary"><a href="searchBook">Szukaj</a></button>
                        </form>
                    </div>
                </div>
            </nav>
        </div>
    </div>
</div>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.1/jquery.min.js"></script>
<script src="webjars/bootstrap/js/bootstrap.min.js"></script>
</body>
</html>
