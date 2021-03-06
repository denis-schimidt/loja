<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="s" uri="http://www.springframework.org/tags"%>

<!doctype html>
<html lang="pt-BR">
<head>
	

<link rel="icon" href="//cdn.shopify.com/s/files/1/0155/7645/t/227/assets/favicon.png?13966522090502778985" type="image/png"/>
<link href="https://plus.google.com/108540024862647200608" rel="publisher">

	

<title>Seu carrinho de compras - Casa do Código</title>

<link rel="stylesheet" media="all" href="//cdn.shopify.com/s/assets/storefront/additional-checkout-buttons-808913e66bb8ca34c54570ae143ad72de7405d257db279c632b910e1babef726.css" />
<link rel="stylesheet" href="//cdn.shopify.com/s/files/1/0155/7645/t/227/assets/style.css?13966522090502778985">
</head>
<body>
	<header role="banner" class="cabecalhoPrincipal container">
		<h1 class="cabecalhoPrincipal-titulo">
			<a tabindex="1" href="/" class="cabecalhoPrincipal-linkTitulo">
				<svg class="logo" role="img" aria-labelledby="altLogo" width="157px" height="55px" viewBox="-181 211.4 207.5 55" preserveAspectRatio="xMinYMid slice">
	<title id="altLogo">Casa do Código - Livros e Tecnologia</title>
	<rect class="logo-backgroundSimbolo" x="-181" y="211.4" class="st0" width="65" height="55"/>
	<g class="logo-simbolo">
		<path transform="translate(-0.1, 0)" class="logo-simboloParteInterna" d="M-133.6,234.2v-7.2l0,0.2h-22.6v24.7h22.6v0.3l0-7.2h-15.9v-10.8H-133.6"/>
		<path class="logo-simboloParteExterna" d="M-149.4,251.9h-6.9v-24.7h22.6v-6.9h-22.6l-6.7,6.9v24.7l6.7,6.9h22.6v-6.9H-149.4"/>
	</g>

	<g class="logo-text">
		<path transform="translate(-78.000000, -35.000000)" class="logo-slogan" d="M-18.5,288h-5.1v-8.7h1.2v7.7h3.9V288z M-15,288h-1.1v-6.5h1.1V288z M-14.9,280.3h-1.3v-1.1
			h1.3V280.3z M-6.8,281.4l-2.5,6.5h-1l-2.4-6.5h1.2l1.8,5.1l1.8-5.1H-6.8z M-1,282.6L-1,282.6c-0.9-0.2-1.8,0.1-2.4,0.7v4.6
			h-1.1v-6.5h1.1v1c0.7-0.6,1.4-1.1,2.4-0.9V282.6z M6.7,284.7c0,1.7-0.9,3.4-2.8,3.4c-2.1,0.1-3.1-1.7-3.1-3.6
			c0.1-1.7,1-3.3,2.9-3.3C5.8,281.3,6.7,282.9,6.7,284.7L6.7,284.7z M5.6,284.7c0-1.2-0.4-2.5-1.8-2.5c-1.4,0-1.8,1.3-1.8,2.5
			c0,1.2,0.4,2.5,1.8,2.5C5.2,287.2,5.6,285.9,5.6,284.7L5.6,284.7z M11.1,288.1c-0.8,0-1.5-0.2-2.2-0.6v-1.2H9
			c0.3,0.2,0.5,0.4,0.8,0.5c0.7,0.3,1.7,0.5,2.3,0.1c0.9-0.6,0.2-1.5-0.6-1.7c-0.4-0.1-0.8-0.2-1.2-0.3c-1.3-0.4-1.9-1.9-1-3
			c0.9-1.1,2.9-0.9,4-0.3v1.2h-0.1c-0.7-0.6-2.6-1.3-3.2-0.2c-0.7,1.2,1.3,1.4,2,1.6c1.5,0.4,2,2.2,0.8,3.2
			C12.5,288,11.8,288.1,11.1,288.1L11.1,288.1z M24.3,288.1c-2.9,0-4.3-3.3-2.7-5.6c0.7-1,2-1.5,3.3-1.1c1.3,0.4,1.8,1.6,1.8,2.9
			v0.6h-4.5c0,2,1.8,2.9,3.5,2.1c0.3-0.1,0.6-0.3,0.8-0.5h0.1v1.2c-0.3,0.1-0.7,0.3-1,0.4C25.1,288.1,24.7,288.1,24.3,288.1
			L24.3,288.1z M25.6,284c0-0.4-0.1-0.9-0.4-1.3c-0.6-0.8-1.9-0.6-2.5,0c-0.3,0.4-0.5,0.8-0.5,1.3H25.6z M36.7,288v-7.7h-2.9v-1
			h7v1h-2.9v7.7H36.7z M44.7,288.1c-2.9,0-4.3-3.3-2.7-5.6c0.7-1,2-1.5,3.3-1.1c1.3,0.4,1.8,1.6,1.8,2.9v0.6h-4.5
			c0,2,1.8,2.9,3.5,2.1c0.3-0.1,0.6-0.3,0.8-0.5h0.1v1.2c-0.3,0.1-0.7,0.3-1,0.4C45.5,288.1,45.1,288.1,44.7,288.1L44.7,288.1z
			 M45.9,284c0-0.4-0.1-0.9-0.4-1.3c-0.6-0.8-1.9-0.6-2.5,0c-0.3,0.4-0.5,0.8-0.5,1.3H45.9z M52.2,288.1c-2.4,0-3.4-2.2-3-4.4
			c0.5-2.4,2.9-3,4.9-2v1.2h-0.1c-0.2-0.2-0.5-0.4-0.8-0.5c-2-1-3.2,0.8-3,2.7c0.2,2,2.3,2.5,3.8,1.2h0.1v1.2
			c-0.3,0.1-0.6,0.3-0.9,0.3C53,288.1,52.6,288.1,52.2,288.1L52.2,288.1z M61.8,288h-1.1v-3.7c0-0.5,0-1-0.2-1.5
			c-0.6-1.1-2.1-0.2-2.7,0.3v4.9h-1.1v-6.5h1.1v0.7c1.7-1.5,4-0.9,4,1.6V288z M70.2,284.7c0,1.7-0.9,3.4-2.8,3.4
			c-2.1,0.1-3.1-1.7-3.1-3.6c0.1-1.7,1-3.3,2.9-3.3C69.3,281.3,70.2,282.9,70.2,284.7L70.2,284.7z M69.1,284.7
			c0-1.2-0.4-2.5-1.8-2.5c-1.4,0-1.8,1.3-1.8,2.5c0,1.2,0.4,2.5,1.8,2.5C68.7,287.2,69.1,285.9,69.1,284.7L69.1,284.7z M74,288
			h-1.1v-9.1H74V288z M82.5,284.7c0,1.7-0.9,3.4-2.8,3.4c-2.1,0.1-3.1-1.7-3.1-3.6c0.1-1.7,1-3.3,2.9-3.3
			C81.6,281.3,82.5,282.9,82.5,284.7L82.5,284.7z M81.4,284.7c0-1.2-0.4-2.5-1.8-2.5c-1.4,0-1.8,1.3-1.8,2.5
			c0,1.2,0.4,2.5,1.8,2.5C81,287.2,81.4,285.9,81.4,284.7L81.4,284.7z M89.1,286.2v-3.6c-1.7-0.8-3.2-0.1-3.2,1.9
			c0,0.7,0,1.7,0.7,2.2C87.3,287.1,88.4,286.7,89.1,286.2L89.1,286.2z M85.4,289c0.3,0.1,0.5,0.2,0.8,0.3
			c0.8,0.2,1.9,0.4,2.5-0.3c0.3-0.4,0.3-0.8,0.3-1.3v-0.6c-1.2,1.1-3.2,1.1-4-0.5c-0.7-1.3-0.6-3.4,0.4-4.5
			c0.9-1,2.4-1.1,3.5-0.4l0.1-0.3h1v5.8c0,1.1-0.2,2.2-1.2,2.8c-1.1,0.6-2.6,0.5-3.7,0.1L85.4,289L85.4,289z M94.4,288h-1.1v-6.5
			h1.1V288z M94.5,280.3h-1.3v-1.1h1.3V280.3z M101.2,286.4v-1.8c-0.7,0.1-1.3,0.1-2,0.3c-0.8,0.3-1.4,1.3-0.7,2
			C99.3,287.6,100.5,286.9,101.2,286.4L101.2,286.4z M101.2,287.3c-0.3,0.2-0.5,0.4-0.8,0.6c-0.9,0.5-2,0.5-2.7-0.3
			c-1-1-0.7-2.8,0.6-3.4c0.9-0.4,2-0.4,2.9-0.5v-0.2c0-0.4-0.1-0.8-0.4-1c-0.8-0.5-2.2-0.1-3.1,0.2h-0.1v-1.1
			c1.2-0.3,2.9-0.6,4,0.2c0.5,0.4,0.7,1.1,0.7,1.7v4.5h-1.1V287.3z"/>
		<path class="logo-casaDoCodigo" transform="translate(-77.000000, -14.000000)" d="M-16.8,250.8c-2.2,0.6-4.7-0.1-5.9-2.1c-1.1-1.9-1.2-4.6-0.6-6.7
			c0.8-2.6,2.9-3.8,5.5-3.6c0.5,0,1.8,0.5,2.1,0.3c0.3-0.2,0.6-1,0.9-1.3c-2.5-0.9-5.6-1.1-7.9,0.5c-2.2,1.6-2.9,4.4-2.9,7
			c0,2.6,0.8,5.5,3.2,6.9c2.3,1.4,5.7,1.2,7.8-0.4c-0.2-0.2-0.5-0.6-0.7-0.8c-0.1,0-0.1-0.2-0.2-0.2
			C-15.8,250.2-16.6,250.7-16.8,250.8C-17.3,250.9-16.4,250.6-16.8,250.8z M51.7,250.4c-2.2,0.6-4.7-0.1-5.9-2.1
			c-1.1-1.9-1.2-4.5-0.6-6.6c0.7-2.5,2.7-3.9,5.3-3.7c0.5,0,1,0.1,1.4,0.2c0.3,0.1,0.7,0.3,0.9,0.2c0.3-0.1,0.7-1.1,0.9-1.4
			c-2.5-0.9-5.6-1.1-7.9,0.5c-2.2,1.6-2.9,4.4-2.9,7c0,2.6,0.8,5.5,3.2,6.9c2.3,1.4,5.7,1.2,7.8-0.4c-0.2-0.2-0.5-0.6-0.7-0.8
			c-0.1,0-0.1-0.2-0.2-0.2C52.7,249.8,51.9,250.3,51.7,250.4C51.2,250.5,52.1,250.2,51.7,250.4z M-5.7,251.1
			c-0.6-1.6-0.2-3.7-0.2-5.4c0-1.5,0.1-3.3-1.5-4.1c-1.4-0.7-3.5-0.4-4.9,0c-0.3,0.1-0.9,0.2-1.1,0.4c-0.4,0.4-0.2,0-0.1,0.4
			c0,0.3,0.3,0.8,0.4,1.1c1.1-0.6,2.9-1,4.2-0.7c1.5,0.4,1.4,2,1.2,3.3c-0.8-0.1-1.7-0.1-2.5,0c-1.1,0.1-2.3,0.1-3.1,0.7
			c-1.8,1.4-1.8,4.4,0.4,5.4c1,0.5,2.3,0.4,3.3,0.1c0.5-0.1,1-0.4,1.4-0.7c0.1-0.1,0.6-0.7,0.7-0.7c0.2,0,0.4,1,0.6,1.2
			c0.2,0.2,0.3,0.3,0.6,0.3c0.5,0.1,1,0,1.5,0C-5.1,252-5.5,251.6-5.7,251.1C-5.9,250.6-5.5,251.6-5.7,251.1z M-7.6,249.2
			c-0.5,1.3-2.2,1.9-3.5,1.7c-1.5-0.2-2.3-2.1-0.9-3.1c0.6-0.4,1.3-0.4,2-0.4c0.4,0,1.9-0.3,2.3,0
			C-7.5,247.6-7.6,248.7-7.6,249.2z M1.7,246.7c-1.1-0.8-4.6-1.1-3.9-3.2c0.6-1.6,3.5-0.8,4.5-0.3c0.1-0.3,0.5-1.2,0.4-1.4
			c-0.1-0.2-1.1-0.4-1.4-0.5c-0.5-0.1-1.1-0.2-1.7-0.2c-2.3-0.1-4.3,1.3-3.6,3.9c0.3,1.1,1.3,1.7,2.2,2.1c1,0.4,2.7,0.7,3,2
			c0.6,2.9-3.8,2-5.1,1.3c-0.1,0.3-0.2,0.6-0.3,0.9c-0.2,0.5-0.3,0.6,0.3,0.8c1.2,0.5,2.7,0.7,4,0.5C3,252.1,4.3,248.4,1.7,246.7
			z M12.8,251.1c-0.6-1.6-0.2-3.7-0.2-5.4c0-1.5,0.1-3.3-1.5-4.1c-1.4-0.7-3.5-0.4-4.9,0c-0.3,0.1-0.9,0.2-1.1,0.4
			c-0.4,0.4-0.2,0-0.1,0.4c0,0.3,0.3,0.8,0.4,1.1c1.1-0.6,2.9-1,4.2-0.7c1.5,0.4,1.4,2,1.2,3.3c-0.8-0.1-1.7-0.1-2.5,0
			c-1.1,0.1-2.3,0.1-3.1,0.7c-1.8,1.4-1.8,4.4,0.4,5.4c1,0.5,2.3,0.4,3.3,0.1c0.5-0.1,1-0.4,1.4-0.7c0.1-0.1,0.6-0.7,0.7-0.7
			c0.2,0,0.4,1,0.6,1.2c0.2,0.2,0.3,0.3,0.6,0.3c0.5,0.1,1,0,1.5,0C13.3,252,13,251.6,12.8,251.1C12.6,250.6,13,251.6,12.8,251.1
			z M10.9,249.2c-0.5,1.3-2.2,1.9-3.5,1.7c-1.5-0.2-2.3-2.1-0.9-3.1c0.6-0.4,1.3-0.4,2-0.4c0.4,0,1.9-0.3,2.3,0
			C11,247.6,10.9,248.7,10.9,249.2z M27.9,248.5c0-2.6,0-5.1,0-7.7c0-0.7,0-1.5,0-2.2c0-0.4,0.1-1.1,0-1.5
			c-0.1-0.4,0-0.3-0.6-0.3c-0.2,0-0.8-0.1-1,0c-0.3,0.1,0-0.1-0.2,0.2c-0.3,0.6,0,1.8,0,2.5c0,0.6,0,1.3,0,1.9
			c-2.3-0.8-5.3-0.4-6.6,1.9c-1.1,2-1.1,5.5,0.1,7.5c1.3,2,4.6,2.2,6.3,0.5c0.3-0.3,0.3-0.6,0.6-0.5c0.1,0.1,0.2,0.9,0.3,1
			c0.1,0.3,0,0.3,0.3,0.4c0.2,0.1,0.8,0,1,0C27.9,251.1,27.9,249.8,27.9,248.5z M26.1,248.7c-0.3,1.3-1,2.2-2.4,2.3
			c-1.4,0.1-2.4-0.6-2.8-1.9c-0.7-2.1-0.5-5.7,2.1-6.4c0.7-0.2,2.7-0.3,3.1,0.5c0.2,0.3,0,1.2,0,1.6
			C26.1,246.2,26.1,247.4,26.1,248.7z M37.4,242.6c-1.8-2.3-5.9-2.1-7.5,0.3c-1.4,2.1-1.4,6,0.2,8.1c1.7,2.2,5.7,2.1,7.4-0.1
			C39.1,248.8,39.1,244.7,37.4,242.6C37,242.1,37.8,243.2,37.4,242.6z M33.8,251.1c-2.7,0-3.1-3.1-3-5.1c0.2-1.8,1-3.3,3-3.3
			c2.7,0,3.2,3,3,5.1C36.6,249.5,35.7,251.1,33.8,251.1C33.2,251.1,35.8,251.1,33.8,251.1z M62.6,236.7c-0.5,0-1,0-1.5,0
			c-0.6,0-0.5-0.1-0.8,0.3c-0.7,0.8-1.2,1.9-1.7,2.8c0.4,0,1,0.1,1.3,0c0.2-0.1,0.5-0.6,0.7-0.8
			C61.2,238.3,61.9,237.5,62.6,236.7z M59.8,241.1c-2.3,0-4.3,1.4-5,3.6c-0.7,2.2-0.3,5,1.6,6.5c1.6,1.3,4,1.4,5.8,0.4
			c2.1-1.1,2.9-3.6,2.6-5.8C64.5,243,62.5,241.1,59.8,241.1z M59.7,250.7c-4.4,0-4.3-8.4,0.2-8.2
			C64.1,242.7,63.9,250.7,59.7,250.7z M76.3,236.3c-0.4,0-1.7-0.2-1.9,0c-0.2,0.2,0,1.5,0,1.7c0,1.5,0,3.1,0,4.6
			c-1.3-1.5-3.3-2.1-5.2-1.1c-1.9,1-2.8,3.2-2.8,5.2c0,2.1,0.9,4.3,2.9,5.1c0.9,0.4,2,0.4,3,0.1c0.5-0.2,1-0.4,1.4-0.8
			c0.3-0.3,0.6-0.9,0.9-1.1c0,0.4-0.1,1.6,0.1,1.8c0.2,0.2,1.4,0,1.7,0C76.1,246.7,76.3,241.5,76.3,236.3z M74.4,247.5
			c0,2.2-2.3,3.9-4.3,2.8c-1.9-1-2.1-3.8-1.4-5.6c0.7-1.9,3-2.9,4.7-1.5C74.6,244.3,74.4,246,74.4,247.5z M90.2,242.9
			c-0.6-0.6-1-1.3-1.9-1.6c-1-0.4-2.1-0.3-3,0c-2,0.7-3.1,2.7-3.3,4.7c-0.2,2.1,0.6,4.4,2.6,5.4c0.9,0.5,2,0.6,3,0.3
			c1.1-0.3,1.6-1,2.4-1.7c0,1.4,0.1,3.1-1.1,4.2c-1.4,1.2-4,0.8-5.4-0.1c-0.1,0.3-0.2,0.7-0.3,1c-0.2,0.6,0,0.6,0.6,0.9
			c1.3,0.5,2.9,0.6,4.3,0.4c3-0.6,3.9-3,3.9-5.8c0-3.1-0.2-6.2,0.1-9.3c-0.3,0-1.5-0.2-1.7,0C90.1,241.5,90.2,242.6,90.2,242.9z
			 M89.9,247.4c0,2.4-2.7,3.9-4.6,2.4c-1.6-1.2-1.7-3.8-0.9-5.5c0.8-1.7,3.2-2.5,4.6-1C90.2,244.4,89.9,246,89.9,247.4z
			 M98.4,241.1c-2.2,0-4.2,1.3-4.9,3.4c-0.8,2.2-0.3,5,1.5,6.5c1.6,1.3,4,1.5,5.8,0.6c2.2-1.1,3-3.6,2.7-5.9
			C103.1,243,101.1,241.1,98.4,241.1z M98.3,250.7c-4.4,0-4.3-8.4,0.2-8.2C102.7,242.7,102.5,250.7,98.3,250.7z M79.2,236.3
			c-1.5,0-1.6,2.4,0,2.4C80.7,238.7,80.8,236.3,79.2,236.3z M78.2,241.3c0.4,0,1.7-0.2,1.9,0.1c0.2,0.3,0,1.6,0,1.9
			c0,2.3,0,4.6,0,6.9c0,0.3,0.2,1.6,0,1.8c-0.1,0.1-1.8,0.1-1.9,0c-0.2-0.2,0-1.4,0-1.6c0-1.1,0-2.2,0-3.3
			C78.2,245.1,78.2,243.2,78.2,241.3z"/>
	</g>
