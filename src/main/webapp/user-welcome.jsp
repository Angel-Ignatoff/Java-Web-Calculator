<%@ page language="java" contentType="text/html; charset=US-ASCII" pageEncoding="US-ASCII"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
	<head>
		<meta http-equiv="Content-Type" content="text/html; charset=US-ASCII">
		<title>Login Success Page</title>
	</head>
	<body>
		<%
			String user = session.getAttribute("unamee") + "";
			String session_cookie = session.getId();
		%>
		<h3>Login Success</h3>
		<h4>Welcome: <%=user%></h4>
		<h4>Session ID: <%=session_cookie%></h4>
		
		<form action="Logout" method="post">
			<input type="submit" value="Logout" >
		</form>
			
	
		<h3>My Converter Code</h3>
		<h4>Please type in a hexadecimal number</h4>
		<form action="Converter" method="post">
			<input type="text" name="bin-number">
			<input type="submit" value="Submit bin number" >
		</form>
		
		<%
			String result = session.getAttribute("CONVERTER_RESULT") + "";
		%>
		<h4>Result: <%=result%></h4>

			
	</body>
</html>