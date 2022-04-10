<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Fruit Store</title>
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">
<link rel="stylesheet" type="text/css" href="/css/Styles.css">
</head>
<body>

	<div class="container">
		<h1>Fruit Store</h1>
		<table class="table">
			<thead>
			    <tr>
			      	<th scope="col">Name</th>
			      	<th scope="col">Price</th>
			    </tr>
			</thead>
			<tbody>
			    <c:forEach var="fruit" items="${fruits}">
			    	<tr>
			    		<td><c:out value="${fruit.name}"></c:out></td>
			    		<td><c:out value="${fruit.price}"></c:out></td>
			    	</tr>
			    </c:forEach>
			</tbody>
		</table>
	</div>
</body>
</html>