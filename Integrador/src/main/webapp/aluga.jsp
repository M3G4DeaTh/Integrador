<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ page import="main.bikes"%>
<%
bikes i = new bikes();
String msg = "";
String g = "";
Integer u = 0;
Integer k;
String user = request.getParameter("user");
Integer senha = Integer.parseInt(request.getParameter("senha"));
i.user = user;
i.senha1 = senha;
i.verificar(user);
if (i.resposta == 1) {
	i.aluga(user);
	if (i.a >= 5 || i.b >= 5 || i.c >=5 || i.a+i.b+i.c>= 5 ){
		msg = "Alugou o maximo de bicicletas possiveis!";
	}
	else if (request.getParameter("bike1") != null) {
		u = Integer.parseInt(request.getParameter("bike1"));
		if (u < 5 && u > 0) {
			if(u == 1){
				g = "a";
			}
			if(u == 2){
				g = "aa";
			}
			if(u == 3){
				g = "aaa";
			}
			if(u == 4){
				g = "aaaa";
			}
			if(u == 5){
				g = "aaaaa";
			}
		}
	} else if (request.getParameter("bike2") != null) {
		u = Integer.parseInt(request.getParameter("bike2"));
		if (u < 5 && u > 0) {
			if(u == 1){
				g = "b";
			}
			if(u == 2){
				g = "bb";
			}
			if(u == 3){
				g = "bbb";
			}
			if(u == 4){
				g = "bbbb";
			}
			if(u == 5){
				g = "bbbbb";
			}
		}
	} else if (request.getParameter("bike3") != null) {
		u = Integer.parseInt(request.getParameter("bike3"));
		if (u < 5 && u > 0) {
			if(u == 1){
				g = "c";
			}
			if(u == 2){
				g = "cc";
			}
			if(u == 3){
				g = "ccc";
			}
			if(u == 4){
				g = "cccc";
			}
			if(u == 5){
				g = "ccccc";
			}
		}
	}
	i.bike = g;
	i.alugar(user);
	i.aluga(user);
	msg = "Suas bicicletas";
}
else {
	msg = "Usuario ou Senha incorretos!";
}
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
				<li><a href="area_cliente.jsp">Inicio</a></li>
				<li><a href="Contatos.jsp">Contatos</a></li>
				<li><a href="Help.jsp">Help</a></li>
			</ul>
		</nav>
	</header>
	<table>
		<tr>
			<th colspan="4">
				<h3 class="title"><%= msg %></h3>
			</th>
		</tr>
		<tr>
			<td class="bike"><a href="bike1.jsp"> <img
					src="https://static.netshoes.com.br/produtos/bicicleta-aro-26-masculina-18-marchas-aco-carbono-ultra-bikes/08/ISL-0024-008/ISL-0024-008_zoom1.jpg?ts=1611395437&ims=544x"
					alt="bike1" width=125px height=125px>
			</a></td>

			<td class="bike"><a href="bike2.jsp"> <img
					src="https://static.netshoes.com.br/produtos/bicicleta-aro-24-rebaixada-18-marchas-aco-carbono-ultra-bikes/14/ISL-0026-014/ISL-0026-014_zoom1.jpg?ts=1611395738"
					alt="bike2" width=125px height=125px>
			</a>
			<td class="bike"><a href="bike3.jsp"> <img
					src="https://static.netshoes.com.br/produtos/bicicleta-aro-24-rebaixada-18-marchas-aco-carbono-ultra-bikes/22/ISL-0026-022/ISL-0026-022_zoom1.jpg?ts=1611395732&ims=544x"
					alt="bike3" width=125px height=125px>
			</a></td>
		</tr>
		<tr>
			<th >Quantidade: <%= i.a %>
			</th>
			<th> Quantidade: <%= i.b %>
			</th>
			<th>Quantidade: <%= i.c %>
			</th>
		</tr>
	</table>
</body>
</html>