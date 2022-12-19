<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>


<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>



<!DOCTYPE html>
<html>
<head>

<%@ include file="bootstrapHead.jsp"%>
</head>
<meta charset="UTF-8">
<title>Bioluminescent Organisms</title>

<body>
	<div class="container-md pt-3">
		<%@ include file="nav.jsp"%>



		<form action="getOrganism.do" method="GET">
			ID: <input type="text" name="id" /> <input type="submit"
				value="Search by Organism id" />
		</form>

		<br>
		<form action="searchByKeyword.do" method="GET">
			Keywords: <input type="text" name="keyword" /> <input type="submit"
				value="Keyword Search">
		</form>


		<h2></h2>

		<table class="table table-hover">
			<thead>
				<tr>
					<th>ID</th>
					<th>Name</th>
				</tr>
			</thead>
				<c:forEach items="${organisms}" var="organism">
			<tbody>
					<tr>

						<td>Id: ${organism.id}</td>

						<td><a href="getOrganism.do?id=${organism.id}">${organism.name}</a></td>

					</tr>
			</tbody>
		
		</c:forEach>
		</table>
</body>
</div>
</html>