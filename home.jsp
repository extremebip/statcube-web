<%@include file="database/connect.jsp" %>
<%@page import="java.sql.*" %>

<%
    Connect connect = Connect.getConnection();

    String selectQuery = "SELECT DISTINCT MsCourse.CourseTitle, MsAdmin.AdminName, MsTopic.TopicThumbnail FROM MsCourse JOIN MsAdmin ON MsCourse.AdminID=MsAdmin.AdminID JOIN MsTopic ON MsTopic.CourseID=MsCourse.CourseID WHERE TopicID IN (SELECT MIN(TopicID) FROM MsTopic GROUP BY CourseID)";
    ResultSet result = connect.executeQuery(selectQuery);
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
    <link rel="stylesheet" href="./public/css/lib/swiper-bundle.min.css"/>
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

        <div class="swiper card-slider">
            <div class="swiper-wrapper">
                <%
                    while(result.next()){
                %>
                        <div class="swiper-slide card">
                            <img src="<%= result.getString("TopicThumbnail") %>" alt="">
                            <p><%= result.getString("CourseTitle") %></p>
                            <p class="author"><%= result.getString("AdminName") %></p>
                        </div>
                <%
                    }
                %>
            </div>
            <div class="swiper-button-next"></div>
            <div class="swiper-button-prev"></div>
            <%-- <div class="swiper-pagination"></div> --%>
        </div> 
    </section>
    <%@ include file="footer.jsp" %>

    <script src="./public/js/lib/swiper-bundle.min.js"></script>
    <!-- Initialize Swiper -->
    <script>
        var swiper = new Swiper(".card-slider", {
          slidesPerView: 3,
          spaceBetween: 30,
          slidesPerGroup: 1,
          loop: true,
          loopFillGroupWithBlank: true,
          pagination: {
            el: ".swiper-pagination",
            clickable: true,
          },
          navigation: {
            nextEl: ".swiper-button-next",
            prevEl: ".swiper-button-prev",
          },
        });
    </script>
</body>
</html>