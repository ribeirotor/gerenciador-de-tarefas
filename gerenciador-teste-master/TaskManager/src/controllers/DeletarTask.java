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

@WebServlet("/DeletarTask.do")
public class DeletarTask extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		
		
		HttpSession sessao = request.getSession();
		
		if(request.getParameter("id") != null && !request.getParameter("id").isEmpty()) {
			
			Tarefa tarefa = new Tarefa();
			tarefa.setId(Long.valueOf(request.getParameter("id")));
			
			TarefaService tarefaService = new TarefaService();
			tarefaService.deletar(tarefa);
			response.sendRedirect("tasks.jsp");
			
			sessao.setAttribute("mensagem", "Task excluida com sucesso!!");
		}else {
			response.sendRedirect("excluir.jsp");
			sessao.setAttribute("mensagem", "Insira o id da task para excluir!!");
		}
		
	}

}
