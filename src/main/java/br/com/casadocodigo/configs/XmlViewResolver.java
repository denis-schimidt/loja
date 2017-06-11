package br.com.casadocodigo.configs;

import java.util.Locale;

import org.springframework.stereotype.Component;
import org.springframework.web.servlet.View;
import org.springframework.web.servlet.ViewResolver;
import org.springframework.web.servlet.view.xml.MappingJackson2XmlView;

@Component
public class XmlViewResolver implements ViewResolver {

	@Override
	public View resolveViewName(String viewName, Locale locale) throws Exception {
		MappingJackson2XmlView xmlView= new MappingJackson2XmlView();
        xmlView.setPrettyPrint(true);
        
        return xmlView;
	}
}
