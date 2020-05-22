package controllers;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import model.Usuario;
import service.UsuarioService;

@WebServlet("/cadastraUsuario.do")
public class CadastraUsuario extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		Usuario usuario = new Usuario();
		usuario.setEmail(request.getParameter("email"));
		usuario.setSenha(request.getParameter("senha"));
		usuario.setNome(request.getParameter("nome"));

		if (usuario.getEmail() != "" && usuario.getNome() != "" && usuario.getSenha() != "") {
			UsuarioService usuarioService = new UsuarioService();
			usuarioService.cadastraUsuario(usuario);
			HttpSession sessao = request.getSession();
			sessao.setAttribute("mensagem", "Usuário Cadastrado com sucesso");
			response.sendRedirect("login.jsp");
		} else {
			HttpSession sessao = request.getSession();
			sessao.setAttribute("mensagem", "Falha ao Cadastrar. Insira todos os campos!!");
			response.sendRedirect("cadastrausuario.jsp");
		}
	}
}
