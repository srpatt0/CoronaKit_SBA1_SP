<%@page import="com.iiht.evaluation.coronokit.model.ProductMaster"%>
<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Corona Kit-All Products(user)</title>
</head>
<body>
<jsp:include page="header.jsp"/>
<hr/>

<%-- Required View Template --%>

<br/>
	
	<%
		// fetch the shared data
		List<ProductMaster> products =  (List<ProductMaster>) request.getAttribute("Products");
	%>
	<table border="1" width="100%">
		<thead>
			<th>Product Name</th>
			<th>Product Cost</th>
			<th>Product Description</th>
			<th></th>
			<th></th>
		</thead>
		<tbody>
			<% for(ProductMaster product : products) { %>
			<tr>
				<td><%=product.getProductName()%></td>				
				<td><%=product.getCost()%></td>
				<td><%=product.getProductDescription()%></td>
				<td><a href="user?action=addnewitem&ProductId=<%=product.getId()%>">Add</a></td>
				</tr>
			<% } %>
		</tbody>
	</table>	
	<br/>
	<br/>
	<br/>
	<br/>

<hr/>	
	<jsp:include page="footer.jsp"/>
</body>
</html>