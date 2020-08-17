<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="sec" uri="http://www.springframework.org/security/tags" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8"%>
<%@ include file="templates/header.jsp"%>

<link href="//maxcdn.bootstrapcdn.com/bootstrap/3.3.0/css/bootstrap.min.css" rel="stylesheet" id="bootstrap-css">
<script src="//maxcdn.bootstrapcdn.com/bootstrap/3.3.0/js/bootstrap.min.js"></script>
<script src="//code.jquery.com/jquery-1.11.1.min.js"></script>
<!------ Include the above in your HEAD tag ---------->

<!DOCTYPE html>
<html>
<body>
<div class="container">
    <div class="row">
        <div class="col-xs-4 item-photo">
            <!------ grafka ze stronty darogrodu.pl---------->
            <img style="max-width:100%;" src="http://darogrodu.pl/wp-content/uploads/2015/08/baginbox.png" />
        </div>
        <div class="col-xs-5" style="border:0px solid gray">
            <!-- NAZWA SOKU -->
            <h3>${product.name}</h3>

            <!-- CENA -->
            <h6 class="title-price"><small>CENA</small></h6>
            <h3 style="margin-top:0px;">${product.price} zł</h3>

            <!-- SZCZEGÓŁY -->

            <div class="section" style="padding-bottom:5px;">
                <h6 class="title-attr"><small>OPAKOWANIE</small></h6>
                <div>

                    <h3 style="margin-top:0px;">${product.box.name}</h3>
                    <h5>Sok dostepny również w poniższych opakowaniach:</h5>

                    <c:forEach items="${boxes}" var="box">
                        <ul>
                            <li>${box.name}</li>
                        </ul>
                    </c:forEach>

                    <!-- LISTA ROZWIJALNA
                    <select id="box">
                        <c:forEach items="${boxes}" var="box">
                            <option value=1>${box.name}</option>
                        </c:forEach>
                    </select>
                    -->

                </div>
            </div>

            <!-- Botones de compra -->
            <div class="section" style="padding-bottom:20px;">

                <sec:authorize access="isAnonymous()">
                    <form action="<c:url value="/login"/>" method="post">
                        <input class="btn btn-lg btn-block btn-success" type="submit" value="Zaloguj się by zamówić">
                        <input type="hidden" name="${_csrf.parameterName}" value="${_csrf.token}"/>
                    </form>
                </sec:authorize>
                <sec:authorize access="isAuthenticated()">
                    <a class="btn btn-lg btn-block btn-success" href="/newOrder/addProduct/<c:out value="${product.id}"/>" role="button">DODAJ DO ZAMÓWIANIA</a>
                </sec:authorize>

            </div>
        </div>

        <div class="col-xs-9">
                <!---------------------------------- OPIS PRODUKTU ------------------------------------------------------------- -->
            <div style="width:100%;border-top:1px solid silver">
                <p style="padding:15px;">

                        ${product.description}
                </p>
            </div>
            <div style="width:100%;border-top:1px solid silver">
            </div>
        </div>
    </div>
</div>
</body>
</html>



    <%@ include file="templates/footer.jsp"%>
