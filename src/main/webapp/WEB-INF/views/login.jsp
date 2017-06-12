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
<link rel="stylesheet" href="${cssPath}/login.css">

</head>
<body>
	<div class="container">
	    <div class="row">
	        <div class="col-sm-6 col-md-4 col-md-offset-4">
	            <h1 class="text-center login-title">Login na Casa do Código</h1>
	            <div class="account-wall">
	                <img class="profile-img" src="https://lh5.googleusercontent.com/-b0-k99FZlyE/AAAAAAAAAAI/AAAAAAAAAAA/eu7opA4byxI/photo.jpg?sz=120"
	                    alt="">
	                <form:form servletRelativeAction="/login" method="POST" cssClass="form-signin">  
		                <input type="text" name="username" class="form-control" placeholder="Email" required autofocus>
		                <input type="password" name="password" class="form-control" placeholder="Password" required>
		                <button class="btn btn-lg btn-primary btn-block" type="submit">
		                    Logar</button>
	                </form:form>
	            </div>
	        </div>
	    </div>
	</div>
</body>
</html>