package br.com.casadocodigo.loja.dtos;

import static br.com.casadocodigo.loja.validation.FileType.PDF;

import java.util.Calendar;
import java.util.List;

import javax.validation.Valid;

import org.springframework.web.multipart.MultipartFile;

import br.com.casadocodigo.loja.models.Preco;
import br.com.casadocodigo.loja.models.Produto;
import br.com.casadocodigo.loja.validation.FileTypeAcceptable;
import br.com.casadocodigo.loja.validation.MaxSizeInMegaBytes;

public class ProdutoComSumario {
	@Valid
	private Produto produto;
	
	@FileTypeAcceptable(value=PDF, message="{FileTypeAcceptable.sumario}")
	@MaxSizeInMegaBytes(value=10, message="{MaxSizeInMegaBytes.sumario}")
	private MultipartFile sumario;

	public ProdutoComSumario() {
		this.produto = new Produto();
	}

	public MultipartFile getSumario() {
		return sumario;
	}
	
	public void setSumario(MultipartFile sumario) {
		this.sumario = sumario;
	}
	
	public Produto getProduto() {
		return produto;
	}
	
	public void setProduto(Produto produto) {
		this.produto = produto;
	}

	public String getNome() {
		return produto.getNome();
	}
	
	public String getDescricao() {
		return produto.getDescricao();
	}
	
	public int hashCode() {
		return produto.hashCode();
	}
	
	public int getPaginas() {
		return produto.getPaginas();
	}
	
	public void setNome(String nome) {
		produto.setNome(nome);
	}
	
	public void setDescricao(String descricao) {
		produto.setDescricao(descricao);
	}
	
	public void setPaginas(int paginas) {
		produto.setPaginas(paginas);
	}
	
	public void setPrecos(List<Preco> precos) {
		produto.setPrecos(precos);
	}
	
	public List<Preco> getPrecos() {
		return produto.getPrecos();
	}
	
	public Calendar getDataLancamento() {
		return produto.getDataLancamento();
	}
	
	public void setDataLancamento(Calendar dataLancamento) {
		produto.setDataLancamento(dataLancamento);
	}
	
	public String getSumarioPath() {
		return produto.getSumarioPath();
	}
	
	public void setSumarioPath(String sumario) {
		produto.setSumarioPath(sumario);
	}
	
	public String toString() {
		return produto.toString();
	}
}
