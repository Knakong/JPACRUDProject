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
		<h2>Search Results</h2>








		<c:choose>
		<c:when test="${!empty organisms}">
		<c:forEach items="${organisms}" var="organism">
			<table>
				<thead>
				</thead>

				<tr>

					<td>Id: ${organism.id}</td>

					<td><a href="getOrganism.do?id=${organism.id}">${organism.name}</a>
					<td>
				</tr>







			</table>
		</c:forEach>
		</c:when>
		<c:when test="${empty organisms}">
		<p>No results found</p>
		</c:when>
		</c:choose>
	</body>
</div>
</html>