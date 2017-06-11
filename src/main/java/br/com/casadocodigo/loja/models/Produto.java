package br.com.casadocodigo.loja.models;

import java.util.Calendar;
import java.util.List;
import java.util.Objects;

import javax.persistence.Column;
import javax.persistence.ElementCollection;
import javax.persistence.Entity;
import javax.persistence.EntityListeners;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.Table;
import javax.persistence.Temporal;
import javax.persistence.TemporalType;
import javax.validation.Valid;
import javax.validation.constraints.DecimalMax;
import javax.validation.constraints.DecimalMin;
import javax.validation.constraints.NotNull;
import javax.validation.constraints.Past;
import javax.validation.constraints.Size;

import org.hibernate.validator.constraints.NotBlank;
import org.springframework.format.annotation.DateTimeFormat;

import br.com.casadocodigo.loja.audit.AuditEntityListener;
import br.com.casadocodigo.loja.audit.Auditable;

@EntityListeners(AuditEntityListener.class)
@Entity
@Table(name="produto")
public class Produto implements Auditable {
	
	@Id @GeneratedValue
	private Long id;
	
	@NotBlank(message="{NotBlank.nome}")
	@Column(length=10, nullable=false)
	private String nome;
	
	@NotBlank
	@Column(length=255, nullable=false)
	@Size(min=10, max=255, message="{Size.descricao}")
	private String descricao;
	
	@Temporal(TemporalType.DATE)
	@DateTimeFormat @NotNull(message="{NotNull.dataLancamento}")
	@Past(message="{Past.dataLancamento}")
	private Calendar dataLancamento; 

	@DecimalMin(value="1")
	@DecimalMax(value="5000")
	private int paginas;
	
	private String sumarioPath;
	
	@ElementCollection
	@Valid
	private List<Preco> precos;
	
	public Produto() {}

	public Long getId() {
		return id;
	}

	public void setId(Long id) {
		this.id = id;
	}

	public String getNome() {
		return nome;
	}
	
	public String getDescricao() {
		return descricao;
	}
	
	public int getPaginas() {
		return paginas;
	}
	
	public void setNome(String nome) {
		this.nome = nome;
	}

	public void setDescricao(String descricao) {
		this.descricao = descricao;
	}
	
	public void setPaginas(int paginas) {
		this.paginas = paginas;
	}

	public void setPrecos(List<Preco> precos) {
		this.precos = precos;
	}
	
	public List<Preco> getPrecos() {
		return precos;
	}
	
	public Calendar getDataLancamento() {
		return dataLancamento;
	}

	public void setDataLancamento(Calendar dataLancamento) {
		this.dataLancamento = dataLancamento;
	}
	
	public String getSumarioPath() {
		return sumarioPath;
	}

	public void setSumarioPath(String sumario) {
		this.sumarioPath = sumario;
	}
	
	@Override
	public int hashCode() {
		return Objects.hash(nome,descricao, dataLancamento, paginas);
	}

	@Override
	public boolean equals(Object obj) {
		if (this == obj)
			return true;
		if (obj == null)
			return false;
		if (getClass() != obj.getClass())
			return false;
		Produto other = (Produto) obj;
		
		return Objects.equals(nome, other.nome) &&
			Objects.equals(descricao, other.descricao) &&
			Objects.equals(dataLancamento, other.dataLancamento) &&
			Objects.equals(paginas, other.paginas);	
	}

	@Override
	public String toString() {
		return String.format(
				"Produto [id=%s, nome=%s, descricao=%s, paginas=%s, sumarioPath=%s, precos=%s, dataLancamento=%7$td/%7$tm/%7$tY]", id,
				nome, descricao, paginas, sumarioPath, precos, dataLancamento);
	}
}
