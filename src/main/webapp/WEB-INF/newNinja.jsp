<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<title>New Ninja</title>
	<link rel="stylesheet" href="/webjars/bootstrap/css/bootstrap.min.css" />
	<link rel="stylesheet" type="text/css" href="/css/newNinja.css">
</head>
<body>
	<div id="container">
		<h1>New Ninja</h1>
		<form:form class="form" action="/ninjas/new" method="post" modelAttribute="ninja">
			<p>
				<form:label path="dojo">Dojo: </form:label>
				<form:select path="dojo">
					<c:forEach items="${dojos}" var="dojo">
						<form:option value="${dojo}"><c:out value="${dojo.location}"/></form:option>
					</c:forEach>
				</form:select>
        		<%-- <form:errors style="color:red" path="firstName"/>
        		<form:input class="form-control" type="text" name="firstName" path="firstName"/> --%>
			</p>
   	 		<p>
        		<form:label path="firstName">First Name: </form:label>
        		<form:errors style="color:red" path="firstName"/>
        		<form:input class="form-control" type="text" name="firstName" path="firstName"/>
    		</p>
    		<p>
		        <form:label path="lastName">Last Name: </form:label>
		        <form:errors style="color:red" path="lastName"/>
		        <form:input class="form-control" type="text" path="lastName"/>
		    </p>
		    <p>
		        <form:label path="age">Age: </form:label>
		        <form:errors style="color:red" path="age"/>
		        <form:input class="form-control" type="number" path="age"/>
		    </p> 
		    <input type="submit" class="btn btn-primary" value="Submit"/>
		</form:form>   
	</div>
</body>
</html>