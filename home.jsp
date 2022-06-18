<%@include file="database/connect.jsp" %>
<%@page import="java.sql.*" %>

<%
    Connect connect = Connect.getConnection();

    String query = "SELECT COUNT(*) FROM MsCourse";
    ResultSet exampleRs = connect.executeQuery(query);
    if (exampleRs.next()) {
        out.println(exampleRs.getInt(1));
    }

    int start = 1;
%>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Home</title>

    <!-- Stylesheets -->
    <link rel="stylesheet" href="./public/css/lib/bootstrap.min.css">
    <link rel="stylesheet" href="./public/css/style.css">
    <link rel="stylesheet" href="./public/css/navbar.css">
    <link rel="stylesheet" href="./public/css/pages/home.css">

    <!-- Scripts -->
    <script src="./public/js/lib/jquery-3.6.0.min.js"></script>
    <script src="./public/js/lib/bootstrap.bundle.min.js"></script>
</head>
<body>
    <%@ include file="navbar.jsp" %>
    <section class="section1">
        <div>
            <p class="slogan">Making Your Learning More Enjoyable</p>
            <button class="btn btn-danger btn-pill btn-subscribe">Subscribe Now!</button>
        </div>
        <img src="public/assets/cube.png" alt="">
    </section>
    <section class="section2">
        <p><span class="red">Thousands </span>of Courses.</p>
        <p><span class="red">One </span>memberships.</p>

        <div class="card-slider">
            <%
                for(int i=start; i<start+3; i++){
            %>
                <div class="card">
                    <img src="./public/assets/temp_image.jpg" alt="">
                    <p>Course title - Lorem ipsum dolor sit amet consectetur adipisicing</p>
                    <p class="author">Author</p>
                </div>
            <%
                }
            %>
        </div> 
    </section>
    <%@ include file="footer.jsp" %>
</body>
</html>