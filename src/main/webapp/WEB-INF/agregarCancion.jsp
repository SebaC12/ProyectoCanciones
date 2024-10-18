<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<title>Agregar Cancion</title>
	</head>
	<body>
		<h1>Agregar Cancion</h1>
		<form:form modelAttribute="cancion" action="/procesa/agregar" method="POST">
			<div>
				<form:label path="titulo">Título: </form:label>
				<form:input path="titulo" />
				<form:errors path="titulo" cssClass="error" />
			</div>
			<div>
				<form:label path="artista">Artista: </form:label>
				<form:input path="artista" />
				<form:errors path="artista" cssClass="error" />
			</div>
			<div>
				<form:label path="album">Álbum: </form:label>
				<form:input path="album" />
				<form:errors path="album" cssClass="error" />
			</div>
			<div>
				<form:label path="genero">Género: </form:label>
				<form:input path="genero" />
				<form:errors path="genero" cssClass="error" />
			</div>
			<div>
				<form:label path="idioma">Idioma: </form:label>
				<form:input path="idioma" />
				<form:errors path="idioma" cssClass="error" />
			</div>
			<input type="submit" value="Enviar" />
		</form:form>
		<a href="<c:url value='/canciones'/>">Volver a lista de canciones</a>
	</body>
</html>