<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">

    <title>Profile</title>

    <!-- Stylesheets -->
    <link rel="stylesheet" href="./public/css/lib/bootstrap.min.css">
    <link rel="stylesheet" href="./public/css/style.css">
    <link rel="stylesheet" href="./public/css/navbar.css">
    <link rel="stylesheet" href="./public/css/pages/profile.css">

    <!-- Scripts -->
    <script src="./public/js/lib/jquery-3.6.0.min.js"></script>
    <script src="./public/js/lib/bootstrap.bundle.min.js"></script>

</head>
<body>
    <%@ include file="navbar.jsp" %>
    <div class="content container-md p-5">
        <h1 class="title">Profile</h1>
        <div class="box">
            <center><img src="./public/assets/subscribe.png" alt=""></center>
            <p>Subscribed</p>
            <div class="inline">
                <p class="bolder">Subscription End Date</p>
                <p>30 May 2022</p>
            </div>
        </div>
        <div class="profile">
            <p class="bolder">Name</p>
            <p>Anthony Gilrandy Theo</p>
            <p class="bolder">Email</p>
            <p>AnthonyGilrandyTheo@gmail.com</p>
            <div class="button">
                <a class="btn-change-pass" href="">Change Password</a>
                <a class="btn-logout" href="">Logout</a>
            </div>
        </div>
    </div>
    <%@ include file="footer.jsp" %>
</body>
</html>

<style>
    .btn-danger-2 {
        background-color: #27647B;
        border: none;
    }
</style>
