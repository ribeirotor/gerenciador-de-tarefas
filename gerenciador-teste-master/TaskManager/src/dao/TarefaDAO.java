package dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import model.Tarefa;

public class TarefaDAO {
	
	private Connection conexao;
	
	public TarefaDAO(){
		this.conexao = ConnectionFactory.conectar();
	}

	public void cadastrar(Tarefa tarefa) {
			
		String inserir = "INSERT INTO tarefas "
				+ " (titulo, descricao, fk_usuario_email)"
				+ " VALUES (?, ?, ?)";
		
		try ( PreparedStatement pst = 
				conexao.prepareStatement(inserir) ) {
			
			pst.setString(1, tarefa.getTitulo());			
			pst.setString(2, tarefa.getTexto());
			pst.setString(3, tarefa.getFkUsuario());
			pst.execute();
			
		} catch (SQLException ex) {
			
			System.err.println("Não foi possível manipular "
					+ "a tabela Produto.");
			ex.printStackTrace();
			
		}
	}
	
	public void alterar(Tarefa tarefa) {
		
		String alterar = "UPDATE tarefas "
				+ "SET titulo = ?, descricao = ?"
				+ " WHERE id = ? ";
		
		try ( PreparedStatement pst = 
				conexao.prepareStatement(alterar) ) {
			
			pst.setString(1, tarefa.getTitulo());
			pst.setString(2, tarefa.getTexto());
			pst.setLong(3, tarefa.getId());
			pst.execute();
			
		} catch (SQLException ex) {	
			System.err.println("Não foi possível manipular "
					+ "a tabela Produto.");
			ex.printStackTrace();	
		}
	}
	
	public void excluir(Tarefa tarefa) {
		
		String excluir = "DELETE FROM tarefas "
				+ " WHERE id = ? ";
		
		try ( PreparedStatement pst = 
				conexao.prepareStatement(excluir) ) {
			
			pst.setLong(1, tarefa.getId());
			pst.execute();
			
		} catch (SQLException ex) {
			
			System.err.println("Não foi possível manipular "
					+ "a tabela Produto.");
			ex.printStackTrace();
		}
	}
	
	public List<Tarefa> consultar(Tarefa tarefa) {
		
		String consultar = "SELECT * FROM tarefas "
				+ " WHERE fk_usuario_email = ? ";
		
		try ( PreparedStatement pst = 
				conexao.prepareStatement(consultar) ) {
			
			pst.setString(1, tarefa.getFkUsuario());
			ResultSet resultado = pst.executeQuery();
			
			List<Tarefa> lista = new ArrayList<>();
			while (resultado.next()) {
				Tarefa tarefas = new Tarefa();
				tarefas.setTexto(resultado.getString("descricao"));
				tarefas.setTitulo(resultado.getString("titulo"));
				tarefas.setId(resultado.getLong("id"));
				lista.add(tarefas);
			}
			return lista;	
		} catch (SQLException ex) {
			
			System.err.println("Não foi possível manipular "
					+ "a tabela Produto.");
			ex.printStackTrace();
			
			return null;
		}
	}
}