package service;

import java.util.List;

import dao.TarefaDAO;
import model.Tarefa;

public class TarefaService {

	private TarefaDAO tarefaDAO;
	
	public TarefaService(){
		this.tarefaDAO = new TarefaDAO();
	}
	
	public void cadastrar(Tarefa tarefa){
		tarefaDAO.cadastrar(tarefa);
	}
	public void deletar(Tarefa tarefa){
		tarefaDAO.excluir(tarefa);
	}
	public void alterar(Tarefa tarefa){
		tarefaDAO.alterar(tarefa);
	}
	public List<Tarefa> listar(Tarefa tarefa){
		return tarefaDAO.consultar(tarefa);
	}
}
