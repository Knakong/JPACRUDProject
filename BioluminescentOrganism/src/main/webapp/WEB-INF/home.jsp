<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>


<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
    
    
 
<!DOCTYPE html>
<html>
<head>
<%@ include file="bootstrapHead.jsp" %>
</head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<div>
<body>
<%@ include file="nav.jsp" %>
<h1>This is the place</h1>

<h2></h2>

<c:forEach items="${organisms}" var="organism" >
<table>
<thead>
</thead>

<tr>

<td>Id: ${organism.id}  </td>

<td>  <a href="getOrganism.do?id=${organism.id}">${organism.name}</a><td>

</tr>







</table>
</c:forEach>
</body>
<div>
</html>