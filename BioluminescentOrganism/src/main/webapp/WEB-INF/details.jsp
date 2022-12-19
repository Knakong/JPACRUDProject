<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>

<head>

<%@ include file="bootstrapHead.jsp" %>

<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<div class="container-md p-3 my-3">
<body>
<%@ include file="nav.jsp" %>
<c:choose>
<c:when test="${!empty organism}">

<h1>${organism.name}</h1>
<h2>${organism.scientificName}</h2>
<h3>${organism.location}</h3>

<img class=".img-fluid" src="${organism.imgUrl}"/>

<p>
${organism.description}
</p>

<p><a href="goToUpdateForm.do?id=${organism.id}">Update</a></p>


<form action="delete.do?">

<input type="hidden" name="id" value="${organism.id}">

<button type ="submit" >Delete Entry</button>

</form>

</c:when>
<c:when test="${empty organism}">
<p>No Results Found</p>
</c:when>
</c:choose>
</body>


</div>

</html>