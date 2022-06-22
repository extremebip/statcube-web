<%@page import="java.text.SimpleDateFormat" %>

<%@include file="helpers/loginGuard.jsp" %>
<%@include file="database/connect.jsp" %>

<%
    String topicIdInput = request.getParameter("topic");
    if (topicIdInput == null) {
        response.sendRedirect("./course.jsp");
        return;
    }

    int topicId = 0;
    try {
        topicId = Integer.parseInt(topicIdInput);
    } catch (NumberFormatException ex) {
        response.sendRedirect("./course.jsp");
        return;
    }

    String query = String.format(
        "SELECT td.DiscussionID, td.TopicID, DATE_FORMAT(td.DiscussionDate, \"%%e %%b %%Y\") AS DiscussionDate, td.DiscussionTitle, mu.UserName " + 
        "FROM TrDiscussion td " + 
        "JOIN MsUser mu ON td.UserID = mu.UserID " + 
        "WHERE td.TopicID = %d", 
    topicId);
    ResultSet rs = st.executeQuery(query);

    String role = ""; 
    role = (String)session.getAttribute("Role");
    
%>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">

    <title>Forum</title>

    <!-- Stylesheets -->
    <link rel="stylesheet" href="./public/css/lib/bootstrap.min.css">
    <link rel="stylesheet" href="./public/css/style.css">
    <link rel="stylesheet" href="./public/css/navbar.css">
    <link rel="stylesheet" href="./public/css/pages/discussion.css">

    <!-- Scripts -->
    <script src="./public/js/lib/jquery-3.6.0.min.js"></script>
    <script src="./public/js/lib/bootstrap.bundle.min.js"></script>

</head>
<body>
    <%@ include file="navbar.jsp" %>
    <div class="content container-md p-5">
        <div class="row">
            <div class="col-12 text-center">
                <h1>Discussion</h1>
            </div>
        </div>
        <div class="row mt-2">
            <div class="col-12">
                <a href="addDiscussion.jsp?id=<%= request.getParameter("topic") %>" class="btn btn-add-discussion btn-danger btn-pill">Add Discussion</a>
            </div>
        </div>
        <div class="row mt-3">
            <div class="col-12 discussion-wrapper">
                <% while(rs.next()) { %>
                <div class="discussion-item" 
                    data-href="<%= String.format("discussionDetail.jsp?id=%d", rs.getInt("DiscussionID")) %>">
                    <p class="discussion-title"><%= rs.getString("DiscussionTitle") %></p>
                    <p class="discussion-author"><%= rs.getString("UserName") %></p>
                    <p class="discussion-date"><%= rs.getString("DiscussionDate") %></p>
                    <% if(role=="Admin"){%>
                    <form>
                        <input type="hidden" name="topicID" value="<%= topicId %>">
                        <input type="hidden" name="discussionID" value="<%= rs.getInt("DiscussionID") %>">
                        <button type="submit" class="btn btn-primary btn-action" formaction="./controller/deleteDiscussionController.jsp">Delete</button>
                    </form>
                    <%}%>
                </div>
                <% } %>
            </div>
        </div>
    </div>
    <%@ include file="footer.jsp" %>
</body>

<script>
    $(document).ready(function () {
        $('.discussion-item').click(function (e) {
            const redirectUrl = $(this).data('href');
            window.location.href = redirectUrl;
        })
    });
</script>

</html>

<%
    con.close();
%>