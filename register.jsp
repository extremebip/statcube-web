<%
    String errname= null;
    if (session.getAttribute("txtNameMessage") != null) {
        errname = session.getAttribute("txtNameMessage").toString();
        session.removeAttribute("txtNameMessage");
    }
    String erremail= null;
    if (session.getAttribute("txtEmailMessage") != null) {
        erremail = session.getAttribute("txtEmailMessage").toString();
        session.removeAttribute("txtEmailMessage");
    }
    String errpassword = null;
    if (session.getAttribute("txtPasswordMessage") != null) {
        errpassword = session.getAttribute("txtPasswordMessage").toString();
        session.removeAttribute("txtPasswordMessage");
    }

    String errpassword2 = null;
    if (session.getAttribute("txtConfirmPasswordMessage") != null) {
        errpassword2 = session.getAttribute("txtConfirmPasswordMessage").toString();
        session.removeAttribute("txtConfirmPasswordMessage");
    }
%>
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
                <form action="./controller/registerController.jsp" id="frmRegis" class="mt-3 medium-form">
                    <div class="form-group">
                        <input type="text" class="form-control accent-input" placeholder="Username" id="txtName" name="txtName" >
                            <%-- <a> --%>
                            <%= (errname != null) ? errname : "" %>
                            <%-- </a> --%>
                    </div>
                    <div class="form-group">
                        <input type="email" class="form-control accent-input" placeholder="E-mail" id="txtEmail" name="txtEmail">
                            <%-- <div class="invalid-feedback" id="txtEmailMessage"> --%>
                             <a><%= (erremail != null) ? erremail : "" %></a>
                            <%-- </div> --%>
                    </div>
                    <div class="form-group">
                        <input type="password" class="form-control accent-input" placeholder="Password" id="txtPassword" name="txtPassword">
                         <%-- <div class="invalid-feedback" id="txtPasswordMessage"> --%>
                             <a><%= (errpassword != null) ? errpassword : "" %></a>
                             <%-- </div> --%>
                    </div>
                    <div class="form-group">
                        <input type="password" class="form-control accent-input" placeholder="Confirm Password" 
                        id="txtConfirmPassword" name="txtConfirmPassword">
                            <%-- <div class="invalid-feedback" id="txtConfirmPasswordMessage"> --%>
                            <a><%= (errpassword2 != null) ? errpassword2 : "" %></a>
                            <%-- </div> --%>
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