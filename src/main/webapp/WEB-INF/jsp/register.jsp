<%@ page language="java" contentType="text/html; charset=US-ASCII"
    pageEncoding="US-ASCII"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="US-ASCII">
<title>KAIS | Register</title>
</head>
<body>
	<div class="container">
		<h1>Register</h1>
		<form:form action="/register" method="post" modelattribute="user">
			<div class="form-group">
				<label for="username">Username</label>
				<input type="text" id="username" name="username" required />
			</div>
			<div class="form-group">
				<label for="email">Email</label>
				<input type="email" id="email" name="email" required />
			</div>
			<div class="form-group">
				<label for="password">Password</label>
				<input type="password" id="password" name="password" required />
			</div>
			<div class="form-group">
				<label for="cpassword">Confirm Password</label>
				<input type="password" id="cpassword" name="cpassword" required />
			</div>
			<div class="form-group">
				<a href="/"><button>Cancel</button></a>
				<button type="submit">Register</button>
			</div>
		</form:form>
	</div>
</body>
</html>