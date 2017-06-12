package br.com.casadocodigo.loja.controllers;

import java.text.NumberFormat;
import java.util.concurrent.Callable;

import org.slf4j.Logger;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.client.RestTemplate;
import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import br.com.casadocodigo.loja.integration.DadosCompra;
import br.com.casadocodigo.loja.integration.TransacaoResposta;
import br.com.casadocodigo.loja.models.CarrinhoCompras;

@Controller
@RequestMapping(path="/pagamentos")
public class PagamentoController {

	@Autowired
	private Logger log;
	
	@Value("${url.pagamento}")
	private String uriServicoPagamento;
	
	@Autowired
	private RestTemplate restTemplate;
	
	@Autowired
	private CarrinhoCompras carrinhoCompras;
	
	@PostMapping
	public Callable<ModelAndView> finalizarCompra(RedirectAttributes redirectAttributes){
		
		return ()->{
			DadosCompra dadosCompra = new DadosCompra(carrinhoCompras.finalizar());
			String valorFormatado = NumberFormat.getCurrencyInstance().format(dadosCompra.getValue());
			
			try{
				TransacaoResposta response = restTemplate.postForObject(uriServicoPagamento, dadosCompra, TransacaoResposta.class);
				log.info(response.toString());
				redirectAttributes.addFlashAttribute("resultadoProcessamento", response.getMensagem());
				
			}catch (Exception e) {
				log.error("Erro ao executar o pagamento -> Valor de " + valorFormatado, e);
				redirectAttributes.addFlashAttribute("resultadoProcessamento", "Falha ao executar o pagamento devido ao valor >> " + valorFormatado);
			}
			
			return new ModelAndView("redirect:/");
		};
	}
}
