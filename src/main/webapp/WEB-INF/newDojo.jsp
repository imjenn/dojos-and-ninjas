<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<title>New Dojo</title>
	<link rel="stylesheet" href="/webjars/bootstrap/css/bootstrap.min.css" />
	<link rel="stylesheet" type="text/css" href="/css/newDojo.css">
</head>
<body>
	<div id="container">
		<h1>New Dojo</h1>
		<form:form action="/dojos/new" method="post" modelAttribute="dojo">
   	 		<p>
        		<form:label path="location">Location: </form:label>
        		<form:errors style="color:red" path="location"/>
        		<form:input class="form-control" type="text" name="location" path="location"/>
    		</p>
		    <input type="submit" class="btn btn-primary" value="Submit"/>
		</form:form>
	</div>
</body>
</html>