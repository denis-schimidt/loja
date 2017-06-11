package br.com.casadocodigo.loja.controllers;

import javax.servlet.http.HttpServletRequest;
import javax.validation.Valid;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.cache.annotation.CacheEvict;
import org.springframework.stereotype.Controller;
import org.springframework.transaction.annotation.Transactional;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.WebDataBinder;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.InitBinder;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import br.com.casadocodigo.loja.dao.ProdutoRepository;
import br.com.casadocodigo.loja.dtos.ProdutoComSumario;
import br.com.casadocodigo.loja.infra.FileUploadService;
import br.com.casadocodigo.loja.models.TipoPreco;

@Controller
@RequestMapping("/produtos")
public class ProdutoController {
	
	@Autowired
	private ProdutoRepository repository;
	
	@Autowired
	private FileUploadService uploadService; 
	
	@InitBinder
	public void initBinder(WebDataBinder webDataBinder){
		//webDataBinder.addValidators(new ProdutoValidator());
	}
	
	@GetMapping(path="/novo")
	public ModelAndView exibirCadastroNovoProduto(ProdutoComSumario produtoComSumario){
		ModelAndView modelAndView = new ModelAndView("produtos/novo_produto");
		
		modelAndView.addObject("tiposPreco", TipoPreco.values());
		
		return modelAndView;
	}

	@PostMapping
	@Transactional
	@CacheEvict(value="produtosHome", allEntries=true)
	public ModelAndView cadastrarProduto(@Valid ProdutoComSumario produtoComSumario, BindingResult bindingResult, RedirectAttributes redirectAttributes, HttpServletRequest request){

		if(bindingResult.hasErrors()){
			return exibirCadastroNovoProduto(produtoComSumario);
		}
		
		try{
			String pathOfFile = uploadService.write(produtoComSumario.getSumario());
			produtoComSumario.getProduto().setSumarioPath(pathOfFile);
			
			repository.save(produtoComSumario.getProduto());
			redirectAttributes.addFlashAttribute("resultadoProcessamento", "Produto cadastrado com sucesso!");
		
		}catch (RuntimeException e) {
			System.out.println(e.getMessage());
			request.setAttribute("resultadoProcessamento", "Erro ao cadastrar o produto. Contate o administrador.");
			return exibirCadastroNovoProduto(produtoComSumario);
		}
			
		return new ModelAndView("redirect:/produtos");
	}
	
	@GetMapping
	public ModelAndView listarProdutos(){
		ModelAndView modelAndView = new ModelAndView("/produtos/listar_produtos");
		modelAndView.addObject("produtos", repository.findAll());
		
		return modelAndView;
	}

	@GetMapping(path="/{id}")
	public ModelAndView exibirDetalheDoProduto(@PathVariable(name="id") Long id){
		ModelAndView modelAndView = new ModelAndView("/produtos/detalhes");
		
		repository.findProdutoWithPrecosById(id).ifPresent(produto->modelAndView.addObject("produto", produto));
		
		return modelAndView;	
	}
}
