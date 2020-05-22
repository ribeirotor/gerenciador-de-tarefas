<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@page import="java.util.List"%>
<%@page import="model.Tarefa"%>
<%@page import="service.TarefaService"%>

<!DOCTYPE html>
<hmtl lang="pt-br">

<link rel="stylesheet"
	href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.0/css/bootstrap.min.css"
	integrity="sha384-9aIt2nRpC12Uk9gS9baDl411NQApFmC26EwAOH8WgZl5MYYxFfc+NcPb1dKGj7Sk"
	crossorigin="anonymous">
<!-- JS, Popper.js, and jQuery --> <script
	src="https://code.jquery.com/jquery-3.5.1.slim.min.js"
	integrity="sha384-DfXdz2htPH0lsSSs5nCTpuj/zy4C+OGpamoFVy38MVBnE+IbbVYUew+OrCXaRkfj"
	crossorigin="anonymous"></script> <script
	src="https://cdn.jsdelivr.net/npm/popper.js@1.16.0/dist/umd/popper.min.js"
	integrity="sha384-Q6E9RHvbIyZFJoft+2mJbHaEWldlvI9IOYy5n3zV9zzTtmI3UksdQRVvoxMfooAo"
	crossorigin="anonymous"></script> <script
	src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.0/js/bootstrap.min.js"
	integrity="sha384-OgVRvuATP1z7JjHLkuOU7Xw704+h835Lr+6QL9UvYjZE3Ipu6Tp75j7Bh/kR0JKI"
	crossorigin="anonymous"></script>
<head>
<body>
	<div class="texto-inicial text-center mt-2">
		<h3>TASK MANAGER</h3>
	</div>
	<form action=CadastraTask.do method="post">
		<div class="form-group w-50 ">
			<div class="container">
				<h5 class="mt-5">Cadastre sua tarefa!</h5>
				<label for="exampleInputEmail1">Título da tarefa </label> <input
					type="Titulo" class="form-control" id="exampleInputEmail1"
					aria-describedby="emailHelp" name="titulo"> <small
					id="emailHelp" class="form-text text-muted">lembre-se de
					consultar todo dia para não perder nada!</small>
			</div>
			<div class="form-group  w-60">
				<div class="container">
					<label for="exampleFormControlTextarea1">Descreva sua
						tarefa</label>
					<textarea type="Descricao" class="form-control"
						id="exampleFormControlTextarea1" rows="3" name="descricao"></textarea>
				</div>
			</div>
		</div>

		<div class="col-3 ml-1">
			<button type="submit" class="btn btn-primary pull-right"
				type="submit">Adicionar TAREFA</button>
		</div>
	</form>
</body>

</hmtl>
</body>