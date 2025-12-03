<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %> 
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form" %>

<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Agregar Canción</title>
</head>
<body>

<h1>Agregar Nueva Canción</h1>

<!-- envia la información al backend -->
<form:form method="POST" action="/canciones/procesa/agregar" modelAttribute="cancion">
    <!-- Formulario recibe los datos y muestra mensaje si falla la validación-->
    <!-- Formulario título -->
    <form:label path="titulo">Título:</form:label>
    <form:input path="titulo"/>
    <form:errors path="titulo" cssClass="error"/>
    <br><br>

    <!-- Formulario artista -->
    <form:label path="artista">Artista:</form:label>
    <form:input path="artista"/>
    <form:errors path="artista" cssClass="error"/>
    <br><br>

    <!-- Formulario álbum -->
    <form:label path="album">Álbum:</form:label>
    <form:input path="album"/>
    <form:errors path="album" cssClass="error"/>
    <br><br>

    <!-- Formulario género-->
    <form:label path="genero">Género:</form:label>
    <form:input path="genero"/>
    <form:errors path="genero" cssClass="error"/>
    <br><br>

    <!--Formulario idioma -->
    <form:label path="idioma">Idioma:</form:label>
    <form:input path="idioma"/>
    <form:errors path="idioma" cssClass="error"/>
    <br><br>

    <button type="submit">Agregar Canción</button>

</form:form>

<br><br>

<a href="/canciones">Volver a lista de canciones</a>

</body>
</html>
