<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %> 
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form" %>

<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Editar Canción</title>
</head>
<body>

<h1>Editar Canción</h1>

<form:form method="POST" action="/canciones/procesa/editar/${cancion.id}" modelAttribute="cancion">
    <input type="hidden" name="_method" value="put"/>
    
    <form:label path="titulo">Título:</form:label>
    <form:input path="titulo"/>
    <form:errors path="titulo" cssClass="error"/>
    <br><br>

    <form:label path="artista">Artista:</form:label>
    <form:input path="artista"/>
    <form:errors path="artista" cssClass="error"/>
    <br><br>

    <form:label path="album">Álbum:</form:label>
    <form:input path="album"/>
    <form:errors path="album" cssClass="error"/>
    <br><br>

    <form:label path="genero">Género:</form:label>
    <form:input path="genero"/>
    <form:errors path="genero" cssClass="error"/>
    <br><br>

    <form:label path="idioma">Idioma:</form:label>
    <form:input path="idioma"/>
    <form:errors path="idioma" cssClass="error"/>
    <br><br>

    <button type="submit">Actualizar Canción</button>

</form:form>

<br>

<a href="/canciones">Volver a lista de canciones</a>

</body>
</html>
