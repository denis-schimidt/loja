package br.com.casadocodigo.loja.validation;

import org.springframework.validation.Errors;
import org.springframework.validation.ValidationUtils;
import org.springframework.validation.Validator;

import br.com.casadocodigo.loja.models.Produto;

public class ProdutoValidator implements Validator {
	@Override
	public boolean supports(Class<?> clazz) {
		return Produto.class.isAssignableFrom(clazz);
	}

	@Override
	public void validate(Object target, Errors errors) {
		Produto produto = (Produto) target;
		
		ValidationUtils.rejectIfEmptyOrWhitespace(errors, "nome", "field.required");
		ValidationUtils.rejectIfEmptyOrWhitespace(errors, "descricao", "field.required");
		
		if(produto.getPaginas()==0){
			errors.rejectValue("paginas", "field.required");
		}
		
		if(produto.getPaginas()<0 || produto.getPaginas()>2000){
			errors.rejectValue("paginas", "typeMismatch");
		}
	}
}
