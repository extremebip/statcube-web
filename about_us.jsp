<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">

    <title>About Us</title>

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
        <div class="col-12 text-center p-5">
            <h1 class="font-weight-bolder">About Us</h1>
            <h5 class="m-5 px-5">StatCube adalah penyedia kursus online khusus untuk yang berminat dengan statistika. Kursus dari StatCube sangat cocok untuk semua tingkat karena kursus-kursus telah dikategorikan sesuai dengan level kesulitannya masing-masing.</h5>
        </div>
    </div>

    <div class="row">
        <div class="col-md-12">
            <img class="w-100" src="./public/assets/long-image.png" alt="">
        </div>
    </div>

    <div class="row">
        <div class="col-6 pl-5 p-4 d-flex flex-column">
            <h1 id="quotation" class="mt-5">"</h1>
            <div class="text-center d-flex flex-wrap align-content-center justify-content-center">
                <h4>You can have data without information, but you cannot have information without data</h4> <br>
                <p>- Daniel Keys Moran -</p>
            </div>
            <h1 id="quotation" class="d-flex justify-content-end">"</h1>
        </div>
        <div class="col-md-6">
            <img class="w-100 p-4" src="./public/assets/image.png" alt="">
        </div>
    </div>


    <%@ include file="footer.jsp" %>
</body>
</html>