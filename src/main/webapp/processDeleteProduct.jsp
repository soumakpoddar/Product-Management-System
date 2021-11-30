<%@page import="dao.ProductManagementDAO"%>
<%@page import="pojo.Product"%>

<%

String productId = request.getParameter("prodId");

int status = ProductManagementDAO.deleteProduct(productId);
if(status == 1)
{
	response.sendRedirect("viewProducts.jsp"); 
}
else
{
	response.sendRedirect("error.jsp"); 
}

%>