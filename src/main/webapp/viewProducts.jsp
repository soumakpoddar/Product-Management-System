<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@page import="dao.ProductManagementDAO"%>
<%@page import="pojo.Product"%>
<%@page import="pojo.Exporter"%>
<%@page import="java.util.*"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
	<head>
		<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
		<title>View Products</title>
	</head>
	<body>
	<%@ include file="header.jsp" %>
		<script type="text/javascript">
			function alt(){
				alert("Product.csv File Created at Desktop...");
			}
		</script>
	
		<table align="center" class="productTable">
			<thead>
				<tr>
					<th>Product ID</th>
					<th>Product Name</th>
					<th>Category</th>
					<th>Price</th>
					<th colspan="2">Actions</th>
				</tr> 
			</thead>
			<%
				List<Product> productList = ProductManagementDAO.getAllProducts();
			    Exporter e=new Exporter();
				for (Product p : productList) {
			%>
			<tr>
				<td><%=p.getProductId()%></td>
				<td><%=p.getProductName()%></td>
				<td><%=p.getProductCategory()%></td>
				<td><%= p.getProductPrice() %></td>
				<td><button class="actionBtn" onclick="location.href = 'editProduct.jsp?prodId=<%= p.getProductId()%>';">Edit</button></td>
				<td><button class="actionBtn" onclick="location.href = 'processDeleteProduct.jsp?prodId=<%= p.getProductId()%>';">Delete</button></td>
			</tr>
	
			<%
	}
	%>
		</table>
		
		<br/>
		<center><button class="actionBtn" onclick="<% e.createXL();%> alt();">Export</button></center>
	
	</body>
</html>