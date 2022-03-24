<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="ISO-8859-1"%>
<%@ page import="model.JavaBeans"%>
<%@ page import="java.util.ArrayList"%>
<%
@SuppressWarnings("unchecked")
ArrayList<JavaBeans> lista = (ArrayList<JavaBeans>) request.getAttribute("contatos");
%>
<!DOCTYPE html>
<html lang="pt-br">
<head>
<meta charset="utf-8">
<title>Agenda de contatos</title>
<link rel="icon" href="imagens/favicon.png">
<link rel="stylesheet" href="style.css">
</head>
<body>
	<h1>Agenda de contatos</h1>
	<a class="botao" href="novo.html">Novo contato</a>
	<a class="botao" href="report">Relatório</a>
	<table id="tabela">
		<thead>
			<tr>
				<th>Id</th>
				<th>Nome</th>
				<th>Telefone</th>
				<th>Email</th>
				<th></th>
			</tr>
		</thead>
		<tbody>
			<% for (int i = 0; i < lista.size(); i++) { %>
				<tr>
					<td><%= lista.get(i).getIdcon() %></td>
					<td><%= lista.get(i).getNome() %></td>
					<td><%= lista.get(i).getFone() %></td>
					<td><%= lista.get(i).getEmail() %></td>
					<td>
						<a href="select?idcon=<%= lista.get(i).getIdcon() %>" class="botao">Editar</a>
						<a href="javascript: confirmar(<%= lista.get(i).getIdcon() %>)" class="botao2">Excluir</a>
					</td>
				</tr>
			<% } %>
		</tbody>
	</table>
	<script src="scripts/confirmador.js"></script>
</body>
</html>