<%@ page language="java" contentType="text/html; charset=US-ASCII"
    pageEncoding="US-ASCII"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="US-ASCII">
<title>KAIS | Product New</title>
</head>
<body>
	<div class="container">
		<h1>New Product</h1>
		
		<form:form action="/products/new" method="post" modelattribute="product">
			<div class="form-group" style="margin-top: 10px; margin-bottom: 20px;">
				<label for="name">Product Name</label>
				<input type="text" id="name" name="name" />
			</div>
			<div class="form-group" style="margin-top: 10px; margin-bottom: 20px;">
				<label for="description">Description</label>
				<input type="text" id="description" name="description" />
			</div>
			<div class="form-group" style="margin-top: 10px; margin-bottom: 20px;">
				<label for="category">Category</label>
				<input type="text" id="category" name="category" />
			</div>
			<div class="form-group" style="margin-top: 10px; margin-bottom: 20px;">
				<label for="price">Price per Unit (MYR)</label>
				<input type="number" id="price" name="price" />
			</div>
			<div class="form-group" style="margin-top: 10px; margin-bottom: 20px;">
				<label for="quantity">Quantity</label>
				<input type="text" id="quantity" name="quantity" />
			</div>
			<div class="form-group" style="margin-top: 10px; margin-bottom: 20px;">
				<button type="submit">Submit</button>
			</div>
		</form:form>
	</div>
	
	<footer style="margin-top: 20px;"><a href="/">KAIS</a> &copy; 2024. Made with love in Machang.</footer>
</body>
</html>