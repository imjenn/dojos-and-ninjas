<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<title>Insert title here</title>
	<link rel="stylesheet" href="/webjars/bootstrap/css/bootstrap.min.css" />
	<link rel="stylesheet" type="text/css" href="/css/show.css">
</head>
<body>
	<div class="dojo-detail">
		<h1>${dojo.location} Location Ninjas</h1>
		<table class="table table-striped table-bordered table-hover">
			<thead>
				<tr>
					<th scope="col">First Name</th>
					<th scope="col">Last Name</th>
					<th scope="col">Age</th>
				</tr>
			</thead>
			<tbody>
				<c:forEach var="ninjas" items="${dojo.ninjas}">
				<tr> 
					<td class="align-middle"><c:out value="${ninjas.firstName}"/></td>
					<td class="align-middle"><c:out value="${ninjas.lastName}"/></td>
					<td class="align-middle"><c:out value="${ninjas.age}"/></td>
				</tr>
				</c:forEach>
			</tbody>
		</table>
		<footer>
			<a href="/dojos">Back to Dashboard</a>
			<a href="/ninjas/new">Add a New Ninja</a>
		</footer>
	</div>
</body>
</html>