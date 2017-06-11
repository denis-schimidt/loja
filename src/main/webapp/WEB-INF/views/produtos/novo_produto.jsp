<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="s" uri="http://www.springframework.org/tags"%>

<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Cadastro de Produtos</title>
<c:url value="/css" var="cssPath"/>
<link rel="stylesheet" href="${cssPath}/bootstrap.min.css">
<link rel="stylesheet" href="${cssPath}/bootstrap-theme.min.css">

<style type="text/css">
	.btn-file {
	    position: relative;
	    overflow: hidden;
	}
	
	.btn-file input[type=file] {
	    position: absolute;
	    top: 0;
	    right: 0;
	    min-width: 100%;
	    min-height: 100%;
	    font-size: 100px;
	    text-align: right;
	    filter: alpha(opacity=0);
	    opacity: 0;
	    outline: none;
	    background: white;
	    cursor: inherit;
	    display: block;
	}
</style>

</head>
<body>
	<nav class="navbar navbar-inverse">
	  <div class="container">
	    <div class="navbar-header">
	      <button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#bs-example-navbar-collapse-1" aria-expanded="false">
	        <span class="sr-only">Toggle navigation</span>
	        <span class="icon-bar"></span>
	        <span class="icon-bar"></span>
	        <span class="icon-bar"></span>
	      </button>
	      <a class="navbar-brand" href="${s:mvcUrl('HC#index').build()}">Casa do Código</a>
	    </div>
	    <div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">
	      <ul class="nav navbar-nav">
	        <li><a href="${s:mvcUrl('PC#listarProdutos').build()}">Lista de Produtos</a></li>
	        <li><a href="${s:mvcUrl('PC#exibirCadastroNovoProduto').build()}">Cadastro de Produtos</a></li>
	      </ul>
	    </div><!-- /.navbar-collapse -->
	  </div>
	</nav>
	
	<p><c:out value="${resultadoProcessamento}"></c:out></p>

	<div class="container">
		<form:form method="post" action="${s:mvcUrl('PC#cadastrarProduto').build()}" modelAttribute="produtoComSumario" enctype="multipart/form-data">
			<div class="form-group">
				<label>Nome</label>
				<form:input path="nome" maxlength="10" cssClass="form-control"/>
				<div>
					<form:errors path="produto.nome" />
				</div>
			</div>
			<div class="form-group">
				<label>Descrição</label>
				<form:textarea path="descricao" cssClass="form-control"/>
				<div>
					<form:errors path="produto.descricao" />
				</div>	
			</div>
			<div class="form-group">
				<label>Páginas</label>
				<form:input path="paginas" maxlength="5" cssClass="form-control"/>
				<div>
					<form:errors path="produto.paginas" />
				</div>	
			</div>
			<div class="form-group">
				<label>Data de Lançamento</label>
				<form:input path="dataLancamento" cssClass="form-control"/>
				<div>
					<form:errors path="produto.dataLancamento" />
				</div>	
			</div>
			<c:forEach items="${tiposPreco}" var="tipoPreco" varStatus="iterator" >
				<div class="form-group">
					<label><c:out value="${tipoPreco}" /></label>
					<form:input path="precos[${iterator.index}].valor" cssClass="form-control"/>
					<form:hidden path="precos[${iterator.index}].tipoPreco" value="${tipoPreco}"/>
					<div>
						<form:errors path="produto.precos[${iterator.index}].valor" />
					</div>	
				</div>
			</c:forEach>
			<div class="form-group">
				<label>Sumário</label>
				<input type="file" name="sumario" class="form-control"/>
				<div>
					<form:errors path="sumario" />
				</div>
			</div>
			<form:button value="submit" class="btn btn-primary">OK</form:button>
		</form:form>
	</div>	
</body>
</html>