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

@WebServlet("/Login.do")
public class Login extends HttpServlet {
	private static final long serialVersionUID = 1L;
	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		
		Usuario usuario = new Usuario();
		usuario.setEmail(request.getParameter("email_usuario"));
		usuario.setSenha(request.getParameter("senha_usuario"));

		UsuarioService usuarioService = new UsuarioService();
		String nomeUsuario = usuarioService.consultaUsuario(usuario);

		if (!nomeUsuario.isEmpty()) {
			HttpSession sessao = request.getSession();
			sessao.setAttribute("usuario", nomeUsuario);
			sessao.setAttribute("email", usuario.getEmail());
			response.sendRedirect("tasks.jsp");
		} else {
			HttpSession sessao = request.getSession();
			sessao.setAttribute("mensagem", " Usuario ou senha invalidos");
			response.sendRedirect("login.jsp");
		}
	}
}
