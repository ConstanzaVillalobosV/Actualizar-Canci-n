<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Canciones</title>
</head>
<body>
	<h1>Canciones</h1>
	<table>
		<thead>
			<tr>
				<th>Titulo</th>
				<th>Autor</th>
				<th>Detalle</th>
			</tr>
		</thead>
		<tbody>
			<c:forEach var="cancion" items="${listaCanciones}">
				<tr>
					<td>${cancion.titulo}</td>
					<td>${cancion.artista}</td>
					<td>
						<a href="/canciones/detalle/${cancion.id}">Detalle</a>
					</td>
				</tr>
			</c:forEach>
		</tbody>
	</table>
</body>
</html>