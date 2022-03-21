<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ page import="main.bikes"%>
<%
bikes i = new bikes();
String g = "";
Integer u;
Integer k;
String user;
user = i.user;
if (request.getParameter("bike1") != null) {
	u = Integer.parseInt(request.getParameter("bike1"));
	if (u < 5 && u > 0) {
		for (k = 0; k >= u; k++) {
			g = "a" + g;
		}
	}
} else if (request.getParameter("bike2") != null) {
	u = Integer.parseInt(request.getParameter("bike2"));
	if (u < 5 && u > 0) {
		for (k = 0; k >= u; k++) {
			g = "b" + g;
		}
	}
} else if (request.getParameter("bike3") != null) {
	u = Integer.parseInt(request.getParameter("bike3"));
	if (u < 5 && u > 0) {
		for (k = 0; k >= u; k++) {
			g = "c" + g;
		}
	}
}
i.bike = g;
i.alugar(user);
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
	<h3>
		<%=g%>
	</h3>
</body>
</html>