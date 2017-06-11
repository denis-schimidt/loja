package br.com.casadocodigo.loja.validation;

public enum FileType {
	PDF("application/pdf");
	
	private String contentType;
	
	private FileType(String contentType) {
		this.contentType = contentType;
	}

	public String getContentType() {
		return contentType;
	}
}
