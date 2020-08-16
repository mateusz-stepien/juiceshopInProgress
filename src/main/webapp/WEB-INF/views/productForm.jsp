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
<form:form class="form-horizontal" method="post" action="/adminPanel/products/save" modelAttribute="product">
    <fieldset>

        <!-- Form Name -->
        <legend>Dodaj nowy produkt</legend>

        <!-- Text input-->
        <div class="form-group">
            <label class="col-md-4 control-label" for="product_id">NUMER</label>
            <div class="col-md-4">
                <form:input placeholder="${product.id}" path="product_id" class="form-control input-md"/>
            </div>
        </div>

        <!-- Text input-->
        <div class="form-group">
            <label class="col-md-4 control-label" for="product_name">NAZWA</label>
            <div class="col-md-4">
                <form:input placeholder="${product.name}" path="product_name" class="form-control input-md"/>
            </div>
        </div>

        <!-- Text input-->
        <div class="form-group">
            <label class="col-md-4 control-label" for="product_name_fr">PRODUCT DESCRIPTION FR</label>
            <div class="col-md-4">
                <input id="product_name_fr" name="product_name_fr" placeholder="PRODUCT DESCRIPTION FR" class="form-control input-md" required="" type="text">

            </div>
        </div>

        <!-- Select Basic -->
        <div class="form-group">
            <label class="col-md-4 control-label" for="product_categorie">PRODUCT CATEGORY</label>
            <div class="col-md-4">
                <select id="product_categorie" name="product_categorie" class="form-control">
                </select>
            </div>
        </div>

        <!-- Text input-->
        <div class="form-group">
            <label class="col-md-4 control-label" for="available_quantity">AVAILABLE QUANTITY</label>
            <div class="col-md-4">
                <input id="available_quantity" name="available_quantity" placeholder="AVAILABLE QUANTITY" class="form-control input-md" required="" type="text">

            </div>
        </div>

        <!-- Text input-->
        <div class="form-group">
            <label class="col-md-4 control-label" for="product_weight">PRODUCT WEIGHT</label>
            <div class="col-md-4">
                <input id="product_weight" name="product_weight" placeholder="PRODUCT WEIGHT" class="form-control input-md" required="" type="text">

            </div>
        </div>

        <!-- Textarea -->
        <div class="form-group">
            <label class="col-md-4 control-label" for="product_description">OPIS PRODUKTU</label>
            <div class="col-md-4">
                <form:textarea placeholder="${product.description}" path="description" class="form-control"/>
            </div>
        </div>

        <!-- Textarea -->
        <div class="form-group">
            <label class="col-md-4 control-label" for="product_name_fr">PRODUCT DESCRIPTION FR</label>
            <div class="col-md-4">
                <textarea class="form-control" id="product_name_fr" name="product_name_fr"></textarea>
            </div>
        </div>

        <!-- Text input-->
        <div class="form-group">
            <label class="col-md-4 control-label" for="percentage_discount">PERCENTAGE DISCOUNT</label>
            <div class="col-md-4">
                <input id="percentage_discount" name="percentage_discount" placeholder="PERCENTAGE DISCOUNT" class="form-control input-md" required="" type="text">

            </div>
        </div>

        <!-- Text input-->
        <div class="form-group">
            <label class="col-md-4 control-label" for="stock_alert">STOCK ALERT</label>
            <div class="col-md-4">
                <input id="stock_alert" name="stock_alert" placeholder="STOCK ALERT" class="form-control input-md" required="" type="text">

            </div>
        </div>

        <!-- Search input-->
        <div class="form-group">
            <label class="col-md-4 control-label" for="stock_critical">STOCK CRITICAL</label>
            <div class="col-md-4">
                <input id="stock_critical" name="stock_critical" placeholder="STOCK CRITICAL" class="form-control input-md" required="" type="search">

            </div>
        </div>

        <!-- Search input-->
        <div class="form-group">
            <label class="col-md-4 control-label" for="tutorial">TUTORIAL</label>
            <div class="col-md-4">
                <input id="tutorial" name="tutorial" placeholder="TUTORIAL" class="form-control input-md" required="" type="search">

            </div>
        </div>

        <!-- Search input-->
        <div class="form-group">
            <label class="col-md-4 control-label" for="tutorial_fr">TUTORIAL FR</label>
            <div class="col-md-4">
                <input id="tutorial_fr" name="tutorial_fr" placeholder="TUTORIAL FR" class="form-control input-md" required="" type="search">

            </div>
        </div>

        <!-- Text input-->
        <div class="form-group">
            <label class="col-md-4 control-label" for="online_date">ONLINE DATE</label>
            <div class="col-md-4">
                <input id="online_date" name="online_date" placeholder="ONLINE DATE" class="form-control input-md" required="" type="text">

            </div>
        </div>

        <!-- Text input-->
        <div class="form-group">
            <label class="col-md-4 control-label" for="author">AUTHOR</label>
            <div class="col-md-4">
                <input id="author" name="author" placeholder="AUTHOR" class="form-control input-md" required="" type="text">

            </div>
        </div>

        <!-- Text input-->
        <div class="form-group">
            <label class="col-md-4 control-label" for="enable_display">ENABLE DISPLAY</label>
            <div class="col-md-4">
                <input id="enable_display" name="enable_display" placeholder="ENABLE DISPLAY" class="form-control input-md" required="" type="text">

            </div>
        </div>

        <!-- Text input-->
        <div class="form-group">
            <label class="col-md-4 control-label" for="comment">COMMENT</label>
            <div class="col-md-4">
                <input id="comment" name="comment" placeholder="COMMENT" class="form-control input-md" required="" type="text">

            </div>
        </div>

        <!-- Text input-->
        <div class="form-group">
            <label class="col-md-4 control-label" for="approuved_by">APPROUVED BY</label>
            <div class="col-md-4">
                <input id="approuved_by" name="approuved_by" placeholder="APPROUVED BY" class="form-control input-md" required="" type="text">

                <!-- File Button -->
                <div class="form-group">
                    <label class="col-md-4 control-label" for="filebutton">main_image</label>
                    <div class="col-md-4">
                        <input id="filebutton" name="filebutton" class="input-file" type="file">
                    </div>
                </div>
                <!-- File Button -->
                <div class="form-group">
                    <label class="col-md-4 control-label" for="filebutton">auxiliary_images</label>
                    <div class="col-md-4">
                        <input id="filebutton" name="filebutton" class="input-file" type="file">
                    </div>
                </div>

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
