<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="utf-8"%>
<!DOCTYPE html>
<hmtl lang="pt-br">

<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.0/css/bootstrap.min.css"
    integrity="sha384-9aIt2nRpC12Uk9gS9baDl411NQApFmC26EwAOH8WgZl5MYYxFfc+NcPb1dKGj7Sk" crossorigin="anonymous">
<!-- JS, Popper.js, and jQuery -->
<script src="https://code.jquery.com/jquery-3.5.1.slim.min.js"
    integrity="sha384-DfXdz2htPH0lsSSs5nCTpuj/zy4C+OGpamoFVy38MVBnE+IbbVYUew+OrCXaRkfj"
    crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.0/dist/umd/popper.min.js"
    integrity="sha384-Q6E9RHvbIyZFJoft+2mJbHaEWldlvI9IOYy5n3zV9zzTtmI3UksdQRVvoxMfooAo"
    crossorigin="anonymous"></script>
<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.0/js/bootstrap.min.js"
    integrity="sha384-OgVRvuATP1z7JjHLkuOU7Xw704+h835Lr+6QL9UvYjZE3Ipu6Tp75j7Bh/kR0JKI"
    crossorigin="anonymous"></script>

    <!-- Cabeçalho -->

    
<body class="center-form ">
<div class="center-form ">
 <form action=cadastraUsuario.do method="post">
<div class="modal-header">


<h3 class="modal-title  text-center" >Efetuar Cadastro</h3>

</div>
<div class="form-group ml-1">
<h5>Nome</h5>
<input type="text" class="form-control " name="nome" id="nome" placeholder="Digite Seu Nome Completo">
</div>


<div class="form-group ml-1">
<h5>Email</h5>
<input type="email" class="form-control" id="email" name="email" placeholder="Digite Seu email">
</div>

<div class="form-group ml-1">
<h5>Senha</h5>
<input type="password" class="form-control" id="senha" name="senha" placeholder="Digite sua senha">
</div>
<div class="modal-footer ">
<button type="submit" class="btn btn-primary ">
Cadastrar
</button>
</div>
</form>
</div>
</body>

