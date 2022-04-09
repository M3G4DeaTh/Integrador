<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ page import="main.bikes" %>
<%
bikes i = new bikes();
String user;
Integer id;
Integer senha;
user = request.getParameter("user");
i.user = user;
senha = Integer.parseInt(request.getParameter("senha"));
i.senha1 = senha;
id = i.id;
if (i.verificar(user)){
if (i.resposta == 1) {
	request.setAttribute("datename", user);
	response.sendRedirect("area_cliente.jsp");
	
} else {
	response.sendRedirect("Index.jsp");
}
}
else {
	response.sendRedirect("Index.jsp");
}
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
</body>
</html>