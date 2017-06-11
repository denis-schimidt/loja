package br.com.casadocodigo.loja.audit;

import java.util.Calendar;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.Lob;
import javax.persistence.Table;
import javax.validation.constraints.NotNull;

import org.hibernate.validator.constraints.NotEmpty;

@Table(name="audit")
@Entity
class Audit {
	@Id @GeneratedValue
	private Long id; 
	@NotEmpty
	@Column(length=30)
	private String responsavel;
	@NotNull
	private Calendar data;
	@Lob @NotEmpty
	@Column(name="values_entity")
	private String valuesEntity;
	
	public Audit(String responsavel, String valuesEntity) {
		this.responsavel = responsavel;
		this.data = Calendar.getInstance();
		this.valuesEntity = valuesEntity;
	}
	
	Audit() {}

	public String getResponsavel() {
		return responsavel;
	}

	public void setResponsavel(String responsavel) {
		this.responsavel = responsavel;
	}

	public Calendar getData() {
		return data;
	}

	public void setData(Calendar data) {
		this.data = data;
	}

	public String getValuesEntity() {
		return valuesEntity;
	}

	public void setValuesEntity(String valuesEntity) {
		this.valuesEntity = valuesEntity;
	}

	public Long getId() {
		return id;
	}
}
