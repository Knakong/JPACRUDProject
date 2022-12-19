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
<div type="container">
	<body>
		<%@ include file="nav.jsp"%>
		<h2> Delete Confirmation</h2>
<br>
		<c:choose>
		<c:when test="${deleted}">
		<p>Organism Delete</p>
		</c:when>
		
		<c:when test="${!deleted}">
		<p>Organism not Deleted</p>
		</c:when>
		</c:choose>
			
			
		
	</body>
</div>
</html>