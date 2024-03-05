<%@ page language="java" contentType="text/html; charset=US-ASCII"
    pageEncoding="US-ASCII"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="US-ASCII">
<title>KAIS | Products</title>
</head>
<body>
	<div class="container">
		<c:if test="${not empty products}">
			<table>
				<thead>
					<tr>
						<th>#</th>
						<th>Product Name</th>
						<th>Description</th>
						<th>Category</th>
						<th>Price per unit (MYR)</th>
						<th>Quantity</th>
						<th>#Action</th>
					</tr>
				</thead>
				<tbody>
					<c:forEach var="product" items="${products}" varStatus="row">
					<tr>
						<td>${row.index + 1}</td>
						<td><a href="/products/${product.id}">${product.name}</a></td>
						<td>${product.description}</td>
						<td>${product.category}</td>
						<td>${product.price}</td>
						<td>${product.quantity}</td>
						<td>Delete</td>
					</tr>
					</c:forEach>
				</tbody>
			</table>
		</c:if>
		
		<c:if test="${empty products}">
		<span style="color:red;">No product(s) found.</span>
		</c:if>
	</div> <!--  end of container -->
	
	<footer style="margin-top: 20px;"><a href="/">KAIS</a> &copy; 2024. Made with love in Machang.</footer>
</body>
</html>