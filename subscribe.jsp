<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">

    <title>Subscribe</title>

    <!-- Stylesheets -->
    <link rel="stylesheet" href="./public/css/lib/bootstrap.min.css">
    <link rel="stylesheet" href="./public/css/style.css">
    <link rel="stylesheet" href="./public/css/navbar.css">
    <link rel="stylesheet" href="./public/css/pages/subscribe.css">

    <!-- Scripts -->
    <script src="./public/js/lib/jquery-3.6.0.min.js"></script>
    <script src="./public/js/lib/bootstrap.bundle.min.js"></script>

</head>
<body>
    <%@ include file="navbar.jsp" %>

    <section>
        <h1 class="font-weight-bolder center">Subscribe</h1>
        <div class="box">
            <h3 class="font-weight-bolder">Benefits</h3>
            <table>
                <tr>
                    <td><img src="./public/assets/benefits.png"></td>
                    <td><p>Connect with other users via forum discussion</p></td>
                </tr>
                <tr>
                    <td><img src="./public/assets/benefits.png"></td>
                    <td><p>Free access to all courses</p></td>
                </tr>
            </table>
            <h4 class="font-weight-bolder">IDR 500.000</h4>
            <h5>1 month</h5>
        </div>
        <center><a class="button" href="payment.jsp">Continue to Payment</a>  </center>
    </section>
    
    <%@ include file="footer.jsp" %>
</body>
</html>