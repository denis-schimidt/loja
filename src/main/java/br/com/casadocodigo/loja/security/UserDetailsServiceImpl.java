package br.com.casadocodigo.loja.security;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.Example;
import org.springframework.security.core.userdetails.UserDetails;
import org.springframework.security.core.userdetails.UserDetailsService;
import org.springframework.security.core.userdetails.UsernameNotFoundException;
import org.springframework.stereotype.Service;

@Service
public class UserDetailsServiceImpl implements UserDetailsService {

	@Autowired
	private UsuarioDao usuarioDao;
	
	@Override
	public UserDetails loadUserByUsername(String email) throws UsernameNotFoundException {
		Example<Usuario> exemploUsuario = Example.of(Usuario.builder().email(email).build());
		Usuario usuario = usuarioDao.findOne(exemploUsuario);
		
		if(usuario==null){
			throw new UsernameNotFoundException("O email " + email + "nãp foi encontrado");
		}
		
		return usuario;
	}
}
