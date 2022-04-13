<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Read Share</title>
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">
</head>
<body>
	<div class="container">
		<h1>Save Travels</h1>
		<table class="table table-striped">
			<thead>
				<tr>
					<th scope="col">Expense</th>
					<th scope="col">Vendor</th>
					<th scope="col">Amount</th>
				</tr>
			</thead>
			<tbody>
				<c:forEach var="expense" items="${expenses}">
					<tr>
						<td><c:out value="${expense.name}" /></td>
						<td><c:out value="${expense.vendor}" /></td>
						<td>$<c:out value="${expense.amount}" /></td>
					</tr>
				</c:forEach>
			</tbody>
		</table>
		<h1>Add an expense</h1>
		<form:form action="/new/expense" method="post" modelAttribute="expense">
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