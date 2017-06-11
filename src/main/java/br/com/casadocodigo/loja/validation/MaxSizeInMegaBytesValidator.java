package br.com.casadocodigo.loja.validation;

import javax.validation.ConstraintValidator;
import javax.validation.ConstraintValidatorContext;

import org.springframework.stereotype.Component;
import org.springframework.web.multipart.MultipartFile;

@Component
public class MaxSizeInMegaBytesValidator implements ConstraintValidator<MaxSizeInMegaBytes, MultipartFile> {
	private int maxSizeInMegabytesAllowedForFile;
	
	@Override
	public void initialize(MaxSizeInMegaBytes constraintAnnotation) {
		maxSizeInMegabytesAllowedForFile = constraintAnnotation.value() * 1024 * 1024;
	}

	@Override
	public boolean isValid(MultipartFile value, ConstraintValidatorContext context) {
		
		if(value!=null){
			return maxSizeInMegabytesAllowedForFile >= value.getSize();
		}
		
		return true;
	}
}
