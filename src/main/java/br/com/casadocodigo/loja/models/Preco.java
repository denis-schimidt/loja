package br.com.casadocodigo.loja.models;

import java.math.BigDecimal;

import javax.persistence.Column;
import javax.persistence.Embeddable;
import javax.persistence.EnumType;
import javax.persistence.Enumerated;
import javax.validation.constraints.DecimalMax;
import javax.validation.constraints.DecimalMin;
import javax.validation.constraints.NotNull;

@Embeddable
public class Preco {
	@Enumerated(EnumType.STRING)
	@NotNull(message="{NotNull.tipoPreco}")
	@Column(length=10)
	private TipoPreco tipoPreco;
	
	@DecimalMin(value="0") @DecimalMax(value="9999.99")
	@NotNull(message="{NotNull.valor}")
	@Column(precision=6, scale=2)
	private BigDecimal valor;
	
	public TipoPreco getTipoPreco() {
		return tipoPreco;
	}

	public void setTipoPreco(TipoPreco tipoPreco) {
		this.tipoPreco = tipoPreco;
	}

	public BigDecimal getValor() {
		return valor;
	}

	public void setValor(BigDecimal valor) {
		this.valor = valor;
	}

	@Override
	public String toString() {
		return String.format("Preco [tipoPreco=%s, valor=%s]", tipoPreco, valor);
	}
}
