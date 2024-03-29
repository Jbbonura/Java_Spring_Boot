<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ page isErrorPage="true" %>  
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Edit My Task</title>
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">
</head>
<body>
	<div class="container">
		<div class="row justify-content-between">
			<div class="col-4"><h1>Edit Expense</h1></div>
			<div class="col-4 align-self-end"><a href="/expenses">Go back</a></div>
		</div>
		<form:form action="/expenses/edit/${expense.id}" method="post" modelAttribute="expense">
			<input type="hidden" name="_method" value="put">
			<p>
				Expense Name:   
				<form:errors path="name"/>
				<form:input path="name"/>
			</p>
			<p>
				Vendor:
				<form:errors path="vendor"/>
				<form:input path="vendor"/>
			</p>
			<p>
				Amount:
				<form:errors path="amount"/>
				<form:input path="amount"/>
			</p>
			<p>
				Description:
				<form:errors path="description"/>
				<form:input path="description"/>
			</p>
			<input type="submit" value="Submit"/>
		</form:form>
	</div>
</body>
</html>