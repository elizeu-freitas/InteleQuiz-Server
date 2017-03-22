package service;

import java.util.List;
import model.application.GlobalException;
import model.application.ITQException;
import model.entity.TipoUsuario;
import model.entity.Usuario;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import repository.UsuarioDAO;

@Service
public class AutenticacaoService {
    
    @Autowired
    private UsuarioDAO usuarioDAO;
    
    public Usuario getUsuarioById(Usuario u) throws GlobalException{
        try {
            if(u.getPerfil() == TipoUsuario.PROFESSOR.getCodigo() || u.getPerfil() == TipoUsuario.COORDENADOR.getCodigo()){
                return usuarioDAO.getUsuarioById(u);
            }else{
                throw new ITQException("Aluno ainda não implementado");
            }
        } catch (Exception e) {
            throw new GlobalException(e);
        }
    }
    
    public Usuario getUsuarioByLoginSenha(Usuario u) throws GlobalException{
        try {
            if(u.getPerfil() == TipoUsuario.PROFESSOR.getCodigo() || u.getPerfil() == TipoUsuario.COORDENADOR.getCodigo()){
                return usuarioDAO.getUsuarioByLoginSenha(u);
            }else{
                throw new ITQException("Aluno ainda não implementado");
            }
        } catch (Exception e) {
            throw new GlobalException(e);
        }
    }
    
    public List<Usuario> listUsuario() throws GlobalException{
        try {
            return usuarioDAO.listUsuario();
        } catch (Exception e) {
            throw new GlobalException(e);
        }
    }
    
    public boolean saveUsuario(Usuario u) throws GlobalException{
        try {
            usuarioDAO.saveUsuario(u);
            return true;
        } catch (Exception e) {
            throw new GlobalException(e);
        }
    } 
    
    public boolean updateUsuario(Usuario u) throws GlobalException{
        try {
            usuarioDAO.updateUsuario(u);
            return true;
        } catch (Exception e) {
            throw new GlobalException(e);
        }
    }
    
    public boolean deleteUsuario(Usuario u) throws GlobalException{
        try {
            usuarioDAO.deleteUsuario(u);
            return true;
        } catch (Exception e) {
            throw new GlobalException(e);
        }
    }
}