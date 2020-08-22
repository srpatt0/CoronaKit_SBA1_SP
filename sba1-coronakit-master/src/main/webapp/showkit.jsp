<%@page import="com.iiht.evaluation.coronokit.model.KitDetail"%>
<%@page import="com.iiht.evaluation.coronokit.model.UserMaster"%>
<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Corona Kit-My Kit(user)</title>
</head>
<body>
<jsp:include page="header.jsp"/>
<hr/>

<%-- Required View Template --%>

<br/>

<h2>Confirm Order</h2>	
	
<form action="user?action=placeorder" method="post">
			
			<%
		// fetch the shared data
		List<KitDetail> kits =  (List<KitDetail>) session.getAttribute("CartData");
			UserMaster user = (UserMaster) session.getAttribute("UserDetails");
	%>
	<table border="1" width="100%">
		<thead>
			<th>Corona KitId</th>
			<th>Product Id</th>
			<th>Product Name</th>
			<th>Quantity</th>
			<th>Amount</th>			
			<th></th>
		</thead>
		<tbody>
			<% for(KitDetail kit : kits) { %>
			<tr>
				<td><%=kit.getCoronaKitId()%></td>
				<td><%=kit.getProductId()%></td>
				<td><%=kit.getProductName()%></td>
				<td><%=kit.getQuantity()%></td>
				<td><%=kit.getAmount()%></td>
				<td><a href="user?action=deleteitem&ProductId=<%=kit.getProductId()%>">Delete</a></td>
			</tr>
			<% } %>
		</tbody>
	</table>
	
	<div>
	<br/>
	<br/>
	<a href="user?action=showproducts"><button>Continue Shopping</button></a>
	<br/>
	<br/>
	<label for="address">Enter Delivery Address</label> </div>
	<div><input type="text" id="uaddress" name="uaddress" value= <%=user.getDeliveryAddress()%>> </div>
				<div>					
			<div><input type="submit" value="Place order"></div>						
	</div>

<br/>
<br/>
<br/>

</form>
	
<hr/>	
	<jsp:include page="footer.jsp"/>
</body>
</html>