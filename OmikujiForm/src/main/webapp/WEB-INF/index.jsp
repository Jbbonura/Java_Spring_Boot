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
		<div class="row justify-content-start">
			<div class="col-4">
				<h1>Send an Omikuji!</h1>
				<form action="/action" method="post">
					  <div class="mb-3">
					  		<label for="number" class="form-label">Pick any number from 5 to 25.</label>
					  		<input type="number" name="number" min="5" max="25" value="5">
					  </div>
					  <div class="mb-3">
						    <label for="city" class="form-label">Enter the name of the city.</label>
						    <input type="text" class="form-control" name="city">
					  </div>
					  <div class="mb-3">
						    <label for="name" class="form-label">Enter the name of any real person.</label>
						    <input type="text" class="form-control" name="name">
					  </div>
					  <div class="mb-3">
						    <label for="hobby" class="form-label">Enter professional endeavor or hobby.</label>
						    <input type="text" class="form-control" name="hobby">
					  </div>
					  <div class="mb-3">
						    <label for="livingThing" class="form-label">Enter any type of living thing.</label>
						    <input type="text" class="form-control" name="livingThing">
					  </div>
					  <div class="mb-3">
						    <label for="compliment" class="form-label">Say something nice to someone.</label>
						    
						    <textarea name="compliment" rows="5" cols="33"></textarea>
					  </div>
					  <p>Send and show a friend</p>
					  <button type="submit" class="btn btn-primary">Submit</button>
				</form>
			</div>
		</div>
	</div>
</body>
</html>