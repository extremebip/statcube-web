<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">

    <title>Payment</title>

    <!-- Stylesheets -->
    <link rel="stylesheet" href="./public/css/lib/bootstrap.min.css">
    <link rel="stylesheet" href="./public/css/style.css">
    <link rel="stylesheet" href="./public/css/navbar.css">

    <!-- Scripts -->
    <script src="./public/js/lib/jquery-3.6.0.min.js"></script>
    <script src="./public/js/lib/bootstrap.bundle.min.js"></script>

</head>
<body>
    <%@ include file="navbar.jsp" %>
    <!-- <div class="content container-md">

    </div> -->
    <div class="row">
        <div class="col-12 p-5">
            <h1 class="font-weight-bolder text-center">Payment</h1><br>
            <div style="margin: 0 500px 50px 500px; background-color: rgb(216, 197, 197);padding: 10px;">
                <h4 class="text-center">Payment Confirmation</h4> <br>
                
                <h4 class="text-center">IDR 500.000</h4>
                <p class="text-center">1 month</p>
            </div>
            <p class="text-center font-weight-bolder" style="color: red;"> <%= session.getAttribute("errorPayment") == null ? "" : session.getAttribute("errorPayment") %></P>
                <% session.setAttribute("errorPayment",null); %>
            <center>
            <form action="controller/paymentController.jsp">
                    <select id="payment" name="payment" class=" btn btn-pill btn-subscribe" style="background-color: rgb(199, 197, 197);">
                        <option value="choose">Choose payment method</option>
                        <option value="BCA">BCA</option>
                        <option value="BNI">BNI</option>
                        <option value="MANDIRI">MANDIRI</option>
                        <option value="CIMB NIAGA">CIMB NIAGA</option>
                        <option value="DBS">DBS</option>
                    </select><br>
                <center><button type="submit" class=" btn btn-danger btn-pill btn-subscribe" style="width: 200px;margin-top : 50px">Confirm</button></center>
            </form>
            </center>

        </div>
    </div>


    <%@ include file="footer.jsp" %>
</body>
</html>