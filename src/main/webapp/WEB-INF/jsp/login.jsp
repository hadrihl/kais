<%@ page language="java" contentType="text/html; charset=US-ASCII"
    pageEncoding="US-ASCII"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="US-ASCII">
<title>KAIS | Login</title>
</head>
<body>
	<div class="container">
		<h1>KAIS System | Login</h1>
		<form:form action="/login" method="post">
			<div class="form-group" style="margin-bottom: 10px;">
				<label for="username" style="padding-right: 5px;">Username</label>
				<input type="text" id="username" name="username" required> 
			</div>
			<div class="form-group" style="margin-bottom: 10px;">
				<label for="password" style="padding-right: 8px;">Password</label>
				<input type="password" id="password" name="password" required />
			</div>
			<c:if test="${not empty errmsg}">
			<div class="form-group" style="margin-bottom: 10px;">
				<p style="color: red;">${errmsg}</p>
			</div>
			</c:if>
			<div class="form-group" style="margin-top: 20px;">
				<button type="submit">Submit</button>
			</div>
		</form:form>
	</div>
	<footer style="margin-top: 20px;"><a href="/">KAIS</a> &copy; 2024. Made with love in Machang.</footer>
</body>
</html>