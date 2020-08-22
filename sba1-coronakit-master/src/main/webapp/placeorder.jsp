<%@page import="com.iiht.evaluation.coronokit.model.KitDetail"%>
<%@page import="com.iiht.evaluation.coronokit.model.UserMaster"%>
<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Corona Kit-Place Order(user)</title>
</head>
<body>
<jsp:include page="header.jsp"/>
<hr/>
<h1>Here you go.... </h1>
<%-- Required View Template --%>

<br/>
	<h1>Your Corona Kit Order Summary</h1>
	<%
		// fetch the shared data
		List<KitDetail> kits =  (List<KitDetail>) session.getAttribute("CartData");
		UserMaster user = (UserMaster) session.getAttribute("UserDetails");
		double totalAmount = 0;
	%>
	<div align="center">Order Id : <%=kits.get(0).getCoronaKitId()%></div>	
	<div align="center">
	<table border="1" width="100%">
		<thead>
			<th>Product Name</th>
			<th>Quantity</th>
			<th>Amount</th>			
		</thead>
		<tbody>
			<% for(KitDetail kit : kits) { %>
			<tr>
				<td><%=kit.getProductName()%></td>
				<td><%=kit.getQuantity()%></td>
				<td><%=kit.getAmount()%></td>
			</tr>			
			<%
			totalAmount = totalAmount+ kit.getAmount();
			} %>
		</tbody>
	</table>
	<div align="center">Total order Amount : <%=totalAmount %></div>
	<table>
		<tbody>
			<tr><td>Delivery Details</td>
				<td>
					<table>
						<tr><td><%=user.getPersonName()%></td></tr>
						<tr><td><%=user.getEmail()%></td></tr>
						<tr><td><%=user.getContactNumber()%></td></tr>
						<tr><td><%=user.getDeliveryAddress()%></td></tr>
					</table>
				</td>
			</tr>
		</tbody>
	</table>
	</div>
<hr/>	
	<jsp:include page="footer.jsp"/>
</body>
</html>