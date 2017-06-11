package br.com.casadocodigo.security;

import java.time.LocalDate;
import java.util.Collection;
import java.util.List;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.JoinTable;
import javax.persistence.ManyToMany;
import javax.persistence.Table;

import org.hibernate.validator.constraints.Email;
import org.springframework.security.core.GrantedAuthority;
import org.springframework.security.core.userdetails.UserDetails;

@Entity
@Table(name="usuario")
public class Usuario implements UserDetails{
	private static final long serialVersionUID = 1L;
	
	@Id
	@GeneratedValue
	private Long id; 
	
	@Column(nullable=false, length=80)
	@Email
	private String email;

	@Column(nullable=false, length=80)
	private String password;

	@ManyToMany(fetch=FetchType.EAGER)
	@JoinTable(name="usuario_role", joinColumns=@JoinColumn(name="usuario_id", referencedColumnName="id"),
        inverseJoinColumns=@JoinColumn(name="role_id", referencedColumnName="id"))
	private List<Role> roles;
	
	@Column(name="data_expiracao", nullable=false)
	private LocalDate dataExpiracao;
	
	@Column(nullable=false)
	private Boolean ativo; 
	
	Usuario() {}
	
	private Usuario(Builder builder){
		this.id = builder.id; 
		this.email = builder.email;
		this.password = builder.password;
		this.roles = builder.roles;
		this.dataExpiracao = builder.dataExpiracao;
		this.ativo = builder.ativo;
	}
	
	@Override
	public Collection<? extends GrantedAuthority> getAuthorities() {
		return roles;
	}

	@Override
	public String getPassword() {
		return password;
	}

	@Override
	public String getUsername() {
		return email;
	}

	@Override
	public boolean isAccountNonExpired() {
		LocalDate today = LocalDate.now();
		
		return today.isBefore(dataExpiracao) || today.isEqual(dataExpiracao);
	}

	@Override
	public boolean isAccountNonLocked() {
		return ativo;
	}

	@Override
	public boolean isCredentialsNonExpired() {
		return isAccountNonExpired();
	}

	@Override
	public boolean isEnabled() {
		return ativo;
	}
	
	public static Builder builder(){
		return new Builder();
	}
	
	public static class Builder{
		private Long id; 
		private String email;
		private String password;
		private List<Role> roles;
		private LocalDate dataExpiracao;
		private Boolean ativo;
		
		public Builder id(Long id) {
			this.id = id;
			
			return this;
		}
		
		public Builder email(String email) {
			this.email = email;

			return this;
		}
		
		public Builder password(String password) {
			this.password = password;
			
			return this;
		}
		

		public Builder expiraEm(LocalDate dataExpiracao) {
			this.dataExpiracao = dataExpiracao;
			
			return this;
		}
		

		public Builder ativo(Boolean ativo) {
			this.ativo = ativo;

			return this;
		} 
		
		public Usuario build(){
			return new Usuario(this);
		}
	}
}
