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
    <link rel="stylesheet" href="./public/css/pages/about_us_style.css">

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
            <h1 class="font-weight-bolder text-center">Subscribe</h1><br>
            <div style="margin-left: 200px;">
                <h4 class="font-weight-bolder m-2 px-5">Benefits</h4>
                <img src="./public/images/bl.png" alt="" height="20"><h5 class="m-2 px-5">Free access to all courses</h5>
                <img src="./public/images/bl.png" alt="" height="20"><h5 class="m-2 px-5">Connect with other users via forum discussion</h5>
                <br>
                <h4 class="font-weight-bolder m-2 px-5">IDR 500.000</h4>
                <h5 class="m-2 px-5">1 month</h5><br><br>
            </div>
            
            <center><a href="payment.jsp"><button class=" btn btn-danger btn-pill btn-subscribe">Continue to Payment</button></a></center>
        </div>
    </div>


    <%@ include file="footer.jsp" %>
</body>
</html>