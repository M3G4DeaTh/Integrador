<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ page import="main.bikes"%>
<%
bikes i = new bikes();
String user = i.user;
i.aluga(user);
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<link rel="stylesheet" href="style.css">
<title>Insert title here</title>
</head>
<body>
	<header>
		<h3>Biklismo</h3>
		<nav>
			<ul class="nav__links">
				<li><a href="Index.jsp">Inicio</a></li>
				<li><a href="Contatos.jsp">Contatos</a></li>
				<li><a href="#">Help</a></li>
			</ul>
		</nav>
	</header>
	<h3 class="title">
		Ol�
		<%=user%>
	</h3>
	<form action="aluga.jsp" method="post">
		<table>
			<tr>
				<th colspan="4">
					<h3 class="title">Pode escolher.. So tem bike boa!!</h3>
				</th>
			</tr>
			<tr>
				<td><img
					src="https://static.netshoes.com.br/produtos/bicicleta-aro-26-masculina-18-marchas-aco-carbono-ultra-bikes/08/ISL-0024-008/ISL-0024-008_zoom1.jpg?ts=1611395437&ims=544x"
					alt="bike1" width=250px height=250px></td>
				<td>Qntd.</td>
				<td><input type="text" name="bike1" required></td>
			</tr>
			<tr>
				<th colspan="2"><input class="button" type="submit" name="env"
					value="Alugar"></th>
			</tr>
		</table>
	</form>
</body>
</html>