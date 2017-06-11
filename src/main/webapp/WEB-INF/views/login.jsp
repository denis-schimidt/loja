<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form" %>
<%@ taglib prefix="s" uri="http://www.springframework.org/tags"%>

<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Login</title>
<c:url value="/css/" var="cssPath"/>
<link rel="stylesheet" href="${cssPath}/bootstrap.min.css">
<link rel="stylesheet" href="${cssPath}/bootstrap-theme.min.css">

</head>
<body>
	<div class="container">
		<form:form servletRelativeAction="/login" method="POST">
			<div class="form-group">
				<label>Usuário</label>
				<input type="text" name="username" maxlength="10" class="form-control"/>
			</div>
			<div class="form-group">
				<label>Descrição</label>
				<input type="password" name="password" maxlength="10" class="form-control"/>
			</div>

			<button value="submit" class="btn btn-primary">Login</button>
		</form:form>
	</div>	
</body>
</html>