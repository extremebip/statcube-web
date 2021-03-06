<%@include file="database/connect.jsp" %>

<%
    String role = ""; 
    role = (String)session.getAttribute("Role");

    String courseID = request.getParameter("id");

    String query = String.format("SELECT * FROM MsCourse JOIN MsAdmin ON MsCourse.AdminID=MsAdmin.AdminID WHERE CourseID LIKE %s", courseID);
    ResultSet courseResult = st.executeQuery(query);
    courseResult.next();
%>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Course Detail</title>

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
            <div class="inline">
                <div>
                    <p class="course-title"><%= courseResult.getString("CourseTitle") %></p>
                    <p class="course-author">by <%= courseResult.getString("AdminName") %></p>
                </div>
                <%
                    if(session.getAttribute("Role") == "Admin"){
                %>
                        <a href="./controller/deleteCourseController.jsp?id=<%= courseID %>"><img class="btn-delete" src="./public/assets/btn-delete.png" alt=""></a>
                <%
                    }
                %>
                
            </div>
            <p class="course-description"><%= courseResult.getString("CourseDescription") %></p>
        </div>
        <div class="topic-wrapper">
            <% if(role=="Admin") { %>
                <div class="d-flex align-items-end mb-1">
                    <div class="mr-auto">
                        <p class="title2">Topics</p>    
                    </div>
                    <div class="ml-auto">
                        <a href="addTopic.jsp?course=<%= courseID %>" class="btn btn-danger btn-pill btn-add">Add Topic</a>
                    </div>
                </div>
            <% } else { %>
                <p class="title2 mb-1">Topics</p>
            <% } %>

            <%
                String selectQuery = String.format("SELECT * FROM MsTopic WHERE CourseID LIKE %s", courseID);
                ResultSet topicRes = st.executeQuery(selectQuery);
                while(topicRes.next()){
            %>
                    <a class="topic" href="topicDetail.jsp?id=<%= topicRes.getString("TopicID") %>">
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
<%
    con.close();
%>