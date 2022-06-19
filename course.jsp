<%@include file="database/connect.jsp" %>

<%
    String selectQuery = "SELECT * FROM MsCourse";
    ResultSet courseRes = st.executeQuery(selectQuery);
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
    <link rel="stylesheet" href="./public/css/pages/course.css">

    <!-- Scripts -->
    <script src="./public/js/lib/jquery-3.6.0.min.js"></script>
    <script src="./public/js/lib/bootstrap.bundle.min.js"></script>
</head>
<body>
    <%@ include file="navbar.jsp" %>
    <section>
        <p class="title">Courses</p>
        <div class="wrapper">
            <%
                while(courseRes.next()){
            %>
                    <a class="box" href="courseDetail.jsp?id=<%= courseRes.getString("CourseID") %>">
                        <div>
                            <p class="course-title"><%= courseRes.getString("CourseTitle") %></p>
                            <p class="course-description"><%= courseRes.getString("CourseDescription") %></p>
                        </div>
                        <img class="img-next" src="./public/assets/Vector.png" alt="">
                    </a>
            <%
                }
            %>
        </div> 
    </section>
    <%@ include file="footer.jsp" %>
</body>
</html>
<%
    con.close();
%>