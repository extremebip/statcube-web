<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">

    <title>Register</title>

    <!-- Stylesheets -->
    <link rel="stylesheet" href="./public/css/lib/bootstrap.min.css">
    <link rel="stylesheet" href="./public/css/style.css">
    <link rel="stylesheet" href="./public/css/common/form.css">
    <link rel="stylesheet" href="./public/css/pages/register.css">

    <!-- Scripts -->
    <script src="./public/js/lib/jquery-3.6.0.min.js"></script>
    <script src="./public/js/lib/bootstrap.bundle.min.js"></script>

</head>
<body>
    <%@ include file="navbar.jsp" %>
    <div class="content container-md p-5">
        <div class="row">
            <div class="col-12 text-center">
                <h1>Register</h1>
            </div>
        </div>
        <div class="row">
            <div class="col-12">
                <form action="#" id="frmRegis" class="mt-3 medium-form">
                    <div class="form-group">
                        <input type="text" class="form-control accent-input" placeholder="Username">
                    </div>
                    <div class="form-group">
                        <input type="email" class="form-control accent-input" placeholder="E-mail">
                    </div>
                    <div class="form-group">
                        <label class="switch">
                            <input type="checkbox">
                            <span class="slider round"></span>
                            <span class="labels" data-on="Male" data-off="Female"></span>
                        </label>
                    </div>
                    <div class="form-group">
                        <input type="password" class="form-control accent-input" placeholder="Password">
                    </div>
                    <div class="form-group">
                        <input type="password" class="form-control accent-input" placeholder="Confirm Password">
                    </div>
                    <div class="form-group text-center">
                        <p class="to-login">
                            Already have an account? <a href="login.jsp" class="btn-link">Log In</a>
                        </p>
                    </div>
                    <div class="form-group text-center">
                        <button type="submit" class="btn btn-danger btn-pill">Register</button>
                    </div>
                </form>
            </div>
        </div>
    </div>
    <%@ include file="footer.jsp" %>
</body>
</html>