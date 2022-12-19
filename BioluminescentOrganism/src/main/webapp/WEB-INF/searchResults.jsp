<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>


<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>



<!DOCTYPE html>
<html>
<head>
<%@ include file="bootstrapHead.jsp"%>
</head>
<meta charset="UTF-8">
<title>search results</title>

<body>
	<div type="container-md">
		<%@ include file="nav.jsp"%>
		<h2>Search Results</h2>








		<c:choose>
			<c:when test="${!empty organisms}">
				<c:forEach items="${organisms}" var="organism">
					<table class="table table-hover">
						<thead>
						</thead>
						<th>ID</th>
						<th>Name</th>
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
	</div>
</body>
</html>