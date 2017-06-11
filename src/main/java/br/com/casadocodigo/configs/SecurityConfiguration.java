package br.com.casadocodigo.configs;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.Configuration;
import org.springframework.http.HttpMethod;
import org.springframework.security.config.annotation.authentication.builders.AuthenticationManagerBuilder;
import org.springframework.security.config.annotation.web.builders.HttpSecurity;
import org.springframework.security.config.annotation.web.configuration.EnableWebSecurity;
import org.springframework.security.config.annotation.web.configuration.WebSecurityConfigurerAdapter;
import org.springframework.security.core.userdetails.UserDetailsService;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.security.web.util.matcher.AntPathRequestMatcher;

@EnableWebSecurity
@Configuration
public class SecurityConfiguration extends WebSecurityConfigurerAdapter {
    
	@Autowired
	private UserDetailsService userDetailsService; 
	
	@Override
	protected void configure(HttpSecurity http) throws Exception {
		
		http.authorizeRequests()
			.antMatchers("/produtos/novo").hasRole("ADMIN")
			.antMatchers("/produtos").hasRole("ADMIN")
			.antMatchers("/produtos/{\\d+}").permitAll()
			.antMatchers("/css/**", "/fonts/**", "/imagens/**", "/js/**").permitAll()
			.antMatchers("/carrinho/**").permitAll()
			.antMatchers("/").permitAll()
			.antMatchers(HttpMethod.POST, "/api/**").permitAll()
			.antMatchers("/pagamentos/**").permitAll()
			.anyRequest()
			.authenticated()
		.and()
			.formLogin().loginPage("/login").permitAll()
		.and()
			.logout().logoutRequestMatcher(new AntPathRequestMatcher("/logout")).logoutSuccessUrl("/")	
		.and()
			.csrf().ignoringAntMatchers(new String[]{"/api/**"});
	}
	
	@Override
	protected void configure(AuthenticationManagerBuilder auth) throws Exception {
		auth.userDetailsService(userDetailsService)
			.passwordEncoder(new BCryptPasswordEncoder());
	}
}
