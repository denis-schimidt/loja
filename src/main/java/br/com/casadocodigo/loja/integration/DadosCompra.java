package br.com.casadocodigo.loja.integration;

import java.math.BigDecimal;

import javax.validation.constraints.DecimalMax;
import javax.validation.constraints.DecimalMin;
import javax.validation.constraints.NotNull;

public class DadosCompra {
	@NotNull(message="{NotNull.dadosCompra.value}") 
	@DecimalMin(value="1", message="{DecimalMin.dadosCompra.value}") @DecimalMax(value="500", message="{DecimalMax.dadosCompra.value}")
	private BigDecimal value;

	public DadosCompra(BigDecimal value) {
		this.value = value;
	}

	DadosCompra() {}
	
	public BigDecimal getValue() {
		return value;
	}
	
	public void setValue(BigDecimal value) {
		this.value = value;
	}

	@Override
	public String toString() {
		return String.format("DadosCompra [value=%s]", value);
	}
}
