<%@include file="database/connect.jsp" %>
<%
    String query = String.format("SELECT * FROM MsTopic WHERE TopicID LIKE %s", request.getParameter("id"));
    ResultSet topicDetailResult = st.executeQuery(query);
    topicDetailResult.next();
%>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Topic Detail</title>

    <!-- Stylesheets -->
    <link rel="stylesheet" href="./public/css/lib/bootstrap.min.css">
    <link rel="stylesheet" href="./public/css/style.css">
    <link rel="stylesheet" href="./public/css/navbar.css">
    <link rel="stylesheet" href="./public/css/pages/topicDetail.css">

    <!-- Scripts -->
    <script src="./public/js/lib/jquery-3.6.0.min.js"></script>
    <script src="./public/js/lib/bootstrap.bundle.min.js"></script>
</head>
<body>
    <%@ include file="navbar.jsp" %>
    <section>
        <div class="top-section">
            <img class="topic-thumbnail" src="<%= topicDetailResult.getString("TopicThumbnail") %>" alt="">
            <p class="topic-title"><%= topicDetailResult.getString("TopicTitle") %></p>
        </div>
        <div><p class="topic-content"><%= topicDetailResult.getString("TopicContent") %></p></div>
        <a class="btn-discussion" href="discussion.jsp?topic=<%= request.getParameter("id") %>">
            <p>Discussion</p>
            <img src="./public/assets/Vector.png" alt="">
        </a>
    </section>
    <%@ include file="footer.jsp" %>
</body>
</html>
<%
    con.close();
%>