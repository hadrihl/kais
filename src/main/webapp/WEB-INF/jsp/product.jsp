<%@ page language="java" contentType="text/html; charset=US-ASCII"
    pageEncoding="US-ASCII"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="US-ASCII">
<title>KIAS | Product</title>
</head>
<body>
	<div class="container">
		<h1>Edit Product</h1>
		<form:form action="/products/${product.id}" method="post" modelattribute="product">
			<div class="form-group" style="margin-top: 10px; margin-bottom: 20px;">
				<label for="name">Product Name</label>
				<input type="text" id="name" name="name" value="${product.name}" />
			</div>
			<div class="form-group" style="margin-top: 10px; margin-bottom: 20px;">
				<label for="description">Description</label>
				<input type="text" id="description" name="description" value="${product.description}" />
			</div>
			<div class="form-group" style="margin-top: 10px; margin-bottom: 20px;">
				<label for="category">Category</label>
				<input type="text" id="category" name="category" value="${product.category}" />
			</div>
			<div class="form-group" style="margin-top: 10px; margin-bottom: 20px;">
				<label for="price">Price per Unit (MYR)</label>
				<input type="number" id="price" name="price" value="${product.price}" />
			</div>
			<div class="form-group" style="margin-top: 10px; margin-bottom: 20px;">
				<label for="quantity">Quantity</label>
				<input type="text" id="quantity" name="quantity" value="${product.quantity}" />
			</div>
			<c:if test="${not empty errmsg}">
			<div class="form-group">
				<p style="color: red">${errmsg}</p>
			</div>	
			</c:if>
			<c:if test="${not empty msg}">
			<div class="form-group">
				<p style="color: green;">${msg}</p>
			</div>
			</c:if>
			<div class="form-group" style="margin-top: 10px; margin-bottom: 20px;">
				<button><a href="/products">Cancel</a></button>
				<button type="submit">Update</button>
			</div>
		</form:form>
	</div>
	
	<footer style="margin-top: 20px;"><a href="/">KAIS</a> &copy; 2024. Made with love in Machang.</footer>
</body>
</html>