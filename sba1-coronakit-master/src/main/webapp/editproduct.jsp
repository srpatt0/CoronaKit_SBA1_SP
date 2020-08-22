<%@page import="com.iiht.evaluation.coronokit.model.ProductMaster"%>
<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Corona Kit-Edit Product(Admin)</title>
</head>
<body>
	<jsp:include page="header.jsp" />
	<hr />

	<%-- Required View Template --%>

	<br />
	<%
		// fetch the shared data
	ProductMaster products =( ProductMaster)request.getAttribute("product");
	%>
	<form action="admin?action=updateproduct" method="post">
		<div align="center">
			<div>
				<label>Enter Product Id</label> <input type="text" name="pId" value='<%=products.getId()%>' readonly="readonly">
			</div>
			<div>
				<label>Enter Product Name</label> <input type="text" name="pname" value='<%=products.getProductName()%>'>
			</div>
			<br />
			<div>
				<label>Enter Cost</label> <input type="text" name="pcost" value='<%=products.getCost()%>'>
			</div>
			<br />
			<div>
				<label>Enter Description</label> <input type="text" name="pdesc" value='<%=products.getProductDescription()%>'>
			</div>
			<div>
				<input type="submit" value="Update Product">
			</div>
		</div>
	</form>

	<hr />
	<jsp:include page="footer.jsp" />
</body>
</html>