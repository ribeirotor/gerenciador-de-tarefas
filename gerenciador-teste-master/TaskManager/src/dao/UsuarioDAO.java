package dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

import model.Usuario;

public class UsuarioDAO {

	private Connection conexao;

	public UsuarioDAO() {
		this.conexao = ConnectionFactory.conectar();
	}

	public void cadastrar(Usuario usuario) {

		String inserir = "INSERT INTO usuario " + " (email, senha, nome)" + " VALUES (?, ?, ?)";

		try (PreparedStatement pst = conexao.prepareStatement(inserir)) {

			pst.setString(1, usuario.getEmail());
			pst.setString(2, usuario.getSenha());
			pst.setString(3, usuario.getNome());
			pst.execute();

		} catch (SQLException ex) {

			System.err.println("Não foi possível manipular " + "a tabela Produto.");
			ex.printStackTrace();
		}
	}

	public String consultar(Usuario usuario) {

		String consultar = "SELECT nome FROM usuario " + " WHERE email = ? AND senha = ?";

		try (PreparedStatement pst = conexao.prepareStatement(consultar)) {

			pst.setString(1, usuario.getEmail());
			pst.setString(2, usuario.getSenha());
			ResultSet resultado = pst.executeQuery();

			String nome = "";
			if (resultado.next()) {
				nome = resultado.getString("nome");
			}
			return nome;
		} catch (SQLException ex) {

			System.err.println("Não foi possível manipular " + "a tabela Produto.");
			ex.printStackTrace();

			return null;
		}
	}
}
