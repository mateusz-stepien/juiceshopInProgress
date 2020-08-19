<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="textarea" uri="http://www.springframework.org/tags/form" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8"%>
<%@ include file="templates/header.jsp"%>

<link href="//netdna.bootstrapcdn.com/bootstrap/3.2.0/css/bootstrap.min.css" rel="stylesheet" id="bootstrap-css">
<script src="//netdna.bootstrapcdn.com/bootstrap/3.2.0/js/bootstrap.min.js"></script>
<script src="//code.jquery.com/jquery-1.11.1.min.js"></script>

<!------ Include the above in your HEAD tag ---------->
<form:form class="form-horizontal" method="post" action="/adminPanel/users/save" modelAttribute="user">
    <fieldset>

        <!-- Form Name -->
        <legend>Dodaj/Edytuj użytkownika</legend>

        <!-- Text input-->
        <div class="form-group">
            <label class="col-md-4 control-label" for="id">NUMER</label>
            <div class="col-md-4">
                <form:input placeholder="${user.id}" path="id" class="form-control input-md" readonly="true"/>
            </div>
        </div>

        <!-- Text input-->
        <div class="form-group">
            <label class="col-md-4 control-label" for="username">LOGIN</label>
            <div class="col-md-4">
                <form:input placeholder="${user.username}" path="username" class="form-control input-md"/>
            </div>
        </div>

        <!-- Text input-->
        <div class="form-group">
            <label class="col-md-4 control-label" for="firstName">IMIE</label>
            <div class="col-md-4">
                <form:input placeholder="${user.firstName}" path="firstName" class="form-control input-md"/>
            </div>
        </div>

        <!-- Text input-->
        <div class="form-group">
            <label class="col-md-4 control-label" for="lastName">NAZWISKO</label>
            <div class="col-md-4">
                <form:input placeholder="${user.lastName}" path="lastName" class="form-control input-md"/>
            </div>
        </div>

        <!-- Select Basic -->
        <div class="form-group">
            <label class="col-md-4 control-label" for="email">EMAIL</label>
            <div class="col-md-4">
                <form:input placeholder="${user.email}" path="email" class="form-control input-md"/>
                </select>
            </div>
        </div>
        <!-- Text input-->
        <div class="form-group">
            <label class="col-md-4 control-label" for="city">MIASTO</label>
            <div class="col-md-4">
                <form:input placeholder="${user.city}" path="city" class="form-control input-md"/>
            </div>
        </div>

        <!-- Textarea -->
        <div class="form-group">
            <label class="col-md-4 control-label" for="street">ULICA</label>
            <div class="col-md-4">
                <form:input placeholder="${user.street}" path="street" class="form-control input-md"/>
            </div>
        </div>
        <!-- Text input-->
        <div class="form-group">
            <label class="col-md-4 control-label" for="flatNumber">Numer domu</label>
            <div class="col-md-4">
                <form:input placeholder="${user.flatNumber}" path="flatNumber" class="form-control input-md"/>
            </div>
        </div>
        <!-- Text input-->
        <div class="form-group">
            <label class="col-md-4 control-label" for="postCode">Kod pocztowy</label>
            <div class="col-md-4">
                <form:input placeholder="${user.postCode}" path="postCode" class="form-control input-md"/>
            </div>
        </div>
        <div class="form-group">
            <label class="col-md-4 control-label" for="postCode">Hasło</label>
            <div class="col-md-4">
                <form:input placeholder="${user.password}" path="password" class="form-control input-md"/>
            </div>
        </div>
        <div class="form-group">
            <label class="col-md-4 control-label" for="phoneNumber">Numer telefonu</label>
            <div class="col-md-4">
                <form:input placeholder="${user.phoneNumber}" path="phoneNumber" class="form-control input-md"/>
            </div>
        </div>
                <!-- Button -->
                <div class="form-group">
                    <label class="col-md-4 control-label" for="submit"></label>
                    <div class="col-md-4">
                        <input type="submit" value="Zapisz"  class="btn btn-primary">
                        <a class="btn btn-secondary" href="/adminPanel/users" role="button">Cofnij</a>
                        </div>
                </div>

    </fieldset>
</form:form>
    <%@ include file="templates/footer.jsp"%>
