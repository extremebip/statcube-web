<%@include file="database/connect.jsp" %>
<%@page import="java.sql.*" %>

<%
    Connect connect = Connect.getConnection();

    String query = String.format("SELECT * FROM MsCourse JOIN MsAdmin ON MsCourse.AdminID=MsAdmin.AdminID WHERE CourseID LIKE %s", request.getParameter("id"));
    ResultSet courseResult = connect.executeQuery(query);
    courseResult.next();
%>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Course</title>

    <!-- Stylesheets -->
    <link rel="stylesheet" href="./public/css/lib/bootstrap.min.css">
    <link rel="stylesheet" href="./public/css/style.css">
    <link rel="stylesheet" href="./public/css/navbar.css">
    <link rel="stylesheet" href="./public/css/pages/courseDetail.css">

    <!-- Scripts -->
    <script src="./public/js/lib/jquery-3.6.0.min.js"></script>
    <script src="./public/js/lib/bootstrap.bundle.min.js"></script>
</head>
<body>
    <%@ include file="navbar.jsp" %>
    <section>
        <div class="box">
            <p class="course-title"><%= courseResult.getString("CourseTitle") %></p>
            <p class="course-author">by <%= courseResult.getString("AdminName") %></p>
            <p class="course-description"><%= courseResult.getString("CourseDescription") %></p>
        </div>
        <div class="topic-wrapper">
            <p class="title2">Topics</p>
            <%
                String selectQuery = String.format("SELECT * FROM MsTopic WHERE CourseID LIKE %s", request.getParameter("id"));
                ResultSet topicRes = connect.executeQuery(selectQuery);
                while(topicRes.next()){
            %>
                    <a class="topic" href="">
                        <img class="topic-thumbnail" src="<%= topicRes.getString("TopicThumbnail") %>" alt="">
                        <div>
                            <p class="topic-title"><%= topicRes.getString("TopicTitle") %></p>
                            <p class="topic-content"><%= topicRes.getString("TopicContent") %></p>
                        </div>
                    </a>
            <%
                }
            %>
        </div>
    </section>
    <%@ include file="footer.jsp" %>
</body>
</html>