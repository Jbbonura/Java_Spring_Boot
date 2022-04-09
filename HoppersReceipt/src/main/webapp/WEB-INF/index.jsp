<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Simple Receipt</title>
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">
</head>
<body>
	<div class="container">
		<h1>Customer Name: <c:out value="${name}"/></h1>
		<h3>Item name: <c:out value="${itemName}"/></h3>
		<h3>Price: <c:out value="${price}"/></h3>
		<h3>Description: <c:out value="${description}"/></h3>
		<h3>Vender: <c:out value="${vendor}"/></h3>
	</div>
</body>
</html>