package br.com.casadocodigo.loja.restcontrollers;

import java.text.NumberFormat;
import java.util.concurrent.atomic.AtomicInteger;

import javax.validation.Valid;

import org.slf4j.Logger;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import br.com.casadocodigo.loja.integration.DadosCompra;
import br.com.casadocodigo.loja.integration.TransacaoResposta;

@RestController
@RequestMapping("/api/compras")
public class ComprasController {
	
	@Autowired
	private Logger log;
	
	@Autowired
	private AtomicInteger atomicInteger;

	@PostMapping
	public TransacaoResposta comprar(@Valid @RequestBody DadosCompra dadosCompra){
		log.info(dadosCompra.toString());
		
		String message = String.format("Pagamento de %s realizado com sucesso.", NumberFormat.getCurrencyInstance().format(dadosCompra.getValue())); 
		
		return new TransacaoResposta(atomicInteger.incrementAndGet(), message);
	}
}