</svg>

			</a>
		</h1>

		<div id="navegacaoCabecalho" class="cabecalhoPrincipal-navegacao">
			<div class="cabecalhoPrincipal-categoriasEBusca" role="presentation">
				<nav role="navigation" aria-label="Categorias de livros" class="colecoesDaCDC">
					
						<li class="colecoesDaCDC-colecaoItem">
							<a href="/collections/livros-de-java" class="colecoesDaCDC-colecaoLink">
								Java
							</a>
						</li>
					
						<li class="colecoesDaCDC-colecaoItem">
							<a href="/collections/livros-de-desenvolvimento-web" class="colecoesDaCDC-colecaoLink">
								Web
							</a>
						</li>
					
						<li class="colecoesDaCDC-colecaoItem">
							<a href="/collections/livros-de-front-e-design" class="colecoesDaCDC-colecaoLink">
								Front e Design
							</a>
						</li>
					
						<li class="colecoesDaCDC-colecaoItem">
							<a href="/collections/livros-de-games" class="colecoesDaCDC-colecaoLink">
								Games
							</a>
						</li>
					
						<li class="colecoesDaCDC-colecaoItem">
							<a href="/collections/livros-de-mobile" class="colecoesDaCDC-colecaoLink">
								Mobile
							</a>
						</li>
					
						<li class="colecoesDaCDC-colecaoItem">
							<a href="/collections/livros-de-startups" class="colecoesDaCDC-colecaoLink">
								Startups
							</a>
						</li>
					
				</nav>
				<form role="search"
					  aria-labelledby="rotuloBuscaPrincipal"
					  action="/search"
					  method="GET"
					  class="buscaPrincipal"
				>
					<label id="rotuloBuscaPrincipal" class="buscaPrincipal-label" for="campoBuscaPrincipal">
						Busque por autor, título, conteúdo...
					</label>
					<input type="hidden" name="type" value="product">
					<input id="campoBuscaPrincipal"
					       class="buscaPrincipal-campo"
					       placeholder="O que você procura?"
						   type="search"
						   name="q"
						   required
						   aria-required
					><!-- 
				 --><button class="buscaPrincipal-submit" type="submit">
						Buscar
					</button>
				</form>
			</div>

			<a tabindex="2" class="cabecalhoPrincipal-itemNavegacao cabecalhoPrincipal-mostraCategoriasEBusca" href="#navegacaoCabecalho">
				<img class="cabecalhoPrincipal-iconeItemNavegacao"
					 src="//cdn.shopify.com/s/files/1/0155/7645/t/227/assets/search.svg?13966522090502778985"
					 alt="Abrir navegação por categorias e busca"
				>
			</a>

			<a tabindex="-1" class="cabecalhoPrincipal-itemNavegacao cabecalhoPrincipal-escondeCategoriasEBusca" href="#">
				<img class="cabecalhoPrincipal-iconeItemNavegacao"
					 src="//cdn.shopify.com/s/files/1/0155/7645/t/227/assets/search.svg?13966522090502778985"
					 alt="Ir para ao topo da página"
				>
			</a>

			<a tabindex="3" href="/cart" title="Ir para sacola de compras" class="sacola cabecalhoPrincipal-itemNavegacao">
				<svg width="28px" height="34px" viewBox="0 0 28 34" role="img" aria-labelledby="sacolaLabel" class="sacola-icone">
					<title id="sacolaLabel">
						Você tem ${carrinhoCompras.quantidadeItens} item na sacola
					</title>
					<path fill="#f8965d" d="M1.66666667,26.9714355 L18.3333333,26.9714355 C19.2533333,26.9714355 20,26.2247689 20,25.3047689 L20,6.97143555 C20,6.05143555 19.2533333,5.30476888 18.3333333,5.30476888 L14.9916667,5.30476888 C14.9516667,2.53643555 12.735,0.30476888 10,0.30476888 C7.265,0.30476888 5.04833333,2.53643555 5.00833333,5.30476888 L1.66666667,5.30476888 C0.746666667,5.30476888 0,6.05143555 0,6.97143555 L0,25.3047689 C0,26.2247689 0.746666667,26.9714355 1.66666667,26.9714355 L1.66666667,26.9714355 Z M12.5,10.3047689 L7.5,10.3047689 C7.04,10.3047689 6.66666667,9.93143555 6.66666667,9.47143555 C6.66666667,9.01143555 7.04,8.63810221 7.5,8.63810221 L12.5,8.63810221 C12.96,8.63810221 13.3333333,9.01143555 13.3333333,9.47143555 C13.3333333,9.93143555 12.96,10.3047689 12.5,10.3047689 L12.5,10.3047689 Z M10,1.97143555 C11.8116667,1.97143555 13.285,3.45976888 13.325,5.30476888 L6.675,5.30476888 C6.715,3.45976888 8.18833333,1.97143555 10,1.97143555 L10,1.97143555 Z"></path>
					<g>
						<circle cx="19.5" cy="24.8047689" r="8.5" role="presentation" fill="#FFF"/>
						<text text-decoration="none" text-anchor="middle" x="19.5" y="30" class="sacola-contador">${carrinhoCompras.quantidadeItens}</text>
					</g>
				 </svg>
			</a>
		</div>
	</header>


	<main>
		<p class="destaqueDoCupom">
  Use o código <strong class="destaqueDoCupom-codigo"></strong> e tenha <strong class="destaqueDoCupom-desconto">10%</strong> de desconto!
  <button class="destaqueDoCupom-remover" title="Remover banner" onclick="removeDiscountBanner()"><?xml version="1.0" encoding="iso-8859-1"?>
