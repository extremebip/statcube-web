<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Login</title>

    <!-- Stylesheets -->
    <link rel="stylesheet" href="./public/css/lib/bootstrap.min.css">
    <link rel="stylesheet" href="./public/css/style.css">
    <link rel="stylesheet" href="./public/css/common/form.css">
    <link rel="stylesheet" href="./public/css/pages/login.css">

    <!-- Scripts -->
    <script src="./public/js/lib/jquery-3.6.0.min.js"></script>
    <script src="./public/js/lib/bootstrap.bundle.min.js"></script>
    
</head>
<body>
    <%@ include file="navbar.jsp" %>
    <div class="content container-md p-5">
        <div class="row">
            <div class="col-12 text-center">
                <h1>Login</h1>
            </div>
        </div>
        <div class="row">
            <div class="col-12">
                <form action="#" class="mt-3 medium-form">
                    <div class="form-group">
                        <input type="text" class="form-control accent-input" placeholder="E-mail">
                    </div>
                    <div class="form-group">
                        <input type="password" class="form-control accent-input" placeholder="Password">
                    </div>
                    <div class="form-group text-center">
                        <p class="to-register">
                            Don't have an account? <a href="register.jsp" class="btn-link">Register</a>
                        </p>
                    </div>
                    <div class="form-group text-center">
                        <button type="submit" class="btn btn-danger btn-pill">Login</button>
                    </div>
                </form>
            </div>
        </div>
    </div>
    <%@ include file="footer.jsp" %>
</body>
</html>