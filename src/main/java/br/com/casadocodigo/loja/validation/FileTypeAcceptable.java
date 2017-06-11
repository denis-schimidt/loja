package br.com.casadocodigo.loja.validation;

import static java.lang.annotation.ElementType.CONSTRUCTOR;
import static java.lang.annotation.ElementType.FIELD;
import static java.lang.annotation.ElementType.METHOD;
import static java.lang.annotation.ElementType.PARAMETER;
import static java.lang.annotation.ElementType.TYPE;
import static java.lang.annotation.RetentionPolicy.RUNTIME;

import java.lang.annotation.Documented;
import java.lang.annotation.Retention;
import java.lang.annotation.Target;

import javax.validation.Constraint;
import javax.validation.Payload;

@Documented
@Constraint(validatedBy = FileTypeAcceptableValidator.class)
@Retention(RUNTIME)
@Target({TYPE, FIELD, METHOD, PARAMETER, CONSTRUCTOR})
public @interface FileTypeAcceptable {

    String message() default "{br.com.casadocodigo.loja.validation.FileAcceptable.message}";

    Class<?>[] groups() default {};

    Class<? extends Payload>[] payload() default {};

    FileType[] value();
}
