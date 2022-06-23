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
    <style>
        section{
            margin: calc(4vw + 20px) calc(2vw + 24px);
        }
        .box{
            width: calc(225px + 32vw);
            margin: calc(2vw + 20px) auto;
        }
        .center{
            text-align: center;
        }
        table{
            margin: calc(1.5vw + 6px) 0 calc(0.6vw + 4px) 0;
        }
        td{
            padding-top: 4px;
            vertical-align: top;
        }
        table img{
            width: calc(1vw + 16px);
            margin-right: 16px;
        }
        table p{
            min-height: calc(1vw + 26px);
            margin: 0;
            font-size: calc(0.4vw + 15px);
        }
        .button, .button:hover{
            text-decoration: none;
            color: white;
            background-color: #CA3542;
            padding: 8px 36px;
            border-radius: 20px;
            font-size: calc(0.3vw + 14px);
        }
    </style>
</body>
</html>