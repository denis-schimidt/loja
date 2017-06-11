package br.com.casadocodigo.loja.dao;

import java.util.List;
import java.util.Optional;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.query.Param;

import br.com.casadocodigo.loja.models.Produto;

public interface ProdutoRepository extends JpaRepository<Produto,Long> {
	
	@Query("select p from Produto p join fetch p.precos where p.id = :#{#id}")
	Optional<Produto> findProdutoWithPrecosById(@Param("id") Long id);
	
	@Query("select distinct(p) from Produto p join fetch p.precos")
	List<Produto> findAllProdutosWithPrecos();
}
