<%@include file="database/connect.jsp" %>

<%
    String substatus = "";
    boolean isSubscribe = false;
    
    if (session.getAttribute("Role") != null) {
        String role = session.getAttribute("Role").toString();
        if (role.equals("Admin")) {isSubscribe = true;}
        else{substatus = session.getAttribute("Status").toString();
            if(substatus=="true"){isSubscribe = true;}
        }
    }
    String selectQuery = "SELECT DISTINCT MsRecommended.CourseID, MsRecommended.CourseTitle, MsAdmin.AdminName, MsTopic.TopicThumbnail FROM MsRecommended JOIN MsAdmin ON MsRecommended.AdminID=MsAdmin.AdminID JOIN MsTopic ON MsTopic.CourseID=MsRecommended.CourseID WHERE TopicID IN (SELECT MIN(TopicID) FROM MsTopic GROUP BY CourseID)";
    ResultSet selectRecommendedRes = st.executeQuery(selectQuery);
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
            <a href="subscribe.jsp" class="btn btn-danger btn-pill btn-subscribe">
                <%= (isSubscribe ? "Start Learning" : "Subscribe Now!") %>
            </a>
        </div>
        <img src="public/assets/cube.png" alt="">
    </section>
    <section class="section2">
        <p><span class="red">Thousands </span>of Courses.</p>
        <p><span class="red">One </span>memberships.</p>

        <div class="swiper card-slider">
            <div class="swiper-wrapper">
                <%
                    while(selectRecommendedRes.next()){
                %>
                        <a class="swiper-slide card" href="courseDetail.jsp?id=<%= selectRecommendedRes.getString("CourseID") %>">
                            <img src="<%= selectRecommendedRes.getString("TopicThumbnail") %>" alt="">
                            <p><%= selectRecommendedRes.getString("CourseTitle") %></p>
                            <p class="author"><%= selectRecommendedRes.getString("AdminName") %></p>
                        </a>
                <%
                    }
                %>
            </div>
            <img src="./public/assets/right.png" class="swiper-button-next">
            <img src="./public/assets/left.png" class="swiper-button-prev">
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
<%
    con.close();
%>