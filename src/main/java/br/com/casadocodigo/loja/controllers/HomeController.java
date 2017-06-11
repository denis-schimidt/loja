package br.com.casadocodigo.loja.controllers;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.cache.annotation.Cacheable;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.servlet.ModelAndView;

import br.com.casadocodigo.loja.dao.ProdutoRepository;

@Controller
@Cacheable(value="produtosHome")
public class HomeController {

	@Autowired
	private ProdutoRepository produtoRepository;
	
	@GetMapping(path="/")
	public ModelAndView index(){
		ModelAndView modelAndView = new ModelAndView("home");
		modelAndView.addObject("produtos", produtoRepository.findAllProdutosWithPrecos());
		
		return modelAndView;
	}
}
