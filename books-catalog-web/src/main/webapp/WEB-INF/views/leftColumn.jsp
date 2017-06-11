<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://www.springframework.org/tags" prefix="spring" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%--<%@ taglib uri="http://bootstrapjsp.org/" prefix="b" %>--%>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>


<%@page language="java" contentType="text/html; charset=utf-8"
        pageEncoding="utf-8" %>
<%@page import="java.util.Enumeration" %>
<%@page import="java.util.Hashtable" %>
<%@page import="java.util.List" %>
<%@page import="java.util.ArrayList" %>
<%@page import="java.util.Iterator" %>
<%@page import="pl.sda.bookscatalog.dao.domain.Book" %>
<%@page import="pl.sda.bookscatalog.dao.domain.Category" %>


<div class="col-lg-2">
    <div class="btn-group-vertical" role="group">
        <ul>
            <li>
                <div>
                    <a href=""> <span>Strona domowa</span>
                    </a>
                </div>
            </li>
            <li>
                <div>
                    <a href=""><span>Wszystkie książki</span></a>
                </div>
            </li>
            <li>
                <div>
                    <span>Kategorie</span>
                </div>
                <ul>

                    <li>
                        <a href=""><span>lista kategorii</span></a>
                    </li>
                </ul>
            </li>
        </ul>

    </div>

</div>