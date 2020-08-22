<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Corona Kit-New User(user)</title>
           <style> 
            h1 { 
                color:green; 
            } 
        </style>  
</head>
<body>
<jsp:include page="header.jsp"/>
<hr/>

<%-- Required View Template --%>
<hr/>
	<h2>New User Registration</h2>
	<form action="user?action=insertuser" method="post">
		<div>
			<div><label for="uname">Name</label> </div>
			<div><input type="text" id="uname" name="uname"> </div>
		</div>
		<div>
			<div><label for="uemail">Email</label> </div>
			<div><input type="text" id="uemail" name="uemail"> </div>
		</div>
		<div>
			<div><label for="ucontact">Contact Number</label> </div>
			<div><input type="text" id="ucontact" name="ucontact"> </div>
		</div>
		<div>
			<div><label for="uaddress">Delivery Address</label> </div>
			<div><input type="text" id="uaddress" name="uaddress"> </div>
		</div>
		<div>
			<div><input type="submit" value="Add User"> </div>
		</div>
	</form>
<hr/>	
	<jsp:include page="footer.jsp"/>
</body>
</html>