package service;

import dao.UsuarioDAO;
import model.Usuario;
public class UsuarioService {
	
	private UsuarioDAO usuarioDAO;
	
	public UsuarioService(){
		this.usuarioDAO = new UsuarioDAO();
	}
	public String consultaUsuario(Usuario usuario) {
		return usuarioDAO.consultar(usuario);	
	}
	
	public void cadastraUsuario(Usuario usuario) {
		usuarioDAO.cadastrar(usuario);	
	}
}
