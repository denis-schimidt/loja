package br.com.casadocodigo.loja.models;

import java.io.Serializable;
import java.math.BigDecimal;
import java.util.Map;
import java.util.Set;
import java.util.concurrent.ConcurrentHashMap;

import org.springframework.context.annotation.Scope;
import org.springframework.context.annotation.ScopedProxyMode;
import org.springframework.stereotype.Component;
import org.springframework.web.context.WebApplicationContext;

@Component
@Scope(scopeName=WebApplicationContext.SCOPE_SESSION, proxyMode=ScopedProxyMode.TARGET_CLASS)
public class CarrinhoCompras implements Serializable {
	private static final long serialVersionUID = 1L;
	
	private Map<CarrinhoItem, Long> mapaCarrinhoItem = new ConcurrentHashMap<>(); 
	
	public void adicionar(Produto produto, TipoPreco tipoPreco) {
		CarrinhoItem carrinhoItem = new CarrinhoItem(produto, tipoPreco);

		mapaCarrinhoItem.computeIfPresent(carrinhoItem, (K, V) -> V.longValue() + 1L);
		mapaCarrinhoItem.putIfAbsent(carrinhoItem, 1L);
	}
	
	public Long getQuantidadeItens(){
		return mapaCarrinhoItem.values().stream().reduce(0L, (A, B) -> A + B);
	}
	
	public Set<CarrinhoItem> getItens(){
		return mapaCarrinhoItem.keySet();
	}
	
	public Long getQuantidadePor(CarrinhoItem carrinhoItem){
		 return mapaCarrinhoItem.containsKey(carrinhoItem) ? mapaCarrinhoItem.get(carrinhoItem) : 0L;
	}
	
	public BigDecimal calcularTotalPor(CarrinhoItem item){
		return item.getValor().multiply(new BigDecimal(mapaCarrinhoItem.get(item).toString())); 
	}
	
	public BigDecimal calcularTotal(){
		return mapaCarrinhoItem.keySet().stream()
			.map(this::calcularTotalPor)
			.reduce(BigDecimal.ZERO, BigDecimal::add);
	}
	
	public void removerItem(CarrinhoItem carrinhoItem){
		mapaCarrinhoItem.remove(carrinhoItem);
	}
	
	public BigDecimal finalizar(){
		BigDecimal total = calcularTotal();
		mapaCarrinhoItem.clear();
		
		return total;
	}
}
