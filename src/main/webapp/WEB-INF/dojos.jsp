<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<title>Dojos</title>
	<link rel="stylesheet" href="/webjars/bootstrap/css/bootstrap.min.css" />
	<link rel="stylesheet" type="text/css" href="/css/dojos.css">
</head>
<body>
	<div id="container">
		<h1>All Dojos</h1>
		<table class="table table-striped table-bordered table-hover">
			<thead>
				<tr>
					<th scope="col">ID</th>
					<th scope="col">Dojo Location</th>
				</tr>
			</thead>
			<tbody>
				<c:forEach var="dojos" items="${dojos}">
				<tr> 
					<td class="align-middle"><c:out value="${dojos.id}"></c:out></td>
					<td class="align-middle"><a href="/dojos/${dojos.id}"><c:out value="${dojos.location}"></c:out></a></td>
					</tr>
					</c:forEach>
			</tbody>
		</table>
		<a href="/dojos/new">Add New Dojo</a>
	</div>
</body>
</html>