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
            <img style="max-width:100%;" src="http://darogrodu.pl/wp-content/uploads/sok_jablko.png" />
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
                    <div class="attr2">${product.box.name}</div>
                </div>
            </div>
            <div class="section" style="padding-bottom:20px;">
                <h6 class="title-attr"><small>Ilość</small></h6>
                <div>
                    <div class="btn-minus"><span class="glyphicon glyphicon-minus"></span></div>
                    <input value="1" />
                    <div class="btn-plus"><span class="glyphicon glyphicon-plus"></span></div>
                </div>
            </div>

            <!-- Botones de compra -->
            <div class="section" style="padding-bottom:20px;">
                <button class="btn btn-success"><span style="margin-right:20px" class="glyphicon glyphicon-shopping-cart" aria-hidden="true"></span> KUP</button>
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
