<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8"%>
<%@ include file="templates/header.jsp"%>

<!-- SIDE BAR
================================================== -->

<div class="container-fluid">
    <div class="row">
        <nav class="col-md-2 d-none d-md-block bg-light sidebar">
            <div class="sidebar-sticky">
                <ul class="nav flex-column">
                    <li class="nav-item">
                        <a class="nav-link active" href="/adminPanel/">
                            <span data-feather="home"></span>
                            Dashboard <span class="sr-only">(current)</span>
                        </a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link" href="/adminPanel/orders">
                            <span data-feather="file"></span>
                            Orders
                        </a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link" href="/adminPanel/products">
                            <span data-feather="shopping-cart"></span>
                            Products
                        </a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link" href="/adminPanel/users/">
                            <span data-feather="users"></span>
                            Customers
                        </a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link" href="#">
                            <span data-feather="layers"></span>
                            Integrations
                        </a>
                    </li>
                </ul>
            </div>
        </nav>

        <main role="main" class="col-md-9 ml-sm-auto col-lg-10 pt-3 px-4">


            <!-- MAIN BODY
            ================================================== -->


            <h2>Zamówienia</h2>
            <div class="table-responsive">
                <table class="table table-striped table-sm">
                    <thead>
                    <tr>
                        <th>Numer zamówienia</th>
                        <th>Użytkownik</th>
                        <th>Data zamówiania</th>
                        <th>Status zamówienia</th>
                        <th>Wartość zamówienia</th>
                        <th>Szczegóły</th>
                        <th>Usuń</th>
                    </tr>
                    </thead>
                    <tbody>
                    <c:forEach items="${orders}" var="order">
                    <tr>
                        <td>${order.id}</td>
                        <td>${order.user.firstName} ${order.user.lastName}</td>
                        <td>${order.created}</td>
                        <td>${order.status}</td>
                        <td></td>
                        <td><a href="/adminPanel/orders/details/<c:out value="${order.id}"/>">SZCZEGÓŁY</a></td>
                        <td>
                        <td>
                            <a href="/adminPanel/orders/delete/<c:out value="${order.id}"/>">Usuń</a>
                        </td>
                        </td>
                    </tr>
                    </c:forEach>
                    </tbody>
                </table>


                <h2>Użytkownicy</h2>
                <div class="table-responsive">
                    <table class="table table-striped table-sm">
                        <thead>
                        <tr>
                            <th>Numer</th>
                            <th>Login</th>
                            <th>Imię</th>
                            <th>Nazwisko</th>
                            <th>Adres</th>
                            <th>Telefon</th>
                            <th>E-mail</th>
                            <th>Edytuj/Usuń</th>
                        </tr>
                        </thead>
                        <tbody>
                        <c:forEach items="${users}" var="user">
                            <tr>
                                <td>${user.id}</td>
                                <td>${user.username}</td>
                                <td>${user.firstName}</td>
                                <td>${user.lastName}</td>
                                <td>${user.street} ${user.flatNumber}, ${user.postCode} ${user.city}</td>
                                <td>${user.phoneNumber}</td>
                                <td>${user.email}</td>
                                <td>
                                    <a href="/adminPanel/users/edit/<c:out value="${user.id}"/>">Edytuj</a>
                                    /
                                    <a href="/adminPanel/users/delete/<c:out value="${user.id}"/>">Usuń</a>
                                </td>
                            </tr>
                        </c:forEach>
                        </tbody>
                    </table>
                </div>
            </div>
        </main>
    </div>
</div>

<!-- Bootstrap core JavaScript
================================================== -->
<!-- Placed at the end of the document so the pages load faster -->
<script src="https://code.jquery.com/jquery-3.2.1.slim.min.js" integrity="sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN" crossorigin="anonymous"></script>
<script>window.jQuery || document.write('<script src="../../assets/js/vendor/jquery-slim.min.js"><\/script>')</script>
<script src="../../assets/js/vendor/popper.min.js"></script>
<script src="../../dist/js/bootstrap.min.js"></script>

<!-- Icons -->
<script src="https://unpkg.com/feather-icons/dist/feather.min.js"></script>
<script>
    feather.replace()
</script>

<!-- Graphs -->
<script src="https://cdnjs.cloudflare.com/ajax/libs/Chart.js/2.7.1/Chart.min.js"></script>
<script>
    var ctx = document.getElementById("myChart");
    var myChart = new Chart(ctx, {
        type: 'line',
        data: {
            labels: ["Sunday", "Monday", "Tuesday", "Wednesday", "Thursday", "Friday", "Saturday"],
            datasets: [{
                data: [15339, 21345, 18483, 24003, 23489, 24092, 12034],
                lineTension: 0,
                backgroundColor: 'transparent',
                borderColor: '#007bff',
                borderWidth: 4,
                pointBackgroundColor: '#007bff'
            }]
        },
        options: {
            scales: {
                yAxes: [{
                    ticks: {
                        beginAtZero: false
                    }
                }]
            },
            legend: {
                display: false,
            }
        }
    });
</script>
</body>
</html>

    <%@ include file="templates/footer.jsp"%>
