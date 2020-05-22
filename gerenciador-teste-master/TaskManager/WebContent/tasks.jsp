<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="utf-8"%>
<%@page import="java.util.List"%>
<%@page import="model.Tarefa"%>
<%@page import="service.TarefaService"%>
<!DOCTYPE html>
<html>
<link rel="stylesheet"
	href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.0/css/bootstrap.min.css"
	integrity="sha384-9aIt2nRpC12Uk9gS9baDl411NQApFmC26EwAOH8WgZl5MYYxFfc+NcPb1dKGj7Sk"
	crossorigin="anonymous">
<!-- JS, Popper.js, and jQuery -->
<script src="https://code.jquery.com/jquery-3.5.1.slim.min.js"
	integrity="sha384-DfXdz2htPH0lsSSs5nCTpuj/zy4C+OGpamoFVy38MVBnE+IbbVYUew+OrCXaRkfj"
	crossorigin="anonymous"></script>
<script
	src="https://cdn.jsdelivr.net/npm/popper.js@1.16.0/dist/umd/popper.min.js"
	integrity="sha384-Q6E9RHvbIyZFJoft+2mJbHaEWldlvI9IOYy5n3zV9zzTtmI3UksdQRVvoxMfooAo"
	crossorigin="anonymous"></script>
<script
	src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.0/js/bootstrap.min.js"
	integrity="sha384-OgVRvuATP1z7JjHLkuOU7Xw704+h835Lr+6QL9UvYjZE3Ipu6Tp75j7Bh/kR0JKI"
	crossorigin="anonymous"></script>

<head>
<style>
body {
	background-color: white;
}

h1 {
	color: red;
	padding: 60px;
}
</style>
</head>

<body>

	<%
		if (session.getAttribute("usuario") == null) {
			session.setAttribute("mensagem", "você ainda não informou usuario e senha");
			response.sendRedirect("login.jsp");

		}
	%>

<head>
<meta charset="utf-8">

<title>TASK MANAGER</title>
</head>
<style>
</style>

<body action=Login.do method="post">
	<div class="texto-inicial text-center mt-2">
		<h3>TASK MANAGER</h3>
		<h5>
			Olá,
			<%
			out.print(session.getAttribute("usuario"));
		%>!
		</h5>
	</div>

	<div class="row float-right">
		<%
			String redirectURL = "/TaskManagerTop/cadastra.jsp";
		%>
		<button type="button" class="btn btn-success mx-2"
			onclick="document.location.href='<%=redirectURL%>'">Adicionar</button>

		<%
			String redirectURLSair = "/TaskManagerTop/login.jsp";
		%>
		<button type="button" class="btn btn-danger mr-5" onclick="document.location.href='<%=redirectURLSair%>'">Sair</button>
	</div>


	<div class="container">
		<%
			if (session.getAttribute("mensagem") != null) {

				out.println(session.getAttribute("mensagem"));
				session.removeAttribute("mensagem");

			}
		%>
		<h5 class="mt-5">Lista de tarefas:</h5>
		<%
			Tarefa tarefa = new Tarefa();
			String email = (String) session.getAttribute("email");
			tarefa.setFkUsuario(email);

			TarefaService tarefaService = new TarefaService();
			List<Tarefa> tarefas = tarefaService.listar(tarefa);
			for (Tarefa tarefaas : tarefas) {
		%>
		<div class="card w-50 ">
			<div class="card-header">
				<div class="row">
					<div class="col-7 mr-3">
						<h5 class="modal-title">
							<%
								out.print(tarefaas.getId() + ": ");
									out.print(tarefaas.getTitulo());
							%>
						</h5>
					</div>
					<div class="col-4 ml-4">
						<%
							String redirectURLEdit = "/TaskManagerTop/atualizar.jsp";
						%>
						<button type="button" class="btn btn-primary"
							onclick="document.location.href='<%=redirectURLEdit%>'">Editar</button>

						<%
							String redirectURLDelete = "/TaskManagerTop/excluir.jsp";
						%>
						<button type="button" class="btn btn-secondary text-right"
							onclick="document.location.href='<%=redirectURLDelete%>'">Excluir</button>
					</div>
				</div>
			</div>
			<div class="card-body">
				<p class="card-text">
					<%
						out.print(tarefaas.getTexto());
					%>.
				</p>
			</div>
		</div>
		<%
			}
		%>
	</div>
</body>
</html>