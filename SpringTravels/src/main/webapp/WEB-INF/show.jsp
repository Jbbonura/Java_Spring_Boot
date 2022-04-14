<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ page isErrorPage="true" %>  
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Show Expense</title>
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">
</head>
<body>
	<div class="container">
		<div class="row justify-content-between">
			<div class="col-4"><h1>Expense Details</h1></div>
			<div class="col-4 align-self-end"><a href="/expenses">Go back</a></div>
		</div>
		
		<p>Expense Name:         <c:out value="${expense.name}"/></p>
		<p>Expense Description:  <c:out value="${expense.description}"/></p>
		<p>Vendor:               <c:out value="${expense.vendor}"/></p>
		<p>Amount Spent:         $<c:out value="${expense.amount}"/></p>
	</div>
</body>
</html>