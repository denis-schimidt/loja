package br.com.casadocodigo.loja.integration;

public class TransacaoResposta {
	private Integer id;
	private String mensagem;
	
	TransacaoResposta() {}
	
	public TransacaoResposta(Integer id, String mensagem) {
		this.id = id;
		this.mensagem = mensagem;
	}

	public Integer getId() {
		return id;
	}
	
	public String getMensagem() {
		return mensagem;
	}

	public void setId(Integer id) {
		this.id = id;
	}
	
	public void setMensagem(String mensagem) {
		this.mensagem = mensagem;
	}

	@Override
	public String toString() {
		return String.format("TransacaoResposta [id=%s, mensagem=%s]", id, mensagem);
	}
}
