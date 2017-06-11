package br.com.casadocodigo.loja.validation;

import java.util.List;
import java.util.stream.Collectors;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.MessageSource;
import org.springframework.stereotype.Component;
import org.springframework.web.bind.MethodArgumentNotValidException;

@Component
public class ValidationErrorsFactory {

	@Autowired
	private MessageSource messageSource;
	
	public ValidationErrors fromBindingErrors(MethodArgumentNotValidException exception) {
		String errorMessage = exception.getBindingResult().getErrorCount() + " erro(s) encontrado(s)";

		List<String> errors = exception.getBindingResult().getFieldErrors()
			.stream()
			.map(fieldError->messageSource.getMessage(fieldError, null))
			.collect(Collectors.toList());
		
		return new ValidationErrors(errorMessage, errors);
	}
}
