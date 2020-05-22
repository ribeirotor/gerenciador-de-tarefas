package controllers;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import model.Tarefa;
import service.TarefaService;

@WebServlet("/CadastraTask.do")
public class CadastraTask extends HttpServlet {
	private static final long serialVersionUID = 1L;

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
			HttpSession sessao = request.getSession();
			String email = (String)sessao.getAttribute("email");
		
	    	if (email == null) {
	    		response.sendRedirect("tasks.jsp");
	    	} else {
				
		    	Tarefa tarefa = new Tarefa();
		    	tarefa.setFkUsuario(email);
		    	tarefa.setTitulo(request.getParameter("titulo"));
		    	tarefa.setTexto(request.getParameter("descricao"));
	    		
	    		TarefaService tarefaService = new TarefaService();
	    		tarefaService.cadastrar(tarefa);
	    		sessao.setAttribute("mensagem", "Task cadastrada com sucesso!!");
	    		response.sendRedirect("tasks.jsp");
	    	}

	}

}