<!-- Generator: Adobe Illustrator 16.0.0, SVG Export Plug-In . SVG Version: 6.00 Build 0)  -->
<!DOCTYPE svg PUBLIC "-//W3C//DTD SVG 1.1//EN" "http://www.w3.org/Graphics/SVG/1.1/DTD/svg11.dtd">
<svg version="1.1" id="Capa_1" xmlns="http://www.w3.org/2000/svg" xmlns:xlink="http://www.w3.org/1999/xlink" x="0px" y="0px"
	 width="15px" height="15px" viewBox="0 0 612 612" style="enable-background:new 0 0 612 612;" xml:space="preserve">
<g>
	<path fill="#ffffff" d="M387.128,170.748L306,251.915l-81.128-81.167l-54.124,54.124L251.915,306l-81.128,81.128l54.085,54.086L306,360.086
		l81.128,81.128l54.086-54.086L360.086,306l81.128-81.128L387.128,170.748z M522.38,89.62
		c-119.493-119.493-313.267-119.493-432.76,0c-119.493,119.493-119.493,313.267,0,432.76
		c119.493,119.493,313.267,119.493,432.76,0C641.873,402.888,641.873,209.113,522.38,89.62z M468.295,468.295
		c-89.62,89.619-234.932,89.619-324.551,0c-89.62-89.62-89.62-234.932,0-324.551c89.62-89.62,234.931-89.62,324.551,0
		C557.914,233.363,557.914,378.637,468.295,468.295z"/>
