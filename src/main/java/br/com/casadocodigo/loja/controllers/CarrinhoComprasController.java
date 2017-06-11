package br.com.casadocodigo.loja.controllers;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.DeleteMapping;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import br.com.casadocodigo.loja.dao.ProdutoRepository;
import br.com.casadocodigo.loja.models.CarrinhoCompras;
import br.com.casadocodigo.loja.models.CarrinhoItem;
import br.com.casadocodigo.loja.models.Produto;
import br.com.casadocodigo.loja.models.TipoPreco;

@Controller
@RequestMapping("/carrinho")
public class CarrinhoComprasController {

	@Autowired
	private CarrinhoCompras carrinhoDeCompras;
	
	@Autowired
	private ProdutoRepository repository; 
	
	@PostMapping
	public ModelAndView add(Long produtoId, TipoPreco tipoPreco){
		ModelAndView modelAndView = new ModelAndView("redirect:/carrinho");
		
		Produto produto = repository.findProdutoWithPrecosById(produtoId).get();
		carrinhoDeCompras.adicionar(produto, tipoPreco);
		
		return modelAndView;
	}
	
	@GetMapping
	public ModelAndView listarCarrinhoItem(){
		return new ModelAndView("/carrinhos/carrinho");
	}
	
	@DeleteMapping
	public ModelAndView removerItem(Long produtoId, TipoPreco tipoPreco){
		Produto produto = repository.findOne(produtoId);
		
		carrinhoDeCompras.removerItem(new CarrinhoItem(produto, tipoPreco));
		
		return new ModelAndView("redirect:/carrinho");
	}
}
