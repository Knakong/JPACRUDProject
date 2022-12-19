<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>

<head>

<%@ include file="bootstrapHead.jsp" %>

<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<div type="container">
<body>
<%@ include file="nav.jsp" %>

<h1>${organism.name}</h1>
<h2>${organism.scientificName}</h2>
<h3>${organism.location}</h3>

<img src="${organism.imgUrl}"/>

<p>
${organism.description}
</p>

<p><a href="goToUpdateForm.do?id=${organism.id}">Update</a></p>


<form action="delete.do?">

<input type="hidden" name="id" value="${organism.id}">

<button type ="submit" >Delete Entry</button>

</form>

</body>


</div>

</html>