</g>
</svg>
</button>
</p>

		<section class="infoSection container">
	<h2 class="infoSection-titulo">Seu carrinho</h2>
	
	<table class="formularioDoCarrinho-tabela">
		<thead class="formularioDoCarrinho-cabecalho">
			<tr>
				<th></th>
				<th class="formularioDoCarrinho-cabecalho-item">Item</th>
				<th class="formularioDoCarrinho-cabecalho-item formularioDoCarrinho-cabecalho-preco">Preço</th>
				<th class="formularioDoCarrinho-cabecalho-item">Qtd</th>
				<th class="formularioDoCarrinho-cabecalho-item">Total</th>
				<th></th>
			</tr>
		</thead>
		<tbody>
			
		<c:forEach var="item" items="${carrinhoCompras.itens}">
			<tr>
				<td class="formularioDoCarrinho-item">
					<a href="/products/livro-javaee">
						<img class="formularioDoCarrinho-item-imagem" src="//cdn.shopify.com/s/files/1/0155/7645/products/G8Odq4Q1TChRM5NMkpWOfJLrIdpMhXpIMt0Qs0vOAJQ_size_mode_2_size_1024x768_small.jpeg?v=1447444684" />
					</a>
				</td>
				<td class="formularioDoCarrinho-item">
					<h2 class="formularioDoCarrinho-item-titulo">${item.produto.nome}</h2>
				</td>
				
				<td class="formularioDoCarrinho-item formularioDoCarrinho-item-preco"><fmt:formatNumber type = "currency" value="${item.valor}"/></td>
				<td class="formularioDoCarrinho-item">
					<input class="formularioDoCarrinho-item-quantidade" type="number" min="0" value="${carrinhoCompras.getQuantidadePor(item)}">
				</td>
				<td class="formularioDoCarrinho-item formularioDoCarrinho-item-precoTotal" title="Preço unitário: <fmt:formatNumber type="currency" value="${item.valor}"/>">
					<fmt:formatNumber type="currency" value="${carrinhoCompras.calcularTotalPor(item)}"/>
				</td>
				<td class="formularioDoCarrinho-item">
					<form:form servletRelativeAction="/carrinho" methodParam="POST">
						<input type="hidden" name="_method" value="DELETE">
						<input type="hidden" name="produtoId" value="${item.produto.id}">
						<input type="hidden" name="tipoPreco" value="${item.tipoPreco}">
						<input type="image" class="formularioDoCarrinho-item-remover-imagem"  src="//cdn.shopify.com/s/files/1/0155/7645/t/227/assets/trash.png?13966522090502778985" alt="X" title="Remover"/>
					</form:form>
				</td>
			</tr>
			
		</c:forEach>		
		
		</tbody>
		<tfoot class="formularioDoCarrinho-rodape">
			<tr>
				<td class="formularioDoCarrinho-rodape-item formularioDoCarrinho-finalizar" colspan="3">
					<form:form servletRelativeAction="${s:mvcUrl('PC#finalizarCompra').build()}" methodParam="POST">
						<button class="formularioDoCarrinho-finalizar-botao" type="submit" name="checkout">Finalizar<span class="formularioDoCarrinho-finalizar-botao-texto" role="presentation"> compra</span></button>
					</form:form>
				</td>
				<td class="formularioDoCarrinho-rodape-item">
					<button class="formularioDoCarrinho-atualizar" type="submit" class="update-cart" name="update">Atualizar</button>
				</td>
				<td class="formularioDoCarrinho-rodape-item">
					<fmt:formatNumber type="currency" value="${carrinhoCompras.calcularTotal()}"/>
				</td>
				<td></td>
			</tr>
		</tfoot>
	</table>
	
