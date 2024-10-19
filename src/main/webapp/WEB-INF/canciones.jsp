<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
    <title>Lista de Canciones</title>
    <link rel="stylesheet" type="text/css" href="<c:url value='/resources/styles.css'/>">
</head>
<body>
    <h1>Lista de Canciones</h1>
    <table border="1">
        <thead>
            <tr>
                <th>Título</th>
                <th>Artista</th>
                <th>Detalle</th>
                <th>Editar</th>
            </tr>
        </thead>
        <tbody>
            <c:forEach var="cancion" items="${canciones}">
                <tr>
                    <td>${cancion.titulo}</td>
                    <td>${cancion.artista}</td>
                    <td>
                        <a href="<c:url value='/canciones/detalle/${cancion.id}'/>">Detalle</a>
                    </td>
                    <td>
                    	<a href="<c:url value='/canciones/editar/${cancion.id}'/>">Editar</a>
                    </td>
                </tr>
            </c:forEach>
        </tbody>
    </table>
    <div>
        <a href="<c:url value='/formulario/agregar'/>">Agregar Canción</a>
    </div>
</body>
</html>