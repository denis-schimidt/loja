package br.com.casadocodigo.loja.models;

import java.math.BigDecimal;
import java.util.Objects;

public class CarrinhoItem {
	private Produto produto;
	private TipoPreco tipoPreco;

	public CarrinhoItem(Produto produto, TipoPreco tipoPreco) {
		this.produto = produto;
		this.tipoPreco = tipoPreco;
	}
	
	public Produto getProduto() {
		return produto;
	}

	public TipoPreco getTipoPreco() {
		return tipoPreco;
	}
	
	public BigDecimal getValor(){
		return produto.getPrecos()
			.stream()
			.filter(preco->preco.getTipoPreco() == this.tipoPreco)
			.findFirst()
			.get()
			.getValor();
	}

	@Override
	public int hashCode() {
		return Objects.hash(produto, tipoPreco);
	}

	@Override
	public boolean equals(Object obj) {
		if (this == obj)
			return true;
		if (obj == null)
			return false;
		if (getClass() != obj.getClass())
			return false;
		CarrinhoItem other = (CarrinhoItem) obj;
		
		return Objects.equals(produto, other.produto) &&
			Objects.equals(tipoPreco, other.tipoPreco);	
	}

	@Override
	public String toString() {
		return String.format("CarrinhoItem [produto=%s, tipoPreco=%s]", produto, tipoPreco);
	}
}
