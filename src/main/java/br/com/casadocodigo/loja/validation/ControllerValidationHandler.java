package br.com.casadocodigo.loja.validation;

import static org.springframework.http.HttpStatus.BAD_REQUEST;

import org.slf4j.Logger;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.MethodArgumentNotValidException;
import org.springframework.web.bind.annotation.ControllerAdvice;
import org.springframework.web.bind.annotation.ExceptionHandler;

@ControllerAdvice
public class ControllerValidationHandler{
	
	@Autowired
	private Logger log;
	
	@Autowired
	private ValidationErrorsFactory validationErrorsBuilder;

	@ExceptionHandler(MethodArgumentNotValidException.class)
	ResponseEntity<ValidationErrors> handleException(MethodArgumentNotValidException exception){
		ValidationErrors validationErrors = validationErrorsBuilder.fromBindingErrors(exception);
		
		log.error(validationErrors.getErrors().toString());
		
		return ResponseEntity.status(BAD_REQUEST).body(validationErrors);
	}
}
