<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ page import="main.bikes" %>
<%
bikes i = new bikes();
String user;
Integer senha;
user = request.getParameter("user");
i.user = user;
senha = Integer.parseInt(request.getParameter("senha"));
i.senha1 = senha;
String msg = " ";
if (i.verificard(user)){
	msg = "Usuario ja Cadastrado";
}
else {
	i.guardar(user);
	msg= "Cadastrado!!";
}
%>
<!DOCTYPE html>
<html>
<head>
<link rel="stylesheet" href="style.css">
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<header>
	<h3>
		Biklismo
	</h3>
	<nav>
		<ul class="nav__links">
			<li><a href="Index.jsp">Inicio</a></li>
			<li><a href="Contatos.jsp">Contatos</a></li>
			<li>
				<a href="#">Help</a>
			</li>
		</ul>
	</nav>
</header>
<table>
	<tr><th colspan="2"><h3 class ="title"><%= msg %></h3></th></tr>
</table>
</body>
</html>