</section>



		<div class="buscaDoRodape container" role="presentation">
	<form role="search"
		  aria-labelledby="rotuloBuscaDoRodape"
		  action="/search"
		  method="GET"
		  class="buscaDoRodape-formulario"
	>
		<label id="rotuloBuscaRodape" class="buscaDoRodape-rotuloEscondido" for="campoBuscaRodape">Busque por autor, título, conteúdo...</label>
		<label class="buscaDoRodape-rotulo" for="campoBuscaRodape">Não encontrou o seu livro?</label>
		<fieldset class="buscaDoRodape-fieldset">
			<input type="hidden" name="type" value="product">
			<input id="campoBuscaRodape"
				   class="buscaDoRodape-campo"
				   placeholder="O que você procura?"
				   type="search"
				   name="q"
				   required
				   aria-required
			>
			<button class="buscaDoRodape-enviar" type="submit">
				Buscar
			</button>
		</fieldset>
	</form>
</div>
	</main>
	<footer class="rodape">
	<div class="container" role="presentation">
		<div class="rodape-conteudo" role="presentation">
			<section class="rodape-secao">
				<a class="rodape-logo" href="#" title="Voltar ao topo da página">
				<img src="//cdn.shopify.com/s/files/1/0155/7645/t/227/assets/logo-footer.svg?13966522090502778985" alt="altLogoFooter"/>
				</a>
			</section>
			<section class="rodape-secao rodape-secaoLinks">
				<h3 class="rodape-titulo">Links da <div role="presentation" class="rodape-titulo-espacador"></div>Casa do Código</h3>
				<ul>
					
					<li class="rodape-item">
						<a class="rodape-itemLink" href="/pages/sobre-a-casa-do-codigo"  >
							Sobre a Casa do Código
						</a>
					</li>
					
					<li class="rodape-item">
						<a class="rodape-itemLink" href="/pages/quero-ser-um-autor"  >
							Quero ser um autor
						</a>
					</li>
					
					<li class="rodape-item">
						<a class="rodape-itemLink" href="https://feedback.userreport.com/500b990e-9d86-4af5-ad72-3be3151b8dc0/"  target="_blank">
							Quero ler um livro sobre...
						</a>
					</li>
					
					<li class="rodape-item">
						<a class="rodape-itemLink" href="mailto:contato@casadocodigo.com.br"  >
							Contato
						</a>
					</li>
					
					<li class="rodape-item">
						<a class="rodape-itemLink" href="http://suporte.casadocodigo.com.br"  >
							Perguntas frequentes
						</a>
					</li>
					
					<li class="rodape-item">
						<a class="rodape-itemLink" href="http://forum.casadocodigo.com.br"  >
							Fórum de discussões
						</a>
					</li>
					
					<li class="rodape-item">
						<a class="rodape-itemLink" href="http://www.caelum.com.br"  target="_blank">
							Caelum Ensino e Inovação
						</a>
					</li>
					
					<li class="rodape-item">
						<a class="rodape-itemLink" href="http://www.galandra.com.br"  target="_blank">
							Galandra - Reforce seu inglês
						</a>
					</li>
					
					<li class="rodape-item">
						<a class="rodape-itemLink" href="http://livros.casadocodigo.com.br" rel="nofollow" >
							Meus E-books
						</a>
					</li>
					
					<li class="rodape-item">
						<a class="rodape-itemLink" href="http://www.codecrushing.com" rel="nofollow" >
							Code Crushing
						</a>
					</li>
					
					<li class="rodape-item">
						<a class="rodape-itemLink" href="/pages/politica-de-privacidade" rel="nofollow" >
							Política de Privacidade
						</a>
					</li>
					
				</ul>
			</section><!--

		 --><section class="rodape-secao rodape-secaoOutros">
				<h3 class="rodape-titulo">Receba as novidades, promoções e lançamentos</h3>
				<form class="rodape-formularioDaNewsletter" action="https://docs.google.com/forms/d/e/1FAIpQLSfLN8GYzRsSSdXVofZZkx-L7mXZVv0CrtJRhI2qKzf8sqVT2g/formResponse" method="POST">
					<input type="hidden" name="pageNumber" value="0">
					<input type="hidden" name="backupCache" value="">
					<input class="rodape-campoDaNewsletter" type="email" name="entry.1000000" value="" id="entry_0" placeholder="seu@email.com"><!--
				 --><button class="rodape-botaoDaNewsletter" type="submit" name="submit" id="submit-newsletter">ok</button>
				</form>

				<h3 class="rodape-titulo rodape-tituloSecundario">Este site aceita</h3>
				<ul>
					<li class="rodape-formaDePagamento">
						<img src="//cdn.shopify.com/s/files/1/0155/7645/t/227/assets/pagseguro.png?13966522090502778985" border="0" alt="pag seguro"/>
					</li>
					<li class="rodape-formaDePagamento">
						<img src="//cdn.shopify.com/s/files/1/0155/7645/t/227/assets/paypal.png?13966522090502778985" border="0" alt="paypal"/>
					</li>
				</ul>

				<h3 class="rodape-titulo rodape-tituloSecundario">Nas redes sociais</h3>
				<ul>
					<li class="rodape-item rodape-redeSocial">
						<a class="compartilhar-facebook" href="http://www.facebook.com/casadocodigo" rel="nofollow" title="Casa do Código no Facebook" rel="nofollow" target="_blank">/CasaDoCodigo</a>
					</li>
					<li class="rodape-item rodape-redeSocial">
						<a class="compartilhar-twitter" href="http://www.twitter.com/casadocodigo" rel="nofollow" title="Casa do Código no Twitter" rel="nofollow" target="_blank">@casadocodigo</a>
					</li>
				</ul>
			</section>
		</div>
	</div>
