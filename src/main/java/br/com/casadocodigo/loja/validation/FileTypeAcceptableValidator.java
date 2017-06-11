package br.com.casadocodigo.loja.validation;

import java.util.List;

import javax.validation.ConstraintValidator;
import javax.validation.ConstraintValidatorContext;

import org.springframework.stereotype.Component;
import org.springframework.web.multipart.MultipartFile;

import com.google.common.collect.Lists;

@Component
public class FileTypeAcceptableValidator implements ConstraintValidator<FileTypeAcceptable, MultipartFile> {
	private List<FileType> fileTypes;
	
	@Override
	public void initialize(FileTypeAcceptable constraintAnnotation) {
		fileTypes = Lists.newArrayList(constraintAnnotation.value());
	}

	@Override
	public boolean isValid(MultipartFile value, ConstraintValidatorContext context) {
		
		if(value!=null){
			return fileTypes.stream()
				.filter(type-> type.getContentType().equals(value.getContentType()))
				.findFirst()
				.isPresent();
		}
		
		return true;
	}
}
