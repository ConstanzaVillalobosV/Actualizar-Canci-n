<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Detalle cancion</title>
</head>
<body>
	<h1>${cancion.titulo}</h1>
	<p>Artista: ${cancion.artista}</p>
	<p>Album: ${cancion.album}</p>
	<p>Genero: ${cancion.genero}</p>
	<p>Idioma: ${cancion.idioma}</p>
	<a href="/canciones">Volver a la lista de canciones</a>
</body>
</html>