<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Omikuji</title>
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">
</head>
<body>

	<div class="container">
		<div class="row justify-content-center">
			<div class="col-4">
				<h1>Here's Your Omikuji!</h1>
			</div>
			<div class="w-100"></div>
			<div class="col-4" style="background-color: lightblue;">
				<h3>In <c:out value="${number}"/> years, you will live in <c:out value="${city}"/> with 
				<c:out value="${name}"/> as your roommate, <c:out value="${hobby}"/> for a living. 
				The next time you see a <c:out value="${livingThing}"/>, you will have good luck. 
				Also, <c:out value="${compliment}"/></h3>
			</div>
			<div class="w-100"></div>
			<div class="col-4">
				<p><a href="/omikuji">Go Back</a></p>
			</div>
		</div>
	</div>
</body>
</html>