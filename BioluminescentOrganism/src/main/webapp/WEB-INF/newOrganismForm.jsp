<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<!DOCTYPE html>
<html>
<head>
<%@ include file="bootstrapHead.jsp"%>
</head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
	<body>
<%@ include file="nav.jsp"%>
<div class="container-md">
	
	
	
	<form action="addOrganism.do"  method="GET">
	
	<label for="name"> Name: </label><br>
	<input type="text" id="name" name="name"><br>
	
	
	<label for="scientificName">Scientific Name: </label><br>
	<input type="text" id="scientificName" name="scientificName"><br>
	
	<label for="location">Location: </label><br>
	<input type="text" id="location" name="location">
	
	<label for="description">Description</label><br>
	<textarea id="description" name="description" rows="10" cols="30"></textarea><br><br>
	
	<label for="imgUrl">Image URL: </label><br>
	<input type="text" id="imgUrl" name="imgUrl"><br>
	
	
	<input type="submit" value="Submit">
	
	</form>
	
	
	
	
	
	
	</div>
	</body>
</html>