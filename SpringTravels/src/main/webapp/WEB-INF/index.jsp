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
					<th scope="col">Actions</th>
				</tr>
			</thead>
			<tbody>
				<c:forEach var="expense" items="${expenses}">
					<tr>
						<td><a href="/expenses/${expense.id}"><c:out value="${expense.name}" /></a></td>
						<td><c:out value="${expense.vendor}" /></td>
						<td>$<c:out value="${expense.amount}" /></td>
						<td>
							<a href="/expenses/edit/${expense.id}">edit</a>
							<form action="/expenses/${expense.id}" method="post">
								<input type="hidden" name="_method" value="delete">
								<input type="submit" value="Delete">
							</form>
						</td>
					</tr>
				</c:forEach>
			</tbody>
		</table>
		<h1>Add an expense</h1>
		<form:form action="/expenses/new" method="post" modelAttribute="expense">
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