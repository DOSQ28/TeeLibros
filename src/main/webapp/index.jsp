<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page import="java.util.List"%>
<%@page import="com.emergentes.modelo.Libro"%>
<%
    /*recuperamos la lista */
    List<Libro> lib = (List<Libro>) request.getAttribute("lista");    
%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <h1>Listado de Libros</h1>
        <p><a href="MainController?op=nuevo">Nuevo</a></p>
        <table border='1'>
            <tr>
                <th>ID</th>
                <th>ISBM</th>
                <th>TITULO</th>
                <th>CATEGORIA</th>
                <th></th>
                <th></th>
            </tr>
            <c:forEach var="item" items="${lista}">
                <tr>                                        
                    <td>${item.id}</td>
                    <td>${item.isbn}</td>
                    <td>${item.titulo}</td>
                    <td>${item.categoria}</td>
                    <td>
                        <a href="MainController?op=eliminar&id=${item.id}" onclick="return(confirm('Esta Seguro'))">Eliminar</a>
                    </td>
                    <td> <a href="MainController?op=modificar&id=${item.id}">Modificar</a> </td> 
                </tr>
            </c:forEach>
        </table>
    </body>
</html>
