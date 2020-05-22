<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Excluir</title>
</head>
<body>
	
	<% if (session.getAttribute("mensagem") != null) {
	
	out.println(session.getAttribute("mensagem"));
	session.removeAttribute("mensagem");
	
	}%>
	
	<form action= DeletarTask.do method="post">
		Código Task: <input type="text" name="id">
		<input type="submit">
	</form>
</body>
</html>