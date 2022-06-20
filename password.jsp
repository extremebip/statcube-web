<%
    String errOldPassword = null;
    if (session.getAttribute("txtOldPassword") != null) {
        errOldPassword = session.getAttribute("txtOldPassword").toString();
        session.removeAttribute("txtOldPassword");
    }

    String errNewPassword = null;
    if (session.getAttribute("txtNewPassword") != null) {
        errNewPassword = session.getAttribute("txtNewPassword").toString();
        session.removeAttribute("txtNewPassword");
    }

    String errConfirmPassword = null;
    if (session.getAttribute("txtConfirmPassword") != null) {
        errConfirmPassword = session.getAttribute("txtConfirmPassword").toString();
        session.removeAttribute("txtConfirmPassword");
    }
%>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">

    <title>Change Password</title>

    <!-- Stylesheets -->
    <link rel="stylesheet" href="./public/css/lib/bootstrap.min.css">
    <link rel="stylesheet" href="./public/css/style.css">
    <%-- <link rel="stylesheet" href="./public/css/navbar.css"> --%>
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
                <h1>Change Password</h1>
            </div>
                    </div>
            <div class="row">
                <div class="col-12">
                    <form action="./controller/passwordController.jsp" class="mt-3 medium-form">
                        <div class="form-group">
                            <input type="password" class="form-control accent-input" placeholder="Old Password" name="txtOldPassword">
                                <%-- <div class="invalid-feedback" id="txtEmailMessage"> --%>
                                <a><%= (errOldPassword != null) ? errOldPassword : "" %></a>
                                <%-- </div> --%>
                        </div>
                        <div class="form-group">
                            <input type="password" class="form-control accent-input" placeholder="New Password" name="txtNewPassword">
                                <%-- <div class="invalid-feedback" id="txtPasswordMessage"> --%>
                                <a><%= (errNewPassword != null) ? errNewPassword : "" %></a>
                                <%-- </div> --%>
                        </div>
                        <div class="form-group">
                            <input type="password" class="form-control accent-input" placeholder="Confirm Password" name="txtNewPassword2">
                                <%-- <div class="invalid-feedback" id="txtPasswordMessage"> --%>
                                <a><%= (errConfirmPassword != null) ? errConfirmPassword : "" %></a>
                                <%-- </div> --%>
                        </div>
                        <div class="form-group text-center">
                            <button type="submit" class="btn btn-danger btn-pill">Save Changes</button>
                        </div>
                    </form>
                </div>
            </div>
        </div>
    </div>
    <%@ include file="footer.jsp" %>
</body>
</html>