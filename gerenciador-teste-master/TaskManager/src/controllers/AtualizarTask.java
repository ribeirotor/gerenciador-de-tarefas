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

@WebServlet("/AtualizarTask.do")
public class AtualizarTask extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		HttpSession sessao = request.getSession();
		
    	if (request.getParameter("id") != "" && request.getParameter("titulo") != "" 
    			&& request.getParameter("descricao") != "") {
    		
    		Tarefa tarefa = new Tarefa();
	    	tarefa.setId(Long.parseLong(request.getParameter("id")));
	    	tarefa.setTitulo(request.getParameter("titulo"));
	    	tarefa.setTexto(request.getParameter("descricao"));
    		
    		TarefaService tarefaService = new TarefaService();
    		tarefaService.alterar(tarefa);
    		sessao.setAttribute("mensagem", "Task atualizada com sucesso!!");
    		response.sendRedirect("tasks.jsp");
    	} else {
			
    		sessao.setAttribute("mensagem", "Campos inválidos verifique se todos foram preenchidos!!");
    		response.sendRedirect("atualizar.jsp");
	    	
    	}
	}

}
