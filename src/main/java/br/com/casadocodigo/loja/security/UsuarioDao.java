package br.com.casadocodigo.loja.security;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

@Repository 
interface UsuarioDao extends JpaRepository<Usuario, String> {}
