
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="utf-8"%>

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

<meta charset="utf-8">

<title>TASK MANAGER</title>
</head>

<body>
	<hr>

	<div class="texto-inicial text-center mt-2">
		<h3>TASK MANAGER</h3>
		<h5>Login</h5>
	</div>

<body class="center-form ">
	<div class="center-form ">
		<form action=Login.do method="post">

			<div class="container">
				<%
					if (session.getAttribute("mensagem") != null) {

						out.println(session.getAttribute("mensagem"));
						session.removeAttribute("mensagem");

					}
				%>
				<br/>
				<label for="exampleInputEmail1">Email</label> <input type="email"
					class="form-control" id="exampleInputEmail1"
					aria-describedby="emailHelp" placeholder="Seu email"
					name="email_usuario"> <small id="emailHelp"
					class="form-text text-muted">Nunca vamos compartilhar seu
					email, com ninguém.</small>
			</div>
			<div class="center-form">

				<div class="container">
					<label for="exampleInputPassword1">Senha</label> <input
						type="password" class="form-control" id="exampleInputPassword1"
						placeholder="Senha" name="senha_usuario">
				</div>
			</div>

			<br>
			<div class="container">
					<button class="btn btn-primary btn-sm" type="submit">Entrar</button>
	
				<%
					String redirectURLCadastrar = "/TaskManagerTop/cadastrausuario.jsp";
				%>
				<button type="button" class="btn btn-secondary btn-sm" 
						onclick="document.location.href='<%=redirectURLCadastrar%>'">Cadastre-se
				</button>
			</div>
			
		</form>
	</div>
</body>
</html>