</footer>
<footer class="categorias">
	<div class="container" role="presentation">
		<div class="categorias-footer" role="presentation">
			<!--
		 	 --><section class="categorias-secao">
		 	 		<a class="categorias-itemLink" href="/collections/livros-de-agile">
						<h3 class="categorias-titulo">Livros de Agile</h3>
					</a>
					
					<ul>
						
							<li class="categorias-item">
								<a class="categorias-itemLink" href="/products/livro-tdd">
									
									
	TDD com Java

								</a>
							</li>
							
						
							<li class="categorias-item">
								<a class="categorias-itemLink" href="/products/livro-scrum">
									
									
	Scrum

								</a>
							</li>
							
						
							<li class="categorias-item">
								<a class="categorias-itemLink" href="/products/livro-agile">
									
									
	Agile

								</a>
							</li>
							
						
							<li class="categorias-item">
								<a class="categorias-itemLink" href="/products/livro-testes-de-software">
									
									
	Testes de Software

								</a>
							</li>
							
								
					</ul>
				</section>
			<!--
		 	 --><section class="categorias-secao">
		 	 		<a class="categorias-itemLink" href="/collections/livros-de-arquitetura">
						<h3 class="categorias-titulo">Livros de Arquitetura</h3>
					</a>
					
					<ul>
						
							<li class="categorias-item">
								<a class="categorias-itemLink" href="/products/livro-rest">
									
									
	REST

								</a>
							</li>
							
						
							<li class="categorias-item">
								<a class="categorias-itemLink" href="/products/livro-soa-webservices">
									
									
	SOA, web services e al&#233;m

								</a>
							</li>
							
						
							<li class="categorias-item">
								<a class="categorias-itemLink" href="/products/livro-arquitetura-java">
									
									
	Arquitetura Java

								</a>
							</li>
							
						
							<li class="categorias-item">
								<a class="categorias-itemLink" href="/products/livro-apis-nodejs">
									
									
	APIs Node.js

								</a>
							</li>
							
								
					</ul>
				</section>
			<!--
		 	 --><section class="categorias-secao">
		 	 		<a class="categorias-itemLink" href="/collections/livros-de-bancos-de-dados">
						<h3 class="categorias-titulo">Livros de Bancos de Dados</h3>
					</a>
					
					<ul>
						
							<li class="categorias-item">
								<a class="categorias-itemLink" href="/products/livro-mongodb">
									
									
	MongoDB

								</a>
							</li>
							
						
							<li class="categorias-item">
								<a class="categorias-itemLink" href="/products/livro-sql-oracle">
									
									
	SQL e banco de dados Oracle

								</a>
							</li>
							
						
							<li class="categorias-item">
								<a class="categorias-itemLink" href="/products/livro-banco-mysql">
									
									
	Banco MySQL

								</a>
							</li>
							
						
							<li class="categorias-item">
								<a class="categorias-itemLink" href="/products/livro-plsql">
									
									
	Banco de Dados PL/SQL

								</a>
							</li>
							
								
					</ul>
				</section>
			<!--
		 	 --><section class="categorias-secao">
		 	 		<a class="categorias-itemLink" href="/collections/livros-de-conceitos-iniciais">
						<h3 class="categorias-titulo">Livros de Conceitos Iniciais</h3>
					</a>
					
					<ul>
						
							<li class="categorias-item">
								<a class="categorias-itemLink" href="/products/livro-programacao">
									
									
	L&#243;gica de Programa&#231;&#227;o

								</a>
							</li>
							
						
							<li class="categorias-item">
								<a class="categorias-itemLink" href="/products/livro-programador-apaixonado">
									
									
	O Programador Apaixonado

								</a>
							</li>
							
						
							<li class="categorias-item">
								<a class="categorias-itemLink" href="/products/livro-guia-frontend">
									
									
	Guia Front-End

								</a>
							</li>
							
						
							<li class="categorias-item">
								<a class="categorias-itemLink" href="/products/livro-jogos-html-javascript">
									
									
	Jogos com HTML5

								</a>
							</li>
							
								
					</ul>
				</section>
			<!--
		 	 --><section class="categorias-secao">
		 	 		<a class="categorias-itemLink" href="/collections/livros-de-desenvolvimento-web">
						<h3 class="categorias-titulo">Livros de Desenvolvimento Web</h3>
					</a>
					
					<ul>
						
							<li class="categorias-item">
								<a class="categorias-itemLink" href="/products/livro-jsf-jpa">
									
									
	JSF e JPA

								</a>
							</li>
							
						
							<li class="categorias-item">
								<a class="categorias-itemLink" href="/products/livro-nodejs">
									
									
	Node.js

								</a>
							</li>
							
						
							<li class="categorias-item">
								<a class="categorias-itemLink" href="/products/livro-rest">
									
									
	REST

								</a>
							</li>
							
						
							<li class="categorias-item">
								<a class="categorias-itemLink" href="/products/livro-ruby-on-rails">
									
									
	Rails 4

								</a>
							</li>
							
								
					</ul>
				</section>
			<!--
		 	 --><section class="categorias-secao">
		 	 		<a class="categorias-itemLink" href="/collections/livros-de-design">
						<h3 class="categorias-titulo">Livros de Design</h3>
					</a>
					
					<ul>
						
							<li class="categorias-item">
								<a class="categorias-itemLink" href="/products/livro-ux-user-experience">
									
									
	UX Design

								</a>
							</li>
							
						
							<li class="categorias-item">
								<a class="categorias-itemLink" href="/products/livro-photoshop">
									
									
	Adobe Photoshop

								</a>
							</li>
							
						
							<li class="categorias-item">
								<a class="categorias-itemLink" href="/products/livro-adobe-lightroom">
									
									
	Adobe Lightroom

								</a>
							</li>
							
								
					</ul>
				</section>
			<!--
		 	 --><section class="categorias-secao">
		 	 		<a class="categorias-itemLink" href="/collections/livros-de-devops-e-infraestrutura">
						<h3 class="categorias-titulo">Livros de Devops e Infraestrutura</h3>
					</a>
					
					<ul>
						
							<li class="categorias-item">
								<a class="categorias-itemLink" href="/products/livro-git-github">
									
									
	Git e GitHub

								</a>
							</li>
							
						
							<li class="categorias-item">
								<a class="categorias-itemLink" href="/products/livro-devops">
									
									
	DevOps

								</a>
							</li>
							
						
							<li class="categorias-item">
								<a class="categorias-itemLink" href="/products/livro-docker">
									
									
	Ambientes com Docker

								</a>
							</li>
							
						
							<li class="categorias-item">
								<a class="categorias-itemLink" href="/products/livro-ferramentas-devops">
									
									
	Ferramentas DevOps

								</a>
							</li>
							
								
					</ul>
				</section>
			<!--
		 	 --><section class="categorias-secao">
		 	 		<a class="categorias-itemLink" href="/collections/livros-de-empreendedorismo">
						<h3 class="categorias-titulo">Livros de Empreendedorismo</h3>
					</a>
					
					<ul>
						
							<li class="categorias-item">
								<a class="categorias-itemLink" href="/products/livro-startup-guia">
									
									
	Guia da Startup

								</a>
							</li>
							
						
							<li class="categorias-item">
								<a class="categorias-itemLink" href="/products/livro-direto-ao-ponto">
									
									
	Direto ao Ponto

								</a>
							</li>
							
						
							<li class="categorias-item">
								<a class="categorias-itemLink" href="/products/livro-seo">
									
									
	SEO na Pr&#225;tica

								</a>
							</li>
							
						
							<li class="categorias-item">
								<a class="categorias-itemLink" href="/products/livro-gestao-produtos">
									
									
	Gestão de Produtos

								</a>
							</li>
							
								
					</ul>
				</section>
			<!--
		 	 --><section class="categorias-secao">
		 	 		<a class="categorias-itemLink" href="/collections/livros-de-front-end">
						<h3 class="categorias-titulo">Livros de Front End</h3>
					</a>
					
					<ul>
						
							<li class="categorias-item">
								<a class="categorias-itemLink" href="/products/livro-html-css">
									
									
	HTML5 e CSS3

								</a>
							</li>
							
						
							<li class="categorias-item">
								<a class="categorias-itemLink" href="/products/livro-javascript-jquery">
									
									
	jQuery e JavaScript

								</a>
							</li>
							
						
							<li class="categorias-item">
								<a class="categorias-itemLink" href="/products/livro-web-design-responsivo">
									
									
	Web Design Responsivo

								</a>
							</li>
							
						
							<li class="categorias-item">
								<a class="categorias-itemLink" href="/products/livro-guia-frontend">
									
									
	Guia Front-End

								</a>
							</li>
							
								
					</ul>
				</section>
			<!--
		 	 --><section class="categorias-secao">
		 	 		<a class="categorias-itemLink" href="/collections/livros-de-java">
						<h3 class="categorias-titulo">Livros de Java</h3>
					</a>
					
					<ul>
						
							<li class="categorias-item">
								<a class="categorias-itemLink" href="/products/livro-jsf-jpa">
									
									
	JSF e JPA

								</a>
							</li>
							
						
							<li class="categorias-item">
								<a class="categorias-itemLink" href="/products/livro-rest">
									
									
	REST

								</a>
							</li>
							
						
							<li class="categorias-item">
								<a class="categorias-itemLink" href="/products/livro-design-patterns">
									
									
	Design Patterns

								</a>
							</li>
							
						
							<li class="categorias-item">
								<a class="categorias-itemLink" href="/products/livro-spring-framework">
									
									
	Spring Framework

								</a>
							</li>
							
								
					</ul>
				</section>
			<!--
		 	 --><section class="categorias-secao">
		 	 		<a class="categorias-itemLink" href="/collections/livros-de-linguagens">
						<h3 class="categorias-titulo">Livros de Linguagens</h3>
					</a>
					
					<ul>
						
							<li class="categorias-item">
								<a class="categorias-itemLink" href="/products/livro-html-css">
									
									
	HTML5 e CSS3

								</a>
							</li>
							
						
							<li class="categorias-item">
								<a class="categorias-itemLink" href="/products/livro-orientacao-objetos-java">
									
									
	Java e OO

								</a>
							</li>
							
						
							<li class="categorias-item">
								<a class="categorias-itemLink" href="/products/livro-java8">
									
									
	Java 8 Pr&#225;tico

								</a>
							</li>
							
						
							<li class="categorias-item">
								<a class="categorias-itemLink" href="/products/livro-ruby">
									
									
	Ruby

								</a>
							</li>
							
								
					</ul>
				</section>
			<!--
		 	 --><section class="categorias-secao">
		 	 		<a class="categorias-itemLink" href="/collections/livros-de-mobile">
						<h3 class="categorias-titulo">Livros de Mobile</h3>
					</a>
					
					<ul>
						
							<li class="categorias-item">
								<a class="categorias-itemLink" href="/products/livro-android">
									
									
	Google Android

								</a>
							</li>
							
						
							<li class="categorias-item">
								<a class="categorias-itemLink" href="/products/livro-web-design-responsivo">
									
									
	Web Design Responsivo

								</a>
							</li>
							
						
							<li class="categorias-item">
								<a class="categorias-itemLink" href="/products/livro-swift-ios">
									
									
	Swift e iOS

								</a>
							</li>
							
						
							<li class="categorias-item">
								<a class="categorias-itemLink" href="/products/livro-iphone-ipad-ios">
									
									
	iOS, iPhone e iPad

								</a>
							</li>
							
								
					</ul>
				</section>
			<!--
		 	 --><section class="categorias-secao">
		 	 		<a class="categorias-itemLink" href="/collections/livros-de-tendencias">
						<h3 class="categorias-titulo">Livros de Tendências</h3>
					</a>
					
					<ul>
						
							<li class="categorias-item">
								<a class="categorias-itemLink" href="/products/livro-mean">
									
									
	MEAN

								</a>
							</li>
							
						
							<li class="categorias-item">
								<a class="categorias-itemLink" href="/products/livro-mongodb">
									
									
	MongoDB

								</a>
							</li>
							
						
							<li class="categorias-item">
								<a class="categorias-itemLink" href="/products/livro-google-go">
									
									
	Google Go

								</a>
							</li>
							
						
							<li class="categorias-item">
								<a class="categorias-itemLink" href="/products/livro-meteor">
									
									
	Meteor

								</a>
							</li>
							
								
					</ul>
				</section>
			
		</div>
	</div>
