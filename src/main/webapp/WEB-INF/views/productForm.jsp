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
<form:form class="form-horizontal" method="post" action="/adminPanel/products/save" modelAttribute ="product" >

    <fieldset>

        <!-- Form Name -->
        <legend>Dodaj nowy produkt</legend>

        <!-- Text input-->
        <div class="form-group">
            <label class="col-md-4 control-label" for="id">NUMER</label>
            <div class="col-md-4">
                <form:input placeholder="${product.id}" path="id" class="form-control input-md" readonly="true" />
            </div>
        </div>

        <!-- Text input-->
        <div class="form-group">
            <label class="col-md-4 control-label" for="name">NAZWA</label>
            <div class="col-md-4">
                <form:input placeholder="${product.name}" path="name" class="form-control input-md"/>
            </div>
        </div>

        <!-- Textarea -->
        <div class="form-group">
            <label class="col-md-4 control-label" for="description">OPIS PRODUKTU</label>
            <div class="col-md-4">
                <form:textarea placeholder="${product.description}" path="description" class="form-control" />
            </div>
        </div>

        <!-- Text input-->
        <div class="form-group">
            <label class="col-md-4 control-label" for="price">CENA</label>
            <div class="col-md-4">
                <form:input placeholder="${product.price}" path="price" class="form-control input-md"/>
            </div>
        </div>

        <div class="form-group">
            <label class="col-md-4 control-label" for="box.id">OPAKOWANIE</label>
            <div class="col-md-4">
                <select name="box.id" class="form-control input-md">
                    <c:forEach items="${boxes}" var="box">
                        <option value="${box.id}">${box.name}</option>
                    </c:forEach>
                </select>
            </div>
        </div>



        <!--

                <div class="form-group">
                    <label class="col-md-4 control-label" for="filebutton">main_image</label>
                    <div class="col-md-4">
                        <input id="filebutton" name="filebutton" class="input-file" type="file">
                    </div>
                </div>

                <div class="form-group">
                    <label class="col-md-4 control-label" for="filebutton">auxiliary_images</label>
                    <div class="col-md-4">
                        <input id="filebutton" name="filebutton" class="input-file" type="file">
                    </div>
                </div>
        -->
                <!-- Button -->
                <div class="form-group">
                    <label class="col-md-4 control-label" for="singlebutton">Single Button</label>
                    <div class="col-md-4">
                        <input type="submit" value="Save" class="btn btn-primary">
                        <button id="singlebutton" name="singlebutton" class="btn btn-primary">Button</button>
                    </div>
                </div>

    </fieldset>
</form:form>
    <%@ include file="templates/footer.jsp"%>
