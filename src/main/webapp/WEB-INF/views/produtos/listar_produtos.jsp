<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="s" uri="http://www.springframework.org/tags"%>
<%@ taglib prefix="sec" uri="http://www.springframework.org/security/tags" %>

<!DOCTYPE html>
<html>
<head>
<meta content="text/html; charset=UTF-8">
<title>Listagem de Produtos</title>
<c:url value="/css" var="cssPath"/>
<link rel="stylesheet" href="${cssPath}/bootstrap.min.css">
<link rel="stylesheet" href="${cssPath}/bootstrap-theme.min.css">
<!-- script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script-->
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
	      <ul class="nav navbar-nav navbar-right">
	        <li><a href="#">Usuário: <sec:authentication property="principal" var="usuario"></sec:authentication>${usuario.username}</a></li>
	      </ul>
	    </div>
	  </div>
	</nav>
		
	<div class="container">
		<h1>Listagem de Produtos</h1>
	
		<table class="table table-bordered table-striped table-hover">
			<tr>
				<th width="20%">Nome</th>
				<th width="75%">Descrição</th>
				<th>Páginas</th>
			</tr>
			<c:forEach items="${produtos}" var="produto">
				<tr>
					<td>
						<a href="${s:mvcUrl('PC#exibirDetalheDoProduto').arg(0,produto.id.toString()).build()}">
							<c:out value="${produto.nome}"></c:out>
						</a>	
					</td>
					<td><c:out value="${produto.descricao}"></c:out></td>
					<td><c:out value="${produto.paginas}"></c:out></td>
				</tr>
			</c:forEach>
		</table>
	</div>	
</body>
</html>