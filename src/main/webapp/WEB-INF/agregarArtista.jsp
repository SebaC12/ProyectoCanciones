<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<title>Agregar Artista</title>
		<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-QWTKZyjpPEjISv5WaRU9OFeRpok6YctnYmDr5pNlyT2bRjXh0JMhjY6hW+ALEwIH" crossorigin="anonymous">
		<link href="/css/artista.css" rel="stylesheet"/>
	</head>
	<body>
		<h1>Agregar Artista</h1>
		<form:form modelAttribute="artista" action="/procesa/agregar/Artista" method="POST">
			<div>
				<form:label path="nombre">Nombre: </form:label>
				<form:input path="nombre" />
				<form:errors path="nombre" cssClass="error" />
			</div>
			<div>
				<form:label path="apellido">Apellido: </form:label>
				<form:input path="apellido" />
				<form:errors path="apellido" cssClass="error" />
			</div>
			<div>
				<form:label path="biografia">Biografía: </form:label>
				<form:input path="biografia" />
				<form:errors path="biografia" cssClass="error" />
			</div>
			<input type="submit" value="Enviar" />
		</form:form>
		<a href="<c:url value='/artistas'/>">Volver a lista de canciones</a>
		<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-YvpcrYf0tY3lHB60NNkmXc5s9fDVZLESaAA55NDzOxhy9GkcIdslK1eN7N6jIeHz" crossorigin="anonymous"></script>
	</body>
</html>