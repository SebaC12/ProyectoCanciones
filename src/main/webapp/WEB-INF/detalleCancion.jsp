<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
    <title>Detalle de Canción</title>
    <link rel="stylesheet" type="text/css" href="<c:url value='/resources/styles.css'/>">
</head>
<body>
    <h1>Detalle de Canción</h1>
    <p><strong>Título:</strong> ${cancion.titulo}</p>
    <p><strong>Artista:</strong> ${cancion.artista}</p>
    <p><strong>Album:</strong> ${cancion.album}</p>
    <p><strong>Género:</strong> ${cancion.genero}</p>
    <p><strong>Idioma:</strong> ${cancion.idioma}</p>

    <a href="<c:url value='/canciones'/>">Volver a lista de canciones</a>
</body>
</html>