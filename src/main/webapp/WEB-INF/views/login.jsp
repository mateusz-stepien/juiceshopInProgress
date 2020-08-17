<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8"%>
<%@ include file="templates/header.jsp"%>



<link href="signin.css" rel="stylesheet">
<body class="text-center">
<form class="form-signin" method="post">

    <img class="mb-4" src="/docs/4.5/assets/brand/bootstrap-solid.svg" alt="" width="72" height="72">
    <h1 class="h3 mb-3 font-weight-normal">Zaloguj się</h1>
    <div><label> Nazwa użytkownika: <input type="text" name="username"/> </label></div>
    <div><label> Hasło: <input type="password" name="password"/> </label></div>

    <div class = >
        <div><input class="btn btn-primary"  type="submit" value="Zaloguj się"/></div>
        <input type="hidden" name="${_csrf.parameterName}" value="${_csrf.token}"/>
        <br>
        <a class="btn btn-outline-dark btn-sm" href="/register" role="button">Zarejestruj się</a>
    </div>

</form>


</body>



<%@ include file="templates/footer.jsp"%>
