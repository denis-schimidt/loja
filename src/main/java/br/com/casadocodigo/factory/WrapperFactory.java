package br.com.casadocodigo.factory;

import java.util.concurrent.atomic.AtomicInteger;

import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.Configuration;

@Configuration
public class WrapperFactory {

	@Bean
	public AtomicInteger newInstance(){
		return new AtomicInteger(); 
	}
}
