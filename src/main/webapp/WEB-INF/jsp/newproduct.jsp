<%@ page language="java" contentType="text/html; charset=US-ASCII"
    pageEncoding="US-ASCII"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="form" uri="http://java.sun.com/jsp/jstl/form" %>
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
				<input type="text" id="name" name="name" required />
			</div>
			<div class="form-group" style="margin-top: 10px; margin-bottom: 20px;">
				<label for="description">Description</label>
				<input type="text" id="description" name="description" required />
			</div>
			<div class="form-group" style="margin-top: 10px; margin-bottom: 20px;">
				<label for="category">Category</label>
				<input type="text" id="category" name="category" required />
			</div>
			<div class="form-group" style="margin-top: 10px; margin-bottom: 20px;">
				<label for="price">Price per Unit (MYR)</label>
				<input type="number" id="price" name="price" required />
			</div>
			<div class="form-group" style="margin-top: 10px; margin-bottom: 20px;">
				<label for="quantity">Quantity</label>
				<input type="text" id="quantity" name="quantity" required />
			</div>
			<div class="form-group" style="margin-top: 10px; margin-bottom: 20px;">
				<a href="/products"><button>Cancel</button></a>
				<button type="submit">Update</button>
			</div>
		</form:form>
	</div>
	
	<footer style="margin-top: 20px;"><a href="/">KAIS</a> &copy; 2024. Made with love in Machang.</footer>
</body>
</html>