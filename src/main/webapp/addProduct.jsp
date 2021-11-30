<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%@page import="dao.ProductManagementDAO"%>
<%@page import="pojo.Product"%>
<%@page import="java.util.*"%>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Add Product</title>
</head>
<body>
	<%@ include file="header.jsp" %>

	<div align="center">
		<form action="processAddProduct.jsp" method="post">
			<table class="productTable">
				<thead>
					<tr>
						<th colspan="2">
							Product Details
						</th>
					</tr>
				</thead>
				<tr>
					<td>Product ID</td>
					<td><input type="text" name="prodId" size="20"
						class="productTextField" /></td>
				</tr>
				<tr>
					<td>Product Name</td>
					<td><input type="text" name="prodName" size="20"
						class="productTextField" /></td>
				</tr>
				<tr>
					<td>Category</td>
					<td><input type="text" name="prodCategory" size="20"
						class="productTextField" /></td>
				</tr>
				<tr>
					<td>Price</td>
					<td><input type="text" name="prodPrice" size="20"
						class="productTextField" /></td>
				</tr>
			</table>
			<button class="actionBtn" style="margin-top:10px">Add</button>
		</form>
	</div>
</body>
</html>