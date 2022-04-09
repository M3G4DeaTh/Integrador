<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<link rel="stylesheet" href="style.css">
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
<form action="pos_cadastro.jsp" method="post">
		<table>
			<tr><td> Usuario </td>
			<td><input type="text" name="user" required></td></tr>
			<tr><td> Senha </td>
			<td><input type="password" name="senha" required></td></tr>
			<tr><th colspan="2"><input class="button" type="submit" name="env" value="Cadastrar"></th></tr>
		</table>
	</form>
</body>
</html>