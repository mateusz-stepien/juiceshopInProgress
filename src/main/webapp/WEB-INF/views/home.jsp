<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8"%>
<%@ include file="templates/header.jsp"%>

<div class="pricing-header px-3 py-3 pt-md-5 pb-md-4 mx-auto text-center">
    <h1 class="display-4">Wybierz smak soku</h1>
    <p class="lead">Wybierz sok oraz rodzaj opakowania w jakim chcesz go otrzymać!</div>

<div class="container">
    <div class="card-deck mb-3 text-center">

<!--  ---------------------------------MAIN BODY ---------------------------------->

        <c:forEach items="${products}" var="product" begin="0" end="2">

            <div class="card mb-4 shadow-sm">
                <div class="card-header">
                    <h4 class="my-0 font-weight-normal">${product.name}</h4>
                </div>
                <div class="card-body">
                    <h1 class="card-title pricing-card-title">${product.price}zł <small class="text-muted">/ ${product.box.name}</small></h1>
                    <ul class="list-unstyled mt-3 mb-4">
                        <li>${product.description}</li>
                        <li></li>
                        <li></li>
                        <sec:authorize access="isAuthenticated()">
                            <li><a href="/newOrder/addProduct/<c:out value="${product.id}"/>">DODAJ DO KOSZYKA</a></li>
                        </sec:authorize>

                        <li></li>
                    </ul>
                    <a class="btn btn-lg btn-block btn-success" href="/productDetails/<c:out value="${product.id}"/>" role="button">SZCZEGÓŁY</a>
                </div>
            </div>

        </c:forEach>

        <!-- -------------------------MAIN BODY ------------------------------------->
    </div>


    <%@ include file="templates/footer.jsp"%>