</footer>
<footer class="caelum-footer">
	<div class="grupoCaelum">
		<div class="container">
			<p class="grupoCaelum-title"><a href="http://www.caelum.com.br/grupo">Grupo Caelum</a></p>
			<ul class="grupoCaelum-list">
				<li class="grupoCaelum-column">
					<p class="grupoCaelum-column-title">Educação</p>
					<ul class="grupoCaelum-column-list">
						<li class="column-item">
							<a href="http://www.caelum.com.br/grupo">
								<img class="column-item-logo" src="//cdn.shopify.com/s/files/1/0155/7645/t/227/assets/footer-icon-caelum.svg?13966522090502778985">
								<span class="column-item-title">Caelum</span>
							</a>
						</li>
						<li class="column-item">
							<a href="http://www.casadocodigo.com.br">
								<img class="column-item-logo" src="//cdn.shopify.com/s/files/1/0155/7645/t/227/assets/footer-icon-cdc.svg?13966522090502778985"><span class="column-item-title">Casa do Código</span>					
							</a>
						</li>
					</ul>
				</li>
				<li class="grupoCaelum-column">
					<p class="grupoCaelum-column-title">Educação Online</p>
					<ul class="grupoCaelum-column-list">
						<li class="column-item">
							<a href="http://www.alura.com.br">
								<img class="column-item-logo" src="//cdn.shopify.com/s/files/1/0155/7645/t/227/assets/footer-icon-alura.svg?13966522090502778985#alura"><span class="column-item-title">Alura</span>
							</a>
						</li>
						<li class="column-item">
							<a href="http://www.alurastart.com.br">
								<img class="column-item-logo" src="//cdn.shopify.com/s/files/1/0155/7645/t/227/assets/footer-icon-alurastart.svg?13966522090502778985"><span class="column-item-title">Alura Start</span>
							</a>
						</li>
						<li class="column-item">
							<a href="http://www.musicdot.com.br">
								<img class="column-item-logo" src="//cdn.shopify.com/s/files/1/0155/7645/t/227/assets/footer-icon-musicdot.svg?13966522090502778985"><span class="column-item-title">MusicDot</span>
							</a>
						</li>
						<li class="column-item">
							<a href="http://www.galandra.com.br">
								<img class="column-item-logo" src="//cdn.shopify.com/s/files/1/0155/7645/t/227/assets/footer-icon-galandra.svg?13966522090502778985"><span class="column-item-title">Galandra</span>
							</a>
						</li>
					</ul>
				</li>
				<li class="grupoCaelum-column">
					<p class="grupoCaelum-column-title">Comunidade</p>
					<ul class="grupoCaelum-column-list">
						<li class="column-item">
							<a href="http://hipsters.tech">
								<img class="column-item-logo" src="//cdn.shopify.com/s/files/1/0155/7645/t/227/assets/footer-icon-hipsters-pontotech.svg?13966522090502778985"><span class="column-item-title">Hipsters ponto Tech</span>
							</a>
						</li>
						<li class="column-item">
							<a href="http://hipsters.jobs">
								<img class="column-item-logo" src="//cdn.shopify.com/s/files/1/0155/7645/t/227/assets/footer-icon-hipsters-jobs.svg?13966522090502778985"><span class="column-item-title">Hipsters ponto Jobs</span>
							</a>
						</li>				
						<li class="column-item">
							<a href="http://www.guj.com.br">
								<img class="column-item-logo" src="//cdn.shopify.com/s/files/1/0155/7645/t/227/assets/footer-icon-guj.svg?13966522090502778985"><span class="column-item-title">GUJ</span>
							</a>
						</li>
					</ul>
				</li>
				<li class="grupoCaelum-column">
					<p class="grupoCaelum-column-title">Parceiros</p>
					<ul class="grupoCaelum-column-list">
						<li class="column-item">
							<a href="http://www.imasters.com.br">
								<img class="column-item-logo" src="//cdn.shopify.com/s/files/1/0155/7645/t/227/assets/footer-icon-imasters.svg?13966522090502778985"><span class="column-item-title">iMasters</span>
							</a>
						</li>
					</ul>
				</li>
			</ul>
		</div>
	</div>

</footer>
</body>
</html>
