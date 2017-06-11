package br.com.casadocodigo.loja.validation;

import java.util.ArrayList;
import java.util.Collections;
import java.util.List;

import com.fasterxml.jackson.annotation.JsonInclude;

public class ValidationErrors {
	private final String errorMessage;
	
	@JsonInclude(JsonInclude.Include.NON_EMPTY)
	private final List<String> errors = new ArrayList<>();

	public ValidationErrors(String errorMessage, List<String> errors) {
		this.errorMessage = errorMessage;
		this.errors.addAll(errors);
	}
	
	public List<String> getErrors() {
		return Collections.unmodifiableList(errors);
	}

	public String getErrorMessage() {
		return errorMessage;
	}
}
