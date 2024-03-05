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
		<h1>KAIS System | Register</h1>
		<form:form action="/register" method="post" modelattribute="user">
			<div class="form-group" style="margin-bottom: 10px;">
				<label for="username" style="padding-right: 54px;">Username</label>
				<input type="text" id="username" name="username" required />
			</div>
			<div class="form-group" style="margin-bottom: 10px;">
				<label for="email" style="padding-right: 80px;">Email</label>
				<input type="email" id="email" name="email" required />
			</div>
			<div class="form-group" style="margin-bottom: 10px;">
				<label for="password" style="padding-right: 58px;">Password</label>
				<input type="password" id="password" name="password" required />
			</div>
			<div class="form-group" style="margin-bottom: 10px;">
				<label for="cpassword">Confirm Password</label>
				<input type="password" id="cpassword" name="cpassword" required />
			</div>
			<c:if test="${not empty errmsg}">
			<div class="form-group" style="margin-bottom: 10px;">
				<p style="color: red;">${errmsg}</p>
			</div>
			</c:if>
			<div class="form-group" style="margin-top: 20px;">
				<a href="/"><button>Cancel</button></a>
				<button type="submit">Register</button>
			</div>
		</form:form>
	</div>
	
	<footer style="margin-top: 20px;"><a href="/">KAIS</a> &copy; 2024. Made with love in Machang.</footer>
</body>
